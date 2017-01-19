/**
 * @author                        : Shrinivas Bhat
 * @Version                       : 1.0
 *
 * Development Environment        :  Oracle JDeveloper 10g
 * Name of the File               :  RegisrationFrame.java
 * Creation/Modification History  :
 *
 *    Shrinivas Bhat    23-Sep-2004     Created
 *
 */

package oracle.otnsamples.plsql;

// Impirt SQLException
import java.sql.SQLException;
// Import Swing/AWT classes
import javax.swing.JFrame;
import java.awt.Dimension;
import javax.swing.JLabel;
import javax.swing.JButton;
import javax.swing.JTextField;
import javax.swing.JPasswordField;
import java.awt.Rectangle;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.SwingConstants;
import java.awt.Color;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import java.awt.Font;

/**
 * This class creates the necessary user interface. This creates a
 * registration form through which users can enter their information.
 */
public class RegistrationFrame extends JFrame  {
  // Declare the form elements
  private JLabel jLabel1 = new JLabel();
  private JLabel jLabel2 = new JLabel();
  private JLabel jLabel3 = new JLabel();
  JTextField txtUsername = new JTextField();
  private JLabel jLabel4 = new JLabel();
  private JTextField txtEmail = new JTextField();
  JTextField txtPhone = new JTextField();
  private JLabel jLabel5 = new JLabel();
  private JButton submitButtom = new JButton();
  private JPasswordField txtPwd = new JPasswordField();
  private JPasswordField txtConfirmPwd = new JPasswordField();
  private JLabel jLabel6 = new JLabel();
  private JLabel jLabel7 = new JLabel();
  private JTextField txtFirstName = new JTextField();
  private JTextField txtLastName = new JTextField();
  private JLabel jLabel8 = new JLabel();
  private JLabel jLabel9 = new JLabel();
  private JScrollPane jScrollPane1 = new JScrollPane();
  private JTextArea errorField = new JTextArea();
  private JButton btnAvailable = new JButton();
  static RegistrationFrame regFrame = null;
  private JLabel jLabel10 = new JLabel();
  private JLabel jLabel11 = new JLabel();

  /**
   * This static method returns the instance of this class.
   * @return - RegistrationFrame instance
   */
  public static RegistrationFrame getInstance()  {
    if ( regFrame == null ) {
      regFrame = new RegistrationFrame();
    }
    return regFrame;
  }

  /**
   * Private constructor
   */
  private RegistrationFrame() {
    try {
      jbInit();
    } catch(Exception e) {
      e.printStackTrace();
    }
  }

