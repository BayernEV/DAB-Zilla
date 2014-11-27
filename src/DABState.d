module DABState;

// Enum DABState
/**
 * TODO add enumeration class description
 * @uml
 * Type: char
 */
enum DABState : char
{
    INIT = 10,
    RECONFIGURING = 5,
    PLAYING = 0,
    SEARCHING = 1,
    SORTING = 4,
    STOP = 3,
    TUNING = 2,
    WAITING = 255,
}
