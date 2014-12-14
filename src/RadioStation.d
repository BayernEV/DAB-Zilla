module RadioStation;

// Struct RadioStation
/**
 * TODO add class description
 */
struct RadioStation
{

    /**
     * @uml
     * @read
     * @write
     */
    private uint number_;

    /**
     * @uml
     * @read
     * @write
     */
    private dchar[] name_;

    public final uint number()
    {
        return this.number_;
    }

    public final void number(uint number)
    {
        this.number_ = number;
    }

    public final dchar[] name()
    {
        return this.name_.dup;
    }

    public final void name(dchar[] name)
    {
        this.name_ = name.dup;
    }

}