  /**
   * The init method. This creates the user registration form.
   * @throws java.lang.Exception - Exception
   */
  private void jbInit() throws Exception {
    this.getContentPane().setLayout(null);
    this.setSize(new Dimension(593, 478));
    this.setTitle("User Registration Form");
    jLabel1.setText("User Name");
    jLabel1.setBounds(new Rectangle(90, 50, 85, 25));
    jLabel2.setText("Password");
    jLabel2.setBounds(new Rectangle(90, 85, 65, 20));
    jLabel3.setText("Confirm Password");
    jLabel3.setBounds(new Rectangle(90, 110, 95, 25));
    txtUsername.setBounds(new Rectangle(200, 50, 105, 20));
    txtUsername.setColumns(20);
    jLabel4.setBounds(new Rectangle(90, 200, 70, 20));
    jLabel4.setText("Email");
    txtEmail.setBounds(new Rectangle(200, 200, 105, 20));
    txtEmail.setColumns(50);
    txtPhone.setBounds(new Rectangle(200, 230, 105, 20));
    txtPhone.setColumns(12);
    jLabel5.setText("Phone");
    jLabel5.setBounds(new Rectangle(90, 230, 70, 25));
    submitButtom.setText("Submit");
    submitButtom.setBounds(new Rectangle(200, 260, 105, 25));
    // Register the action listener for the button click event
    submitButtom.addActionListener(new ActionListener() {
        public void actionPerformed(ActionEvent e) {
          submitButtonActionPerformed(e);
        }
      });
    txtPwd.setBounds(new Rectangle(200, 80, 105, 20));
    txtPwd.setColumns(40);
    txtConfirmPwd.setBounds(new Rectangle(200, 110, 105, 20));
    txtConfirmPwd.setColumns(40);
    jLabel6.setText("User Registration Form");
    jLabel6.setBounds(new Rectangle(125, 10, 255, 25));
    jLabel6.setHorizontalAlignment(SwingConstants.CENTER);
    jLabel6.setFont(new Font("Tahoma", 1, 12));
    jLabel7.setText("First Name");
    jLabel7.setBounds(new Rectangle(90, 145, 85, 15));
    txtFirstName.setBounds(new Rectangle(200, 140, 105, 20));
    txtFirstName.setColumns(30);
    txtLastName.setBounds(new Rectangle(200, 170, 105, 20));
    txtLastName.setColumns(30);
    jLabel8.setText("Last Name");
    jLabel8.setBounds(new Rectangle(90, 170, 85, 25));
    jLabel9.setText("( Phone number must be in 111-222-3333 format )");
    jLabel9.setBounds(new Rectangle(315, 230, 255, 20));
    jLabel9.setToolTipText("null");
    jScrollPane1.setBounds(new Rectangle(5, 295, 575, 145));
    jScrollPane1.setEnabled(false);
    jScrollPane1.setFocusable(false);
    jScrollPane1.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);
    errorField.setBackground(new Color(212, 208, 200));
    errorField.setWrapStyleWord(true);
    errorField.setEditable(false);
    errorField.setLineWrap(true);
    errorField.setFont(new Font("Lucida Sans Typewriter", 0, 11));
    btnAvailable.setText("Check Availability");
    btnAvailable.setBounds(new Rectangle(340, 50, 120, 20));
    // Register the action listener for the button click event
    btnAvailable.addActionListener(new ActionListener() {
        public void actionPerformed(ActionEvent e) {
          btnAvalilableActionPerformed(e);
        }
      });
    jLabel10.setText("( Email must be in abc@xyz.com format )");
    jLabel10.setBounds(new Rectangle(315, 200, 250, 20));
    jLabel11.setText("( Password must be alpha-numeric )");
    jLabel11.setBounds(new Rectangle(315, 80, 220, 15));
    jScrollPane1.getViewport().add(errorField, null);
    this.getContentPane().add(jLabel11, null);
    this.getContentPane().add(jLabel10, null);
    this.getContentPane().add(btnAvailable, null);
    this.getContentPane().add(jScrollPane1, null);
    this.getContentPane().add(jLabel9, null);
    this.getContentPane().add(jLabel8, null);
    this.getContentPane().add(txtLastName, null);
    this.getContentPane().add(txtFirstName, null);
    this.getContentPane().add(jLabel7, null);
    this.getContentPane().add(jLabel6, null);
    this.getContentPane().add(txtConfirmPwd, null);
    this.getContentPane().add(txtPwd, null);
    this.getContentPane().add(submitButtom, null);
    this.getContentPane().add(jLabel5, null);
    this.getContentPane().add(txtPhone, null);
    this.getContentPane().add(txtEmail, null);
    this.getContentPane().add(jLabel4, null);
    this.getContentPane().add(txtUsername, null);
    this.getContentPane().add(jLabel3, null);
    this.getContentPane().add(jLabel2, null);
    this.getContentPane().add(jLabel1, null);
  }

  /**
   * Action listener for the 'SubmitButton'
   * @param e
   */
  private void submitButtonActionPerformed(ActionEvent e) {
    this.jScrollPane1.setVisible(false);
    this.errorField.setText("");
    // Get the user input values from the form
    UserInfo user  = getFormValues();
    addUserData( user );
  }

  /**
   * Sets the UserInfo value object with the data entered by the user.
   * @return - UserInfo object
   */
  private UserInfo getFormValues()  {
    UserInfo user = new UserInfo();
    user.setUserName( this.txtUsername.getText().trim() );
    user.setPassword(new String(this.txtPwd.getPassword()).trim());
    user.setConfirmPwd(new String(this.txtConfirmPwd.getPassword()).trim());
    user.setFirstName(this.txtFirstName.getText().trim());
    user.setLastName(this.txtLastName.getText().trim());
    user.setEmail(this.txtEmail.getText().trim());
    user.setPhone(this.txtPhone.getText().trim());
    return user;
  }

  /**
   * Adds the user information into the database.
   * @param user - UserInfo object
   */
  private void addUserData( UserInfo user)  {
    // Check if both the passwords match.
    String validationMsg = validateFormData(user);
    if (validationMsg == null )  {
    if (user.getPassword().equals(user.getConfirmPwd()))  {
      DBManager dbMgr = null;
      try  {
      dbMgr = new DBManager();
      // Add the user into the database.
      dbMgr.validateAndAddUserInfo(user);
      addMessage("");
      addMessage("User Registered successfully.");
      } catch (SQLException sqlEx)  {
       addMessage("");
       addMessage(sqlEx.getMessage());
      } catch ( Exception ex) {
       addMessage("");
       addMessage(ex.getMessage());
      }
    } else {
      // Display an error message.
      showMessage("Passwords do not match");
    }
    } else {
      showMessage(validationMsg);
    }
  }

  /**
   * The action listener for the 'Check Availability' button
   * @param e
   */
  private void btnAvalilableActionPerformed(ActionEvent e) {
    new UsernameSuggestions(this, "Suggested Usernames",false).show();
  }

  /**
   * Displays the error message in the error field.
   * @param message - String message
   */
  void showMessage(String message)  {
    // Set the message in the error field.
    this.errorField.setVisible(true);
    this.jScrollPane1.setVisible(true);
    this.errorField.setText(message.trim());
  }

    /**
   * Displays the error message in the error field.
   * @param message - String message
   */
  void  addMessage(String message)  {
    // Appends the message in the error field.
    this.errorField.setVisible(true);
    this.jScrollPane1.setVisible(true);
    this.errorField.append("\n"+message.trim());
  }

  private String validateFormData(UserInfo user)  {
    StringBuffer errorMsg = new StringBuffer();
    if (user.getUserName() == null || user.getUserName().trim().length() < 1 ) {
      errorMsg.append("Username field can not be empty \n");
    }
    if (user.getPassword() == null || user.getPassword().trim().length() < 1 ) {
      errorMsg.append("Password field can not be empty \n");
    }
    if (user.getLastName() == null || user.getLastName().trim().length() < 1 ) {
      errorMsg.append("LastName field can not be empty \n");
    }
    if (user.getEmail() == null || user.getEmail().trim().length() < 1 ) {
      errorMsg.append("Email field can not be empty \n");
    }
    if (user.getPhone() == null || user.getPhone().trim().length() < 1 ) {
      errorMsg.append("Phone number field can not be empty \n");
    }
    if (errorMsg.toString().length() > 0 )  {
      return "Registration Form validation ERRORS:\n"+errorMsg.toString();
    }
    return null;
  }
}