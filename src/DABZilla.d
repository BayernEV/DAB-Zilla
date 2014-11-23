// $HeadURL: svn://127.0.0.1/DABZilla/trunk/src/DABZilla.d $
// $Id: DABZilla.d 30 2014-10-12 04:36:03Z evoigt $

module DABZilla;

/*
  Controlling the Keystone DAB/DAB+ Receiver
*/

import std.getopt;
import std.stdio;
import std.conv;
import gtk.Main;
import gdk.Threads;
import DABController;
import UI;
import DABState;
import std.concurrency;

/*
  DAB option handling and preparing GUI and Controller
*/

UI gui;
DABController dABController;
Tid thrId;
bool thrIdExists = false;

void operate(Tid tid, uint channel, uint volume)
{
    dABController = new DABController(tid, channel, volume);
    assert(dABController !is null);
    dABController.runControl;
}

int receiveMessages (void* data)
{
    gui.runControl;
    return 1;
}

int main(string[] args)
{
    uint channel = 1; // default channel
    uint volume  = 8; // default volume
    try
        {
            getopt(
                   args,
                   std.getopt.config.caseSensitive,
                   "channel|c", &channel,
                   "volume|v", &volume);
            if (args.length > 1) {
                stderr.writefln("%1$s: invalid option(s) %2$s", args[0], args[1 .. $]);
            }
        }
    catch (Exception e)
        {
            stderr.writefln("%1$s: %2$s", args[0], e.msg);
            return 1;
        }

    Main.init(args);
    gui = new UI(args);
    assert(gui !is null);
    gui.volume = volume; // this setting must be before init
    gui.init;
    // create thread for DAB
    thrId = spawn(&operate, thisTid, channel, volume);
    gui.thrId = thrId;
    // updating the DAB Keystone state
    threadsAddTimeout(10, cast(GSourceFunc)&receiveMessages, cast(void*)channel);
    Main.run; // run GUI loop
    return 0;
}
