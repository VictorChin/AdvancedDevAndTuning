/**
 * @author                        : Shrinivas Bhat
 * @Version                       : 1.0
 *
 * Development Environment        :  Oracle JDeveloper 10g
 * Name of the File               :  UsernameSuggestions.java
 * Creation/Modification History  :
 *
 *    Shrinivas Bhat    23-Sep-2004     Created
 *
 */
package oracle.otnsamples.plsql;

// Import AWT/Swing classes 
import java.awt.Frame;
import java.awt.Dimension;
import java.awt.Toolkit;
import java.sql.SQLException;
import javax.swing.ButtonGroup;
import javax.swing.JDialog;
import javax.swing.JRadioButton;
import java.awt.Rectangle;
import javax.swing.JLabel;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JButton;

public class UsernameSuggestions extends JDialog  {
  
  private JRadioButton jRadioButton1 = new JRadioButton();
  private JRadioButton jRadioButton2 = new JRadioButton();
  private JLabel jLabel1 = new JLabel();
  private JButton btnClose = new JButton();
  RegistrationFrame regFrame =  null;  
  
  /**
   * Default constructor
   */
  public UsernameSuggestions() {
    this(null, "", false);
  }

  /**
   * 
   * @param parent - Parent window 
   * @param title - Title for the window 
   * @param modal - True/False
   */
  public UsernameSuggestions(Frame parent, String title, boolean modal) {
    super(parent, title, modal);
    try {
       regFrame = (RegistrationFrame)parent;
      jbInit();
    } catch(Exception e) {
      e.printStackTrace();
    }
  }

  /**
   * Init method that creates the dialog window
   * @throws java.lang.Exception 
   */
  private void jbInit() throws Exception {
    this.setSize(new Dimension(400, 143));
    this.getContentPane().setLayout(null);
    jRadioButton1.setBounds(new Rectangle(35, 45, 290, 20));
    // Register the action listener for the radio button click event    
    jRadioButton1.addActionListener(new ActionListener() {
        public void actionPerformed(ActionEvent e) {
          jRadioButton1ActionPerformed(e);
        }
      });
    jRadioButton2.setBounds(new Rectangle(35, 65, 265, 20));
    // Register the action listener for the radio button click event    
    jRadioButton2.addActionListener(new ActionListener() {
        public void actionPerformed(ActionEvent e) {
          jRadioButton2ActionPerformed(e);
        }
      });
    jLabel1.setText("This Username already exists. Select any of the "+
                                                    "following suggestions.");
    jLabel1.setBounds(new Rectangle(30, 15, 345, 30));
    ButtonGroup group = new ButtonGroup();
    group.add(jRadioButton1);
    group.add(jRadioButton2);

    this.getContentPane().add(btnClose, null);
    this.getContentPane().add(jLabel1, null);
    this.getContentPane().add(jRadioButton2, null);
    this.getContentPane().add(jRadioButton1, null);
    
    // Check Username availability
    checkUserAvailabilty();
    
    Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
    Dimension frameSize  = this.getSize();
    // Register the action listener for the button click event
    btnClose.addActionListener(new ActionListener() {
        public void actionPerformed(ActionEvent e) {
          btnCloseActionPerformed(e);
        }
      });
    btnClose.setBounds(new Rectangle(160, 85, 70, 20));
    btnClose.setText("Close");
    if(frameSize.height > screenSize.height) {
      frameSize.height = screenSize.height;
    }
    if(frameSize.width > screenSize.width) {
      frameSize.width = screenSize.width;
    }
    // Set the location for the dialog
    this.setLocation(
                     (screenSize.width - frameSize.width) / 2 + 100,
                     (screenSize.height - frameSize.height) / 2-250);
    this.setVisible(true);
  }

  /**
   * Action listener for radio button click 
   * @param e - ActionEvent object 
   */
  private void jRadioButton1ActionPerformed(ActionEvent e) {
    regFrame.txtUsername.setText(jRadioButton1.getText());
  }
  
  /**
   * Action listener for radio button click 
   * @param e - ActionEvent object 
   */
  private void jRadioButton2ActionPerformed(ActionEvent e) {
    regFrame.txtUsername.setText(jRadioButton2.getText());
  }
  
  /**
   * This methods connects to the database and checks if the given username 
   * is available. If it already exists then the procedure returns two new 
   * username suggestions. 
   */
  private void checkUserAvailabilty()  {
      DBManager dbMgr = null;
      String suggArray[] = null;
      try  {
        dbMgr = new DBManager();
        suggArray = dbMgr.checkAvailability(
                                        regFrame.txtUsername.getText().trim(),
                                        regFrame.txtPhone.getText().trim());
        if( suggArray != null ) {
          jRadioButton1.setText(suggArray[0]);
          jRadioButton2.setText(suggArray[1]);          
        }  else {
          jLabel1.setText("This username is available");
          jRadioButton1.setVisible(false);
          jRadioButton2.setVisible(false);
        }
      } catch (SQLException sqlEx)  {
        regFrame.showMessage(sqlEx.getMessage());
      } catch ( Exception ex) {
        regFrame.showMessage(ex.getMessage());      
      }
  }
  
  /**
   * Action listener for the 'Close' button 
   * @param e - ActionEvent object 
   */
  private void btnCloseActionPerformed(ActionEvent e) {
    closeWindow();
  }
  
  /**
   * Method used to close the dialog window 
   */
  private void closeWindow() {
    this.setVisible(false);
  }
}