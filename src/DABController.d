module DABController;

import std.stdio;
import std.string;
import std.file;
import std.conv;
import core.thread;
import std.concurrency;
import std.exception;
import DABState;
import DABInfo;
import DABControl;
version (simulation)
{
    import Keystone_mock;
}
else
{
    import Keystone;
}


// Class DABController
/**
 * Glue to the Keystone HW Board
 */
class DABController
{

    /**
     * @uml
     * @read
     * @write
     */
    private DABState state_;

    private Tid thrId;

    private uint channel = 0;

    /**
     * @uml
     * @read
     * @write
     */
    private bool verbose_;

    private dchar[150] programName;

    private dchar[150] programText;

    private dchar[150] slideShowFileName;

    private ubyte volume;

    /**
     * @uml
     * Setup Radio connection
     */
    public this(Tid thrId, uint channel, uint volume)
    {
        this.thrId = thrId;
        this.channel = channel;
        uint versionCommIF = CommVersion;
        debug (versionCommIF)
            {
                writefln("CommVersion = %1$s", versionCommIF);
            }
        if (openDAB)
            {
                debug
                    {
                        writefln("Radio opened channel %s", channel);
                    }
                if (!IsSysReady) // waiting for DAB board ready
                    {
                        stderr.writefln("Radio not opend");
                    }
                //setUpRadio;
                auto totalProgram = GetTotalProgram();
                debug
                    {
                        writefln("Number of Programms %1$s", totalProgram);
                    }
                //send the list of stations
                sendStations;
                SetVolume(to!char(volume)); // default value
                SetStereoMode(1);
                if (SetBBEEQ(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) == false) {
                    stderr.writefln("Can't set BBEEQ\n");
                }
            }
        else
            {
                Thread.sleep(dur!("msecs")(4000));
                writefln("Radio not opend %s", thrId);
            }
    }

    public bool openDAB()
    {
        string dev = "/dev/ttyACM";
        /*
          Test USB DAB device name
        */
        bool success = false;
        foreach (char c; "01")
            {
                auto testDevice = dev ~ c ~ '\0';
                if (verbose)
                    writefln("testing device = %1$s", testDevice);
                if (OpenRadioPort(cast(char*)testDevice, true) != true) {
                    if (verbose)
                        stderr.writefln("Error on opening radio port %1$s", testDevice);
                }
                else {
                    success = true;
                    break;
                }
            }

        if (!success)
            {
                writefln("DAB device not accessible"); // give up
            }
        else
            {
                play;
            }
        return success;
    }

    public void runControl()
    {
        auto state = DABState.DABState.INIT;
        thrId.send(state);
        debug
            {
                writefln("sendMessage from DABController s = %s", state);
            }
        auto counter = 0;
        for (bool running = true; running; )
            {
                running = receiveUIMessages;
                counter++;
                if (counter == 4)
                    {
                        counter = 0;
                        pollDABInterface;
                    }
            }
    }

    public bool receiveUIMessages()
    {
        receiveTimeout(dur!("msecs")(50),
                       (DABState.DABState s)
                       {
                           debug
                               {
                                   writefln("reveiveMessage by DABController s = %s", s);
                               }
                       },
                       (DABControl.DABControl msg)
                       {
                           debug
                               {
                                   writefln("reveiveMessage by DABController msg = %1$s", msg);
                               }
                           scan;
                       },
                       (DABControl.DABControl msg, uint b)
                       {
                           debug
                               {
                                   writefln("reveiveMessage by DABController msg = %1$s, b = %2$s", msg, b);
                               }
                           if (channel != b)
                               {
                                   channel = b;
                                   play;
                               }
                       },
                       (DABControl.DABControl msg, double v)
                       {
                           debug
                               {
                                   writefln("reveiveMessage by DABController msg = %1$s, v = %2$s", msg, v);
                               }
                           SetVolume(to!char(v));
                       },
                       (OwnerTerminated ot)
                       {
                           return false;
                       }
                       );
        return true;
    }

    public void pollDABInterface()
    {
        if (MotQuery)
            {
                GetImage(&slideShowFileName[0]);
                string s = to!string(slideShowFileName[0 .. lastIndexOf(slideShowFileName, '\0')]);
                try
                    {
                        auto slides = DirEntry("slides");
                    }
                catch (FileException e)
                    {
                        mkdir("slides");
                    }
                try
                    {
                        rename(s, "slides/" ~ s);
                    }
                catch (FileException e)
                    {
                        debug
                            {
                                writefln("File %s exists", s);
                            }
                    }
                finally
                    {
                        sendString(DABInfo.DABInfo.IMAGE_NAME, slideShowFileName);
                    }
            }
        if (GetProgramText(&programText[0]) && indexOf(programText, '\0') > 0)
            {
                debug
                    {
                        writefln("programText = %s", programText[0 .. indexOf(programText, '\0')]);
                    }
                sendString(DABInfo.DABInfo.PROGRAM_TEXT, programText);
                for (int i = 0; i < programText.length; i++)
                    programText[i] = '\0';
            }
        DABState status = to!DABState(GetPlayStatus);
        thrId.send(status);
        auto dataRate = GetDataRate;
        if (dataRate > 0)
            {
                thrId.send(DABInfo.DABInfo.DATA_RATE, dataRate);
            }
        int bitError;
        auto signalStrength = GetSignalStrength(&bitError);
        if (signalStrength <=100)
            thrId.send(DABInfo.DABInfo.SIGNAL_STRENGTH, signalStrength);
    }

