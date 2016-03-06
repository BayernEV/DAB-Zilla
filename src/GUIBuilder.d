module GUIBuilder;

import gtk.Builder;
import gtk.Button;
import gtk.ToggleButton;
import gtk.Label;
import gtk.Entry;
import gtk.LevelBar;
import gtk.TextView;
import gtk.Image;
import gtk.TextBuffer;
import gtk.Scale;
import gtk.TreeView;
import gtk.Main;
import gtk.Widget;
import gtk.Window;
import std.stdio;
import std.c.process;

// Class GUIBuilder
/**
 * Linking of Glade GUI elements to D objects
 */
class GUIBuilder
{

    public Button buttonVolumePlus;

    public Button buttonVolumeMinus;

    public Button buttonProgramPlus;

    public Button buttonProgramMinus;

    public Button buttonPlay;

    public Label labelProgramName;

    public Label labelStatus;

    public TreeView treeviewStations;

    public Image imageSlideShow;

    public Scale scaleVolume;

    public TextView textviewProgramText;

    public TextBuffer textbufferProgramText;

    public Label labelSignalStrength;

    public LevelBar levelbarSignalStrength;

    private uint currentStoreIndex = 0;

    public Button buttonScan;

    public Label labelDataRate;

    public Label labelEnsemble;

    public ToggleButton togglebuttonMute;

    public this(string[] args)
    {
        auto gladefile = "glade/DAB.glade";
        Builder g = new Builder();

        if (! g.addFromFile(gladefile) )
            {
                stderr.writefln("Oops, could not create Glade object, check your glade file;)");
                exit(1);
            }

        Window w = cast(Window)g.getObject("window1");

        if (w !is null)
            {
                w.setTitle("DABZilla Version 0.5.1");
                w.addOnHide( delegate void(Widget aux){ exit(0); } );

                scaleVolume = cast(Scale)g.getObject("scaleVolume");
                assert(scaleVolume !is null);
                Button buttonQuit = cast(Button)g.getObject("buttonQuit");
                if (buttonQuit !is null)
                    {
                        buttonQuit.addOnClicked( delegate void(Button aux){ exit(0); } );
                    }
                buttonVolumePlus = cast(Button)g.getObject("buttonVolumePlus");
                assert(buttonVolumePlus !is null);
                buttonVolumeMinus = cast(Button)g.getObject("buttonVolumeMinus");
                assert(buttonVolumeMinus !is null);
                buttonProgramPlus = cast(Button)g.getObject("buttonProgramPlus");
                assert(buttonProgramPlus !is null);
                buttonProgramMinus = cast(Button)g.getObject("buttonProgramMinus");
                assert(buttonProgramMinus !is null);
                togglebuttonMute = cast(ToggleButton)g.getObject("togglebuttonMute");
                assert(togglebuttonMute !is null);
                buttonPlay = cast(Button)g.getObject("buttonPlay");
                assert(buttonPlay !is null);
                buttonScan = cast(Button)g.getObject("buttonScan");
                assert(buttonScan !is null);

                labelProgramName = cast(Label)g.getObject("labelProgramName");
                assert(labelProgramName !is null);
                labelDataRate = cast(Label)g.getObject("labelDataRate");
                assert(labelDataRate !is null);
                labelStatus = cast(Label)g.getObject("labelStatus");
                assert(labelStatus !is null);
                labelEnsemble = cast(Label)g.getObject("labelEnsemble");
                assert(labelEnsemble !is null);

                labelEnsemble.setMarkup("Ensemble:");

                levelbarSignalStrength = cast(LevelBar)g.getObject("levelbarSignalStrength");
                assert(levelbarSignalStrength !is null);
                labelSignalStrength = cast(Label)g.getObject("labelSignalStrength");
                assert(labelSignalStrength !is null);
                imageSlideShow = cast(Image)g.getObject("imageSlideShow");
                assert(imageSlideShow !is null);
                textviewProgramText = cast(TextView)g.getObject("textviewProgramText");
                assert(textviewProgramText !is null);
                textbufferProgramText = textviewProgramText.getBuffer;
                textbufferProgramText.createTag("bold_red",
                                                 "weight", cast(int)PangoWeight.BOLD,
                                                 "foreground", "red");
                textbufferProgramText.createTag("bold_blue",
                                                "weight", cast(int)PangoWeight.BOLD,
                                                "foreground", "blue");
                treeviewStations = cast(TreeView)g.getObject("treeviewStations");
                assert(treeviewStations !is null);

            }
        else
            {
                stderr.writefln("No window?");
                exit(1);
            }

        w.showAll;
    }

}
