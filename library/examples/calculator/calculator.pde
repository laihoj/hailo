import widgets.Button;
import widgets.Label;
import widgets.NavBar;
import widgets.Navigation_Button;
import widgets.StateBox;
import hailo.*;
import commands.*;

  public void settings() {
    /*
     * set size of screen to Samsung Galaxy S7 Edge size. 
     * (Discovered by trial and error)
     * (Alternatively use fullScreen()?)
     * */
    size(1440/4,2560/4);
  }

  public void setup() {
    /*
     * Framerate is defined in setup, not settings (Try to just remember this)
     * */
    frameRate(60);
    
    /*
     * And the developer said, let there be an app!
     * (In debugging mode, that is)
     * */
    new App(this, Logging.NONE);
    
    /*
     * importing styles
     * */
    new styles.Container("View");
    
    /*
     * An app can have multiple views.
     * Here is the main menu view!
     * */
    View MAIN_MENU = new View(new Point(), "Main menu", "View");
    
    /*
     * Let's initialise a button, set some characteristics, and add it to the main menu
     * */
    //Button keyboardToggler = new Button(new Point(App.width() / 2, 200), "Keyboard toggler", "Button", new ToggleKeyboard())
    //    .setDimensions(new Dimensions(100, 100));
    
    //MAIN_MENU.add(keyboardToggler);
    
    /*
     * Let's also add a label (text box) to the main menu.
     * Notice how you can define characteristics in the initialiser, or separately afterwards
     * */
    Label title = new Label(new Point(width/2, height/2), "This is an example app", "Label");
    MAIN_MENU.add(title);
    
    /*
     * Here is a stateBox (like a checkbox, but with more modes!).
     * Make sure to set the names of the states as the same ones 
     * as the styles are referred to by.
     * Let's add it to the main menu.
     * */
//    String[] styleNames = {"Red", "Green", "Blue"};
//    StateBox stateBox = new StateBox(new Point(App.width/2, 400), "I'm a checkbox", styleNames);
////    stateBox
////    .setPoint(new Point(App.width/2, 400))
////        .setDimensions(new Dimensions(100,100));
//    MAIN_MENU.add(stateBox);
    
    Grid grid = new Grid(new Point(), "grid", "Container", 4, 4);
    MAIN_MENU.add(grid);
    //grid

    /*
     * Notice how we never define any point or dimensions for the buttons in the navigation bar.
     * That's because navbar (and containers in general) are special!
     * They automatically try to reorganise their content each time something is added to them
     * */

    
  }
  
  /*
   * This function stub must be stated, otherwise the app runs only the first frame.
   * Essentially, it makes sure the app keeps on looping (drawing?) infinitely
   * */
  public void draw() {}  
