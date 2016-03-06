module DABController;

import std.stdio;
import std.string;
import std.file;
import std.conv;
import std.path;
import std.array;
import std.csv;
import core.thread;
import std.typecons;
import std.concurrency;
import std.exception;
import DABState;
import DABInfo;
import DABControl;
import RadioStation;
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

    private DABState state;

    private Tid thrId;

    private uint channel = 0;

    public bool verbose;

    private dchar[150] programName;

    private dchar[150] programText;

    private dchar[150] slideShowFileName;

    private ubyte volume;

    private RadioStation[] radioStations;

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
                readStations;
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
                           if (msg == DABControl.DABControl.MUTE) VolumeMute;
                           else if (msg == DABControl.DABControl.SCAN) scan;
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
                programText[] = 0;
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
                writefln("play program %s", programName[0 .. lastIndexOf(programName, "\0")]);
            }
        sendString(DABInfo.DABInfo.PROGRAM_NAME, programName);
        programName[] = 0;
        _GetEnsembleName(channel-1,
                        1, // long name
                        &programName[0]);
        debug
            {
                writefln("play ensemble %s", programName[0 .. lastIndexOf(programName, "\0")]);
            }
        sendString(DABInfo.DABInfo.ENSEMBLE_NAME, programName);
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

    public void readStations()
    {
        auto appRadioStation = appender!(RadioStation[]);
        try
            {
                auto lenghtOfConfiguration = getSize(expandTilde("~/.dabzilla"));
                readConfiguration;
                sendStations(radioStations);
            }
        catch(Exception e)
            {
                if (!IsSysReady) //  DAB board ready?
                    {
                        stderr.writefln("Radio not opend");
                    }
                else
                    {
                        auto numberOfChannel = GetTotalProgram;
                        dchar[150] programName;
                        RadioStation rs;
                        for (uint channelIndex = 0; channelIndex < numberOfChannel; channelIndex++)
                            {
                                _GetProgramName(to!char(DAB),
                                                channelIndex,
                                                to!char(0),
                                                &programName[0]);
                                rs.number = channelIndex;
                                rs.name = programName[0 ..
                                        indexOf(programName,"\0"d)].dup;
                                if (! _PlayStream(0, channelIndex))
                                    stderr.writefln("DAB not running");
                                // look for data rate
                                rs.dataRate = 1111;
                                int maxCount = 10; // sometimes no rate exists
                                while (rs.dataRate >1000)
                                    {
                                        if (maxCount-- == 0)
                                            {
                                                rs.dataRate = 0;
                                                break;
                                            }
                                        Thread.sleep(dur!("msecs")(200));
                                        rs.dataRate = GetDataRate;
                                    }
                                appRadioStation.put(rs);
                            }
                        debug(sendChannels) writefln("RadioStation %s", appRadioStation.data);
                        //send the list of stations
                        storeConfiguration(appRadioStation.data);
                        sendStations(appRadioStation.data);
                    }
            }
    }

    public void sendStations(RadioStation[] stations)
    {
        foreach (station; stations)
            {
                foreach (int index, c; station.name)
                    {
                        debug(sendChannels)
                            {
                                writefln("send %1$s, channelIndex %2$s, index =  %3$s, c = %4$s",
                                         DABInfo.DABInfo.CHANNELS,
                                         station.number,
                                         index,
                                         c
                                         );
                            }
                        thrId.send(DABInfo.DABInfo.CHANNELS,
                                   station.number,
                                   index,
                                   c);
                    }
                thrId.send(DABInfo.DABInfo.CHANNELS,
                           station.number,
                           to!int(station.number),
                           to!int(station.name.length),
                           to!dchar('E'), );
                debug(sendChannels)
                    {
                        writefln("send end of channel %1$s index =  %2$s, station.number = %3$s",
                                 DABInfo.DABInfo.CHANNELS,
                                 to!int(station.name.length),
                                 station.number);
                    }
            }
        sendEndOfStations;
    }

    public void storeConfiguration(RadioStation[] stations)
    {
        auto f = File(expandTilde("~/.dabzilla"), "w");
        foreach (station; stations)
            {
                f.writefln("%1$s,\"%2$s\",%3$s", station.number,
                station.name, station.dataRate);
            }
        f.close;
    }

    public void readConfiguration()
    {
        auto appRadioStation = appender!(RadioStation[]);
        RadioStation rs;
        auto s = cast(string)read(expandTilde("~/.dabzilla"));
        foreach(record; csvReader!(Tuple!(uint, string, uint))(s))
            {
                if (record[2] > 24) // dataRate greater 24 kbit/s
                    {
                        rs.number = to!uint(record[0]);
                        rs.dataRate = to!uint(record[2]);
                        rs.name = to!(dchar[])("");
                        foreach (c; record[1])
                            rs.name = rs.name ~ to!dchar(c);
                        appRadioStation.put(rs);
                    }
            }
        debug(sendChannels) writefln("%s", appRadioStation.data);
        radioStations = appRadioStation.data;
    }

    public void sendEndOfStations()
    {
        thrId.send(DABInfo.DABInfo.CHANNELS,
                   to!uint(0),
                   to!int(0),
                   to!dchar(0));
    }

}
