module UI;

import std.stdio;
import std.conv;
import std.string;
import GUIBuilder;
import DABState;
import DABControl;
import DABInfo;
import DABStation;
import DABStationColumn;
import Store;
import gtk.Label;
import gtk.Range;
import gtk.Button;
import gtk.ToggleButton;
import gtk.ListStore;
import gtk.TreePath;
import gtk.TreeView;
import gtk.TreeViewColumn;
import gtk.CellRendererText;
import std.concurrency;
import core.thread;
import gtk.TextIter;
import gtk.TreeIter;
alias COLUMN_CHANNEL = DABStationColumn.DABStationColumn.COLUMN_CHANNEL;
alias COLUMN_NAME = DABStationColumn.DABStationColumn.COLUMN_NAME;

// Class UI
/**
 * @uml
 * User Interface Control
 */
class UI : GUIBuilder
{

    public Tid thrId;

    public uint channel;

    public uint channelIndex;

    private dchar[150] programName;

    private dchar[150] programText;

    private bool switchTag = true;

    private dchar[150] slideShowFileName;

    private uint currentSendChannel = 0;

    private DABStation storeDAB;

    private Store storeCollect;

    public this(string[] args)
    {
        super(args);
    }

    public void init()
    {
        scaleVolume.addOnValueChanged(delegate void(Range aux)
                                      {
                                          togglebuttonMute.setActive(false);  //unmute
                                          auto v = scaleVolume.getValue;
                                          thrId.send(DABControl.DABControl.SET_VOLUME, v);
                                          debug
                                              {
                                                  writefln("scaleVolume %s", v);
                                              }
                                      } );
        buttonVolumePlus.addOnClicked( delegate void(Button aux)
                                       {
                                           auto v = scaleVolume.getValue;
                                           scaleVolume.setValue(v+1);
                                       } );
        buttonVolumeMinus.addOnClicked( delegate void(Button aux)
                                        {
                                            auto v = scaleVolume.getValue;
                                            scaleVolume.setValue(v-1);
                                        } );
        togglebuttonMute.addOnToggled( delegate void(ToggleButton aux)
                                       {
                                           thrId.send(DABControl.DABControl.MUTE);
                                       } );
        buttonPlay.addOnClicked(delegate void(Button aux) {
                                auto it = treeviewStations.getSelectedIter;
                                if (it) {
                                   debug {
                                       writefln("SelectedIter %s",
                                                it.getValueInt(COLUMN_CHANNEL));
                                   }
                                   thrId.send(DABControl.DABControl.SWITCH,
                                              to!uint(it.getValueInt(
                                                      COLUMN_CHANNEL)));
                                }
                            } );
        buttonScan.addOnClicked( delegate void(Button aux)
                                 {
                                     thrId.send(DABControl.DABControl.SCAN);
                                 } );

        storeDAB = new DABStation([
                                   GType.INT,
                                   GType.STRING]
                                  );

        // connect signal to treeviewStations
        treeviewStations.addOnRowActivated (delegate void(TreePath tp,
                                        TreeViewColumn tc, TreeView tv)
            {
                TreeIter ti = tv.getSelectedIter();
                auto v = ti.getValueInt(COLUMN_CHANNEL);
                thrId.send(DABControl.DABControl.SWITCH, to!uint(v));
            } );
        // create first column with text renderer
        TreeViewColumn column = new TreeViewColumn();
        column.setTitle( "Channel" );
        treeviewStations.appendColumn(column);

        CellRendererText cell_text1 = new CellRendererText();
        column.packStart(cell_text1, 0);
        column.addAttribute(cell_text1, "text", COLUMN_CHANNEL);

        // create second column new renderer
        column = new TreeViewColumn();
        column.setTitle( "Name" );
        treeviewStations.appendColumn(column);

        CellRendererText cell_text2 = new CellRendererText();
        column.packStart(cell_text2, 0);
        column.addAttribute(cell_text2, "text", COLUMN_NAME);
    }

