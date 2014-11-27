module DABStation;

import gtk.ListStore;
import gobject.Type;
import DABStationColumn;

// Class DABStation
/**
 * TODO add class description
 */
class DABStation : ListStore
{

    public this(GType[] gtkListStore)
    {
        super(gtkListStore);
    }

    public void appendRecord(uint channel, string name)
    {
        auto it = createIter();
        setValue( it,
                  DABStationColumn.DABStationColumn.COLUMN_CHANNEL,
                  channel);
        setValue( it,
                  DABStationColumn.DABStationColumn.COLUMN_NAME,
                  name );
    }

}
