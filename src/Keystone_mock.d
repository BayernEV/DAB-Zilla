// $HeadURL: svn://127.0.0.1/DABZilla/trunk/src/Keystone_mock.d $
// $Id: Keystone_mock.d 24 2014-05-28 04:32:21Z evoigt $

module Keystone_mock;

import std.stdio;
import std.conv;

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   The version of the interface. Now = 1000000
*/
    
uint CommVersion()
{
    return 1000000;
}

int count = 0;

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Clear the DAB programs stored in the module's database.

   Return true if successful, false if failed.

   Remark

   This function is unnecessary under normal operation.
   DABAutoSearch() will execute this function internally.
*/
bool ClearDatabase()
{
    return true;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Close the COM port of the radio.

   Return true if successful, false if failed.
*/
bool CloseRadioPort()
{
    return true;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   DABAutoSearch or DABAutoSearchNoClear

   Auto search DAB channels.  Current stored DAB channels will be cleared for DABAutoSearch().

   Parameters

   startindex

   [in] Starting index to search from.  See remark below.

   endindex

   [in] Ending index to search to.  See remark below.

   Return true if successful, false if failed.

   Remark

   If module is operating outside of China Band, calling DABAutoSearch(0,40)
   will speed up the searching process.  After calling this function, the
   module will be defaulted to MONO and also the volume will be muted, calling
   SetStereoMode(1) and SetVolume(volume) are required to set the module back
   to STEREO mode and the right volume respectively.  DABAutoSearchNoClear()
   scan and add channels to the end of the list without clearing the first
   list.  Maximum channels stored is 100.
*/
bool DABAutoSearch(
                   ubyte startindex,
                   ubyte endindex
                   )
{
    return true;
}

bool DABAutoSearchNoClear(
                          ubyte startindex,
                          ubyte endindex
                          )
{
    return true;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the type of MOT application of the specified DAB channel.

   Parameters

   dabIndex

   [in] the index value of the DAB channel

   Return Values

   0 is MOT SlideShow, 1 is MOT BWS, 2 is TPEG, 3 is DGPS, 4 is TMC, 5 is EPG,
   6 is DAB Java, 7 is DMB, 8 is Push Radio.
*/
char GetApplicationType(
                        core.stdc.config.c_long dabIndex
                        )
{
    return 0;
}
/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get parameters of BBE HD Sound or Mode of EQ.

   Parameters

   BBEOn

   [out] Pointer to the value of BBE On/Off status, 0 to turn off BBE or EQ, 1 turn on BBE, 2 turn on EQ

   EQMode

   [out] Pointer to the value of EQ Mode, 0 Bass Boost, 1 Jazz, 2 Live, 3 Vocal, 4 Acoustic

   BBELo

   [out] Pointer to the value of BBE Low response, 0 - 24 represent 0-12dB

   BBEHi

   [out] Pointer to the value of BBE High response, 0 - 24 represent 0-12dB

   BBECFreq

   [out] Pointer to the value of BBE Center frequency, when 0 is 595Hz, 1 is 1KHz.
   Note: From experience, this value does not affect much.

   BBEMachFreq

   [out] Pointer to the value of BBE Mach Frequency in hertz, 60, 90, 120, 150

   BBEMachGain

   [out] Pointer to the value of BBE Mach Gain in dB, 0, 4, 8, 12

   BBEMachQ

   [out] Pointer to the value of BBE Mach Q (Bandwidth) of the Mach3Bass filter, 1 or 3

   BBESurr

   [out] Pointer to the value of BBE Surround in dB, 0 - 10

   BBEMp

   [out] Pointer to the value of Minimised Polynomial Non-Linear Saturation process in dB,
   0 -10.  Note: From experience, when set a little higher than 1, the sound output will be distorted.

   BBEHpF

   [out] Pointer to the value of High Pass Filter in Hz, 20 - 250 (in steps of 10).

   BBEHiMode

   [out] Pointer to a value for larger phase shift to the higher frequencies in dB, 0 - 12.

   Return Values

   Return true if successful, false if failed.
*/
bool GetBBEEQ(
              char *BBEOn,
              char *EQMode,
              char *BBELo,
              char *BBEHi,
              char *BBECFreq,
              char *BBEMachFreq,
              char *BBEMachGain,
              char *BBEMachQ,
              char *BBESurr,
              char *BBEMp,
              char *BBEHpF,
              char *BBEHiMode
              )
{
    return true;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the signal quality of the current DAB channel.
   Return the signal quality in 0 - 100, -1 when failed.

   Remark

   This function is deprecated, is it created for developer to get a faster signal
   information compare to GetSignalStrength(). There is no guarantee that this function
   will work for future modules.
*/
char GetDABSignalQuality()
{return 100;}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the current DAB data rate.

   Parameters

   none

   Return Values

   Return the current DAB data rate in kbps.
*/
int GetDataRate()
{
    return 48;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the ensemble name of the current program.

   Parameters

   dabIndex

   [in] The DAB program index of 0 to GetTotalProgram()-1 to get the ensemble from.

   namemode

   [in] Setting this parameter to 0 for abbreviated name or 1 for long name.
   Only valid when mode is DAB

   programName

   [out] pointer to the buffer of the returned text.  This pointer will need to have at
   least 150 wchar_t characters allocated.  In Windows wchar_t size is 2 bytes and
   in Linux wchar_t is 4 bytes.

   Return Values

   Return true if successful, false if failed.

   Remark

   Please read remark for function GetProgramText().
*/
bool _GetEnsembleName(
                      uint dabIndex,
                      char namemode,
                      dchar * programName
                      )
{return true;}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the currenct DAB frequency index in while DAB is auto searching.

   Return the DAB frequency index of the current auto search.
*/
char GetFrequency()
{return 140;}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the headroom volume.

   Return Values

   Return 12 - 0 , represents -12dB to 0dB

   Remark

   Please read the definition of headroom on Wikipedia.
*/
char GetHeadroom()
{
    return 10;
}
/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the filename of the SlideShow image.

   Parameters

   ImageFileName

   [out] pointer to the buffer of the returned ImageFileName.  This pointer will need to have
   at least 150 wchar characters allocated.  In Linux wchar is 2 or 4 bytes.

   Remark

   When MotQuery() returns true and GetApplicationType() returns SlideShow, the function will
   return the filename of the image generated in the program folder.  Depending on the usage
   of the images collected, for example browsing old SlideShow or just to view current one,
   developer could decide to keep or delete the images after showing on screen.
*/
dchar[150] fn = cast(dchar[])"1000.jpg";
void GetImage(
              dchar * ImageFileName
              )
{
    foreach (int i, dchar fc; fn)
        ImageFileName[i] = fc;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the index of current playing DAB stream or the current playing frequency.

   Return Values

   If the radio is in DAB mode, return the current playing DAB index within 0 to
   GetTotalProgram()-1.  If the radio is in FM mode, the current playing FM frequency in kHz is
   returned, eg 94500 is 94.5Mhz.

   Remark

   GetPlayMode() is required to be called before or after this function to determine the
   radio mode in order to differentiate the returned value.
*/
uint _GetPlayIndex()
{
    return 28;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Determine if the current mode is DAB or FM.

   Return 0 when current mode is DAB or 1 when current mode is FM.
   Any other value is invalid and -1 when function failed.
*/
const char DAB = cast(char)0;
const char FM  = cast(char)1;
char GetPlayMode()
{
    return DAB;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Determine if the current radio status is playing, searching, tuning, stop sorting or reconfiguring.

   Return Values

   Return the "PlayStatus" values

   Other value invalid and -1 if function failed.

   Remark

   Take note that when OpenRadioPort() is setup with a true value passed in to use hardware mute,
   this function need to be repeatedly called in a loop as the API will only release the hardware mute
   when the play status is 0 - playing. If the play status is other than 0 - playing, the volume will
   be muted and even when SetVolume() is called to the max volume, the sound will be very soft.
*/
enum PlayStatus : byte
    {
        Playing = 0,
        Searching = 1,
        Tuning = 2,
        Stop = 3,
        Sorting = 4,
        Reconfiguring = 5,
    }

char GetPlayStatus()

{
    return 1;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the preset DAB index or preset FM frequency.  The module is able to store 10 DAB and 10 FM preset.

   Parameters

   mode

   [in] 0 to get DAB preset or 1 to get FM preset

   presetindex

   [in] Preset location from 0 to 9

   Return Values

   If mode is DAB (mode 0), this value contains the DAB program index.  If mode is FM (mode 1),
   this value contains the FM frequency in kHz , eg 94500 for 94.5Mhz.
*/
core.stdc.config.c_long GetPreset(
                                  char mode,
                                  char presetindex
                                  )
{return 2;}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the Service Component ID, Service ID and Ensemble ID for particular DAB station.

   Parameters
   dabIndex

   [in] Index of the DAB channel from 0 to GetTotalProgram()-1 .

   ServiceComponentID

   [out] pointer to the variable for the returned service component id.

   ServiceID

   [out] pointer to the variable for the returned service id.

   EnsembleID

   [out] pointer to the variable for the returned ensemble id.

   Return Values

   Return true if successful, false if failed.

   Remark

   This function allows developers to create a RadioDNS compatible hostname for example:

   0.c3a6.c186.ce1.dab    IN    CNAME    thisisglobal.com.

   In RadioDNS's hostname example, developer will need to supply ECC to form the hostname.  Our board
   does not send out ECC, developers need to hardcode ECC based on their country of origin.  John Jore
   from Australia shared this link http://web.itu.edu.tr/~pazarci/rtv/rbds1998.pdf, Annex D and N, while
   coding his Centrafuse plugin to support the ECC.
*/
bool GetProgramInfo(
                    core.stdc.config.c_long dabIndex,
                    ubyte * ServiceComponentID,
                    uint * ServiceID,
                    ushort * EnsembleID
                    )
{
    return true;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the name of the current program.

   Parameters

   mode

   [in] 0 if mode is DAB or 1 if mode is FM.

   dabIndex

   [in] Index of the DAB channel from 0 to GetTotalProgram()-1 if mode is DAB or this parameter
   is ignored when mode is FM.

   namemode

   [in] Setting this parameter to 0 for abbreviated name or 1 for long name.  Only valid when mode is DAB.

   programName

   [out] pointer to the buffer of the returned text.  This pointer will need to have at
   least 150 wchar_t characters allocated.  In Windows wchar_t size is 2 bytes and
   in Linux wchar_t is 4 bytes.

   Return Values

   Return true if successful, false if failed.

   Remark

   Please read remark for function GetProgramText().
*/

dchar[150] np = cast(dchar[])"BR3";
bool _GetProgramName(
                     char mode,
                     uint dabIndex,
                     char namemode,
                     dchar * programName
                     )
{
    foreach (int i, dchar dc; np)
        {
            programName[i] = np[i];
        }
    return true;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the RDS text of the current stream.

   Parameters

   programText

   [out] pointer to the buffer of the returned text.  This pointer will need to have at
   least 150 wchar_t characters allocated.  In Windows wchar_t size is 2 bytes and in Linux wchar_t is 4 bytes.

   Return Values

   Return 0 if successful with text, -1 if failed.  If the same text has been retrieved previously,
   1 will be returned.

   Remark

   Linux programmer porting this function need to be aware of the different sizes of wchar_t when
   porting this function, proper routines are required to convert the text into a printable string.
   For example, capital "Z"

   Windows wchar_t is 0x5A, 0x00
   Linux wchar_t is 0x5A, 0x00, 0x00, 0x00

   Printing strings of wchar_t in Linux requires wprintf(L"%ls", buffer);
*/
dchar[150] nt1 = cast(dchar[])"Morgen Crew";
dchar[150] nt2 = cast(dchar[])"Rufen Sie auf der MM an";
char GetProgramText(
                    dchar * programText
                    )
{
    if (count == 1)
        {
            foreach (int i, dchar dc; nt1)
                programText[i] = nt1[i];
            count = 0;
        }
    else
        {
            foreach (int i, dchar dc; nt2)
                programText[i] = nt2[i];
            count++;
        }
    return true;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   GetProgramType

   Get the current playing program type to be used to identify the genre.

   Parameters

   mode

   [in] 0 if current mode is DAB or 1 if current mode is FM.

   dabindex

   [in] the index of the DAB channel required to get the program type.  Function will ignore
   this value in if mode is 1 (FM).

   Return Values

   Return the following values:

   0 = <Prg Type N/A  >
   1 = News
   2 = Current Affairs
   3 = Information
   4 = Sport
   5 = Education
   6 = Drama
   7 = Arts
   8 = Science
   9 = Talk
   10 = Pop Music
   11 = Rock Music
   12 = Easy Listening
   13 = Light Classical
   14 = Classical Music
   15 = Other Music
   16 = Weather
   17 = Finance
   18 = Children's
   19 = Factual
   20 = Religion
   21 = Phone In
   22 = Travel
   23 = Leisure
   24 = Jazz and Blues
   25 = Country Music
   26 = National Music
   27 = Oldies Music
   28 = Folk Music
   29 = Documentary
   30 = <Undefined>
   31 = <Undefined>
*/

char GetProgramType(
                    char mode,
                    core.stdc.config.c_long dabIndex
                    )
{
    return 23;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get realtime clock from the module.

   Parameters
   sec

   [out] pointer to the variable for the returned clock second.

   min

   [out] pointer to the variable for the returned clock minute.

   hour

   [out] pointer to the variable for the returned clock hour.

   day

   [out] pointer to the variable for the returned clock day.

   month

   [out] pointer to the variable for the returned clock month.

   year

   [out] pointer to the variable for the returned clock year.  Need to add 2000 to this value
   to get year in YYYY format.

   Return Values

   Return true if successful, false if failed.

   Remark
   Before calling GetRTC(), call SyncRTC(true) first, then call GetRTC() in a loop
   to wait for it to return a true.  The parameters returned are valid date and time
   once it returns true.
*/
bool GetRTC(
            ubyte *sec,
            ubyte *min,
            ubyte *hour,
            ubyte *day,
            ubyte *month,
            ubyte *year,
            )
{
    return true;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the current audio sampling rate.

   Return Values

   Return the current audio sampling rate in kHz. 24, 32 or 48.  Return -1 when failed or 0 when unknown.
*/
int GetSamplingRate()
{
    return 48;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the type of MOT application of the specified DAB channel.

   Parameters

   dabIndex

   [in] the index value of the DAB channel

   Return Values

   0 is DAB, 1 is DAB+, 2 is Packet Data, 3 is DMB (Stream Data)
*/
char _GetServCompType(
                      uint dabIndex
                      );

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the signal strengh of the current playing stream.

   Parameters

   biterror

   [out] 0 if FM mode and bit error rate if DAB mode. ** ignore this out value until further notice.

   Return Values

   Signal strength in 0 to 100 percent.
*/
char GetSignalStrength(
                       int *biterror
                       )
{
    return 22;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the stereo reception status of the current playing stream.

   Return Values

   Return the following values or -1 if function failed.

   0: Stereo
   1: Joint stereo
   2: Dual channel
   3: Single channel (mono)
*/
char GetStereo()
{
    return 1;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the current stereo mode in the radio configuration.
   ;

   Return Values

   Return 0 if current mode is forced mono, 1 if auto strereo or -1 if function failed.
*/
char GetStereoMode()
{
    return 1;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the total number of DAB programs stored in the module.

   Return Values

   Total DAB programs stored in the module.
*/
core.stdc.config.c_long GetTotalProgram()
{
    return 17;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Get the current volume.

   Return Values

   Current volume in 0 to 16 or -1 if failed.
*/
char GetVolume()
{
    return 9;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Hard reset the radio module by pulling the RESET pin LOW.

   Return Values

   Return true if successful, false if failed.
*/
bool HardResetRadio()
{
    return true;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Check if the module is ready to receive command.

   Return true if successful, false if failed.
*/
bool IsSysReady()
{
    return true;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Query radio module for MOT data.

   Return Values

   Return true if successful built complete data from segments.

   Remark

   In order to get the DLL to collect the MOT segments, this function needs to be called every 40-50ms,
   calling this function longer that 40-50ms will caused segment lost and failure in building MOT data.
   For example SlideShow images might be lost or never displayed.  This function only applicable to
   KeyStone module with SlideShow.
*/
bool MotQuery()
{return true;}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Reset the MOT segment buffer.

   Parameters

   enMode

   [in] 0 to reset SlideShow segments, 1 to reset EPG segments.

   Remark

   After each changing of DAB channel, this function needs to be called in order to reset the MOT segment
   buffer. Failure to call this function after channel changes will caused MOT segment data corrupted and
   SlideShow or EPG data will not be properly built.  This function only applicable to KeyStone module with
   SlideShow.
*/
enum _MotMode{
    MOT_HEADER_MODE = 0,
    MOT_DIRECTORY_MODE
};

void MotReset(
              _MotMode enMode
              )
{}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Forward to the next available stream in the current mode.  When radio is in DAB mode, the dabindex will
   be incremented and then played.  When the radio is in FM mode, search by increasing the FM frequency
   until a channel is found.

   Return Values

   Return true if successful, false if failed.
*/
bool NextStream()
{
    return true;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Open the COM port of the radio and set mute behavior.

   Parameters

   port

   [in] COM port of the radio. Example "\\.\COM1", refer to http://support.microsoft.com/kb/115831
   for details.

   usehardmute

   [in] true to enable or false disable hard mute.  Hard mute will turn on the MOSFET on the board
   to shunt transitional noise like psss or pop sound.

   Return Values

   Return true if successful, false if failed.
*/
alias char * LPCSTR;
bool OpenRadioPort(
                   LPCSTR port,
                   bool usehardmute
                   )
{return true;}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Play radio stream in FM or DAB.

   Parameters

   mode

   [in] The mode of the radio, 0 is DAB and 1 is FM.

   channel

   [in] When mode is DAB (mode 0), this value is the index of the DAB channels from 0 to
   GetTotalProgram()-1.  When mode is FM (mode 1), this value is the FM frequency in kHz,
   eg 105000 is 105Mhz, eg 94500 is 94.5Mhz.

   Return Values

   Return true if successful, false if failed.
*/
bool _PlayStream(
                 char mode,
                 uint channel
                 )

{
    return true;
}
/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Backward to the previous available stream in the current mode.  When radio is in DAB mode,
   the dabindex will be decremented and then played.  When the radio is in FM mode, search
   by decresing the FM frequency until a channel is found.

   Return Values

   Return true if successful, false if failed.
*/
bool PrevStream()
{
    return true;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Set BBE HD Sound or Preset EQ.

   Parameters

   BBEOn

   [in] 0 to turn off BBE or EQ, 1 turn on BBE, 2 turn on EQ

   EQMode

   [in] 0 Bass Boost, 1 Jazz, 2 Live, 3 Vocal, 4 Acoustic

   BBELo

   [in] 0-24 BBE Low response represent 0-12dB

   BBEHi

   [in] 0-24 BBE High response represent 0-12dB

   BBECFreq

   [in] BBE Center frequency, when 0 is 595Hz, 1 is 1KHz.  Note: From experience, this value
   does not affect much.

   BBEMachFreq

   [in] BBE Mach Frequency in hertz, 60, 90, 120, 150

   BBEMachGain

   [in] BBE Mach Gain in dB, 0, 4, 8, 12

   BBEMachQ

   [in] BBE Mach Q (Bandwidth) of the Mach3Bass filter, 1 or 3

   BBESurr

   [in] BBE Surround in dB, 0 - 10

   BBEMp

   [in] Minimised Polynomial Non-Linear Saturation process in dB, 0 -10.  Note: From experience,
   when set a little higher than 1, the sound output will be distorted.

   BBEHpF

   [in] Activates a High Pass Filter in Hz, 20 - 250 (in steps of 10).

   BBEHiMode

   [in] Generates a larger phase shift to the higher frequencies in dB, 0 - 12.

   Return Values

   Return true if successful, false if failed.

   Remark
   BBE HD Sound is a software based EQ and for this module, when the values are over a certain value,
   the sound will be distorted and sometimes will not produce any music at all.  Please refer to the
   board's user manual on how to tune these parameters.
*/
bool SetBBEEQ(
              char BBEOn,
              char EQMode,
              char BBELo,
              char BBEHi,
              char BBECFreq,
              char BBEMachFreq,
              char BBEMachGain,
              char BBEMachQ,
              char BBESurr,
              char BBEMp,
              char BBEHpF,
              char BBEHiMode
              )
{return true;}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++Set audio headroom.

   Parameters

   headroom

   [in] Headroom volume curve, 12 - 0 represents -12dB to 0dB

   Return Values

   Return true if successful, false if failed.

   Remark
   Please read the definition of headroom on Wikipedia.
*/
bool SetHeadroom(
                 char headroom
                 )
{return true;}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Store program into preset location.

   Parameters

   mode

   [in] 0 to store DAB program, 1 to store FM program.

   presetindex

   [in] Preset location to be stored from 0 to 9.

   channel

   [in] If mode is DAB (mode 0), this parameter is the DAB program index. If mode is FM (mode 1),
   this parameter is the FM frequency to be stored in kHz, eg 94500 for 94.5Mhz.

   Return Values

   Return true if successful, false if failed.
*/
bool SetPreset(
               char mode,
               char presetindex,
               core.stdc.config.c_ulong channel
               )
{return true;}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

   Set radio to forced mono or auto detect stereo mode.

   Parameters

   mode

   [in] If mode is 0, the radio will be forced into mono mode.  If mode is 1, the radio
   will auto detect stereo mode, switching to mono when reception is poor.

   Return Values

   Return true if successful, false if failed.
*/
bool SetStereoMode(
                   char mode
                   )
{return true;}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Set the volume of the radio.

   Parameters

   volume

   [in] A char value of the volume from 0 to 16

   Return Values

   Return true if successful, false if failed.
*/
bool SetVolume(
               char volume
               )
{
    return true;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Stop currently played FM or DAB stream.

   Return Values

   Return true if successful, false if failed.
*/
bool StopStream()
{
    return true;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Enable clock sync from the broadcast.

   Parameters

   sync

   [in] true to enable sync of clock, false to disable sync of clock

   Return Values

   Return true if successful, false if failed.

   Remark
   This function should one be called once as it will reset SECOND to 0 in every
   5 seconds causing inaccuracy of SECOND in the clock.  After calling this function
   with true parameter, call GetRTC() in a loop and once GetRTC() returns a true,
   call SyncRC(false) to disable the sync.  This behaviour is caused by the firmware.
*/
bool SyncRTC(
             bool sync
             )
{
    return true;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Minus one volume step from the current volume.

   Return Values

   Volume value of 0 to 15 after executing successfully or -1 if failed.
*/
char VolumeMinus()
{
    return 11;
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Mute or Un-mute the volume.
*/
void VolumeMute()
{}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Add one volume step to the current volume.

   Parameters

   none

   Return Values

   Volume value of 0 to 16 after executing successfully or -1 if failed.
*/
char VolumePlus()
{
    return 12;
}