    public void runControl()
    {
        receiveTimeout(dur!("msecs")(1),
                       (DABState.DABState state)
                       {
                           debug {
                               writefln("reveiveMessage by UI state = %s", state);
                           }
                           showStatus(state);
                       },
                       (DABInfo.DABInfo info, int v)
                       {
                           debug {
                               writefln("DABInfo.DABInfo %1$s, %2$s", info, v);
                           }
                           if (info == DABInfo.DABInfo.DATA_RATE)
                               {
                                   labelDataRate.setText(format("Data Rate: %s kbps", v));
                               }
                       },
                       (DABInfo.DABInfo info, char v)
                       {
                           debug {
                               writefln("reveiveMessage by UI info = %1$s, status = %2$s",
                                        info, to!int(v));
                           }
                           switch (info) {
                           case(DABInfo.DABInfo.SIGNAL_STRENGTH) :
                               auto signalStrength = to!double(v);
                               levelbarSignalStrength.setValue(signalStrength);
                               labelSignalStrength.setText(format("%s %%", signalStrength));
                               break;
                           default :
                               debug {
                                   writefln("reveive unknown message by UI msg = %1$s, v = %2$s", info, v);
                               }
                           }
                       },
                       (DABInfo.DABInfo info, uint channelIndex, int index, dchar v)
                       {
                           debug(receive) {
                               writefln("reveiveMessage by UI info = %1$s, "~
                                        "channelIndex = %2$s, index = %3$s, v = %4$s(%4$x)",
                                        info,
                                        channelIndex,
                                        index, v);
                           }
                           fillStore(channelIndex, index, v);
                       },
                       (DABInfo.DABInfo info, int index, dchar v)
                       {
                           debug(receive) {
                               writefln("reveiveMessage by UI info = %1$s, index = %2$s, v = %3$s",
                                        info, index, v);
                           }
                           if (info == DABInfo.DABInfo.IMAGE_NAME)
                               {
                                   receiveString(slideShowFileName, index, v);
                                   if (index == slideShowFileName.length)
                                       {
                                           auto s = to!string(slideShowFileName[0 .. indexOf(slideShowFileName, '\0')]);
                                           imageSlideShow.setFromFile("slides/" ~ s);
                                       }
                               }
                           if (info == DABInfo.DABInfo.PROGRAM_NAME)
                               {
                                   receiveString(programName, index, v);
                                   if (index == programName.length)
                                       {
                                           auto name = to!string(programName[0 .. indexOf(programName, "\0")]);
                                           labelProgramName.setMarkup("<big><b>" ~ name.strip ~ "</b></big>");
                                       }
                               }
                           if (info == DABInfo.DABInfo.ENSEMBLE_NAME)
                               {
                                   receiveString(programName, index, v);
                                   if (index == programName.length)
                                       {
                                           auto name = to!string(programName[0 .. indexOf(programName, "\0")]);
                                           labelEnsemble.setMarkup("Ensemble: " ~ name.strip);
                                       }
                               }
                           if (info == DABInfo.DABInfo.PROGRAM_TEXT)
                               {
                                   receiveString(programText, index, v);
                                   if (index == programText.length)
                                       {
                                           showProgramText(programText);
                                       }
                               }
                       },
                       );
    }

    public void showStatus(DABState status)
    {
        char[20] buf;
        foreach (ref c; buf)
            {
                c = '\0';
            }
        sformat(buf, "%s", status);
        labelStatus.setText(to!string(buf).capitalize);
        debug
            {
                writefln("showStatus state = %s", buf);
            }
    }

    public void receiveString(ref dchar[150] text, int index, dchar v)
    {
        if (index == 0) // cleaning text
            {
                text[] = 0;
            }
        if (index == text.length)
            {
                return;
            }
        else
            {
                text[index] = v;
            }
    }

    public void showProgramText(dchar[] text)
    {
        auto s = to!string(text[0 .. indexOf(text, "\0")]) ~ '\n';
        TextIter iter = new TextIter();
        textbufferProgramText.getIterAtOffset(iter, 0);
        if (switchTag)
            {
                switchTag = false;
                textbufferProgramText.insertWithTagsByName(iter, s, "bold_red");
            }
        else
            {
                switchTag = true;
                textbufferProgramText.insertWithTagsByName(iter, s, "bold_blue");
            }
    }

    public void fillStore(uint channelIndex, int index, dchar c)
    {
        if (channelIndex == 0 && index == 0)  // first or last message
            {
                if (c == '\0')
                    {
                        // end of channel list
                        storeDAB.appendRecord(storeCollect.channel,
                                              storeCollect.stationName);
                        treeviewStations.setModel(storeDAB);
                        return;
                    }
                else
                    {
                        // begin of channel list
                        storeCollect.channel = channelIndex + 1;
                        storeCollect.stationName = "";
                        storeDAB.clear;
                        treeviewStations.setModel(storeDAB);
                    }
            }
        if (channelIndex + 1 != storeCollect.channel)
            {
                storeDAB.appendRecord(storeCollect.channel,
                                      storeCollect.stationName);
                storeCollect.channel = channelIndex + 1;
                storeCollect.stationName = "";
            }
        storeCollect.stationName = storeCollect.stationName ~ to!string(c);
    }

    /**
     * @uml
     * @final
     */
    public final void volume(uint volume)
    {
        scaleVolume.setValue(to!double(volume));
    }

}
