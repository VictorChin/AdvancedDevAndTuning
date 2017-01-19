/**
 * @author                        : Shrinivas Bhat
 * @Version                       : 1.0
 *
 * Development Environment        :  Oracle JDeveloper 10g
 * Name of the File               :  Registration.java
 * Creation/Modification History  :
 *
 *    Shrinivas Bhat    23-Sep-2004     Created
 *
 */
package oracle.otnsamples.plsql;

// Import Swing/AWT classes
import java.awt.Frame;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.Dimension;
import java.awt.Toolkit;
import javax.swing.UIManager;

/**
 * The main class in this application that creates the registration frame.
 */
public class Registration  {
  /**
   * Default constructor 
   */
  public Registration() {
    Frame frame = RegistrationFrame.getInstance();
    Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
    Dimension frameSize = frame.getSize();
    if (frameSize.height > screenSize.height) {
      frameSize.height = screenSize.height;
    }
    if (frameSize.width > screenSize.width) {
      frameSize.width = screenSize.width;
    }
    // Set the location for the frame
    frame.setLocation((screenSize.width - frameSize.width) / 2, 
                                 (screenSize.height - frameSize.height) / 2);
    frame.addWindowListener(new WindowAdapter() {
        public void windowClosing(WindowEvent e) {
          System.exit(0);
        }
      });
    frame.setResizable(false);
    frame.setVisible(true);
  }

  /**
   * Main method
   * @param args
   */
  public static void main(String[] args) {
    try {
      UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
    } catch(Exception e) {
      e.printStackTrace();
    }
    new Registration();
  }
}