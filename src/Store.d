// $HeadURL: svn://linux-marion/DABZilla/trunk/src/Store.d $
// $Id: Store.d 9 2014-02-14 17:40:43Z root $

module Store;

// Struct Store
/**
 * TODO add class description
 */
struct Store
{

    /**
     * @uml
     * @read
     * @write
     */
    private uint channel_;

    /**
     * @uml
     * @read
     * @write
     */
    private string stationName_;

    public final uint channel()
    {
        return this.channel_;
    }

    public final void channel(uint channel)
    {
        this.channel_ = channel;
    }

    public final string stationName()
    {
        return this.stationName_;
    }

    public final void stationName(string stationName)
    {
        this.stationName_ = stationName;
    }

}
