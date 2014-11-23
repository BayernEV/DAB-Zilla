// $HeadURL: svn://linux-marion/DABZilla/trunk/src/DABControl.d $
// $Id: DABControl.d 9 2014-02-14 17:40:43Z root $

module DABControl;

// Enum DABControl
/**
 * @uml
 * Type: ubyte
 */
enum DABControl : ubyte
{
    SWITCH,
    NEXT,
    PREVIOUS,
    SET_VOLUME,
    SET_CHANNEL,
    SCAN,
}