    public void scan()
    {
        auto volume = GetVolume;
        auto state = DABState.DABState.SEARCHING;
        thrId.send(state);
        auto success = DABAutoSearch(0, 40);
        if (success)
            {
                while (state == DABState.DABState.SEARCHING) {
                    Thread.sleep(dur!("msecs")(400));
                    state = to!DABState(GetPlayStatus);
                    thrId.send(state);
                }
                thrId.send(state);
                channel = 1;
                SetVolume(volume);
                SetStereoMode(1);
                MotReset(_MotMode.MOT_HEADER_MODE);
                play;
            }

    }

    public void play()
    {
        if (to!DABState(GetPlayStatus) == DABState.DABState.PLAYING)
            {
                StopStream;
            }
        _GetProgramName(cast(char)DAB,
                        channel-1,
                        1, // long name
                        &programName[0]);
        debug
            {
                writefln("play %s", programName[0 .. lastIndexOf(programName, "\0")]);
            }
        sendString(DABInfo.DABInfo.PROGRAM_NAME, programName);
        if (! _PlayStream(0, channel-1))
            stderr.writefln("DAB not running");
        // int samplingRate = GetSamplingRate;
        // thrId.send(DABInfo.DABInfo.SAMPLING_RATE, samplingRate);
        MotReset(_MotMode.MOT_HEADER_MODE);
    }

    public void sendString(DABInfo type, dchar[150] text)
    {
        for (int index = 0; index < text.length; index++)
            {
                if (text[index] == '\0')
                    {
                        thrId.send(type, to!int(text.length), to!dchar('E'), );
                        debug
                            {
                                writefln("send %1$s index =  %2$s c = %3$s", type,
                                         to!int(text.length), text[index]);
                            }
                        break;
                    }
                debug
                    {
                        writefln("send %1$s index =  %2$s c = %3$s",
                                 type, index, text[index]);
                    }
                thrId.send(type, index, text[index]);
            }
    }

    public void sendStations()
    {
        auto numberOfChannel = GetTotalProgram;
        dchar[150] programName;
        for (uint channelIndex = 0; channelIndex < numberOfChannel; channelIndex++)
            {
                foreach (ref c; programName)
                    {
                        c = '\0';
                    }
                _GetProgramName(cast(char)DAB,
                                channelIndex,
                                cast(char)0,
                                &programName[0]);
                debug(sendChannels)
                    {
                        writefln("info channelIndex = %1$s,  %2$s",
                                 channelIndex,
                                 programName[0 .. lastIndexOf(programName, '\0')]);
                    }
                for (int index = 0; index < programName.length; index++)
                    {
                        if (programName[index] == '\0')
                            {
                                thrId.send(DABInfo.DABInfo.CHANNELS,
                                           channelIndex,
                                           index,
                                           to!int(programName.length),
                                           to!dchar('E'), );
                                debug(sendChannels)
                                    {
                                        writefln("send %1$s index =  %2$s c = %3$s",
                                                 DABInfo.DABInfo.CHANNELS,
                                                 to!int(programName.length),
                                                 programName[index]);
                                    }
                                break;
                            }
                        debug(sendChannels)
                            {
                                writefln("send %1$s, channelIndex %2$s, index =  %3$s, c = %4$s",
                                         DABInfo.DABInfo.CHANNELS,
                                         channelIndex,
                                         index,
                                         programName[index]
                                         );
                            }
                        thrId.send(DABInfo.DABInfo.CHANNELS,
                                   channelIndex,
                                   index,
                                   programName[index]);
                    }
            }
        // send end of channels
        thrId.send(DABInfo.DABInfo.CHANNELS,
                   to!uint(0),
                   to!int(0),
                   to!dchar(0));
    }

    public final DABState state()
    {
        return this.state_;
    }

    public final void state(DABState state)
    {
        this.state_ = state;
    }

    public final bool verbose()
    {
        return this.verbose_;
    }

    public final void verbose(bool verbose)
    {
        this.verbose_ = verbose;
    }

}
