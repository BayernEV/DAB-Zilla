// $HeadURL: svn://127.0.0.1/DABZilla/trunk/src/DABInfo.d $
// $Id: DABInfo.d 27 2014-10-11 13:08:20Z evoigt $

module DABInfo;

// Enum DABInfo
/**
 * @uml
 * Type: ubyte
 */
enum DABInfo : ubyte
{
    PROGRAM_BUNDLE,
    SIGNAL_STRENGTH,
    PLAY_STATUS,
    IMAGE_NAME,
    VOLUME,
    PROGRAM_NAME,
    PROGRAM_TEXT,
    CHANNELS,
    DATA_RATE,
}
