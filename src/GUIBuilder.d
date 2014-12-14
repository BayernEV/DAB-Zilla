module GUIBuilder;

import gtk.Builder;
import gtk.Button;
import gtk.ToggleButton;
import gtk.Label;
import gtk.Entry;
import gtk.ProgressBar;
import gtk.TextView;
import gtk.Image;
import gtk.TextBuffer;
import gtk.Scale;
import gtk.TreeView;
import gtk.Main;
import gtk.Widget;
import gtk.Window;
import std.stdio;
import std.c.process;

// Class GUIBuilder
/**
 * Linking of Glade GUI elements to D objects
 */
class GUIBuilder
{

    /**
     * @uml
     * @read
     */
    private Button buttonVolumePlus_;

    /**
     * @uml
     * @read
     */
    private Button buttonVolumeMinus_;

    /**
     * @uml
     * @read
     */
    private Button buttonProgramPlus_;

    /**
     * @uml
     * @read
     */
    private Button buttonProgramMinus_;

    /**
     * @uml
     * @read
     */
    private Button buttonPlay_;

    /**
     * @uml
     * @read
     */
    private Label labelProgramName_;

    /**
     * @uml
     * @read
     */
    private Label labelStatus_;

    /**
     * @uml
     * @read
     */
    private TreeView treeviewStations_;

    /**
     * @uml
     * @read
     */
    private Image imageSlideShow_;

    /**
     * @uml
     * @read
     */
    private Scale scaleVolume_;

    /**
     * @uml
     * @read
     */
    private TextView textviewProgramText_;

    /**
     * @uml
     * @read
     */
    private TextBuffer textbufferProgramText_;

    /**
     * @uml
     * @read
     */
    private Label labelSignalStrength_;

    /**
     * @uml
     * @read
     */
    private ProgressBar progressbarSignalStrength_;

    private uint currentStoreIndex = 0;

    /**
     * @uml
     * @read
     */
    private Button buttonScan_;

    /**
     * @uml
     * @read
     */
    private Label labelDataRate_;

    /**
     * @uml
     * @read
     */
    private Label labelEnsemble_;

    /**
     * @uml
     * @read
     */
    private ToggleButton togglebuttonMute_;

    public this(string[] args)
    {
        auto gladefile = "glade/DAB.glade";
        Builder g = new Builder();

        if (! g.addFromFile(gladefile) )
            {
                stderr.writefln("Oops, could not create Glade object, check your glade file;)");
                exit(1);
            }

        Window w = cast(Window)g.getObject("window1");

        if (w !is null)
            {
                w.setTitle("DABZilla Version 0.4.5");
                w.addOnHide( delegate void(Widget aux){ exit(0); } );

                scaleVolume_ = cast(Scale)g.getObject("scaleVolume");
                assert(scaleVolume_ !is null);
                Button buttonQuit = cast(Button)g.getObject("buttonQuit");
                if (buttonQuit !is null)
                    {
                        buttonQuit.addOnClicked( delegate void(Button aux){ exit(0); } );
                    }
                buttonVolumePlus_ = cast(Button)g.getObject("buttonVolumePlus");
                assert(buttonVolumePlus_ !is null);
                buttonVolumeMinus_ = cast(Button)g.getObject("buttonVolumeMinus");
                assert(buttonVolumeMinus_ !is null);
                buttonProgramPlus_ = cast(Button)g.getObject("buttonProgramPlus");
                assert(buttonProgramPlus_ !is null);
                buttonProgramMinus_ = cast(Button)g.getObject("buttonProgramMinus");
			    assert(buttonProgramMinus_ !is null);
			    togglebuttonMute_ = cast(ToggleButton)g.getObject("togglebuttonMute");
			    assert(togglebuttonMute_ !is null);
                buttonPlay_ = cast(Button)g.getObject("buttonPlay");
                assert(buttonPlay_ !is null);
                buttonScan_ = cast(Button)g.getObject("buttonScan");
                assert(buttonScan_ !is null);

                labelProgramName_ = cast(Label)g.getObject("labelProgramName");
                assert(labelProgramName_ !is null);
                labelDataRate_ = cast(Label)g.getObject("labelDataRate");
                assert(labelDataRate_ !is null);
                labelStatus_ = cast(Label)g.getObject("labelStatus");
                assert(labelStatus_ !is null);
                labelEnsemble_ = cast(Label)g.getObject("labelEnsemble");
                assert(labelEnsemble_ !is null);

                labelEnsemble_.setMarkup("Ensemble:");

                progressbarSignalStrength_ = cast(ProgressBar)g.getObject("progressbarSignalStrength");
                assert(progressbarSignalStrength_ !is null);
                labelSignalStrength_ = cast(Label)g.getObject("labelSignalStrength");
                assert(labelSignalStrength_ !is null);
                imageSlideShow_ = cast(Image)g.getObject("imageSlideShow");
                assert(imageSlideShow_ !is null);
                textviewProgramText_ = cast(TextView)g.getObject("textviewProgramText");
                assert(textviewProgramText_ !is null);
                textbufferProgramText_ = textviewProgramText.getBuffer;
                textbufferProgramText_.createTag("bold_red",
                                                 "weight", cast(int)PangoWeight.BOLD,
                                                 "foreground", "red");
                textbufferProgramText.createTag("bold_blue",
                                                "weight", cast(int)PangoWeight.BOLD,
                                                "foreground", "blue");
                treeviewStations_ = cast(TreeView)g.getObject("treeviewStations");
                assert(treeviewStations_ !is null);

            }
        else
            {
                stderr.writefln("No window?");
                exit(1);
            }

        w.showAll;
    }

    public final Button buttonVolumePlus()
    {
        return this.buttonVolumePlus_;
    }

    public final Button buttonVolumeMinus()
    {
        return this.buttonVolumeMinus_;
    }

    public final Button buttonProgramPlus()
    {
        return this.buttonProgramPlus_;
    }

    public final Button buttonProgramMinus()
    {
        return this.buttonProgramMinus_;
    }

    public final Button buttonPlay()
    {
        return this.buttonPlay_;
    }

    public final Label labelProgramName()
    {
        return this.labelProgramName_;
    }

    public final Label labelStatus()
    {
        return this.labelStatus_;
    }

    public final TreeView treeviewStations()
    {
        return this.treeviewStations_;
    }

    public final Image imageSlideShow()
    {
        return this.imageSlideShow_;
    }

    public final Scale scaleVolume()
    {
        return this.scaleVolume_;
    }

    public final TextView textviewProgramText()
    {
        return this.textviewProgramText_;
    }

    public final TextBuffer textbufferProgramText()
    {
        return this.textbufferProgramText_;
    }

    public final Label labelSignalStrength()
    {
        return this.labelSignalStrength_;
    }

    public final ProgressBar progressbarSignalStrength()
    {
        return this.progressbarSignalStrength_;
    }

    public final Button buttonScan()
    {
        return this.buttonScan_;
    }

    public final Label labelDataRate()
    {
        return this.labelDataRate_;
    }

    public final Label labelEnsemble()
    {
        return this.labelEnsemble_;
    }

    public final ToggleButton togglebuttonMute()
    {
        return this.togglebuttonMute_;
    }

}
