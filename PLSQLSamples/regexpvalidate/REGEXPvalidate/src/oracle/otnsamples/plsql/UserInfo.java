/**
 * @author                        : Shrinivas Bhat
 * @Version                       : 1.0
 *
 * Development Environment        :  Oracle JDeveloper 10g
 * Name of the File               :  UserInfo.java
 * Creation/Modification History  :
 *
 *    Shrinivas Bhat    23-Sep-2004     Created
 *
 */
package oracle.otnsamples.plsql;

/**
 * This class is used as a ValueObject to hold the user information, entered
 * by the user. The setter/getter methods help to set/get values from this 
 * object. 
 */
public class UserInfo  {
  private String userName;
  private String password;
  private String confirmPassword;  
  private String firstName;
  private String lastName;
  private String email;
  private String phone;  
  
  public UserInfo() {
  }
  
  public String getUserName()  {
    return userName;
  }
  
  public String getPassword()  {
    return password;
  }
  
  public String getConfirmPwd()  {
    return confirmPassword;
  }
  
  public String getFirstName()  {
    return firstName;
  }
  
  public String getLastName()  {
    return lastName;
  }
  
  public String getEmail()  {
    return email;
  }
  
  public String getPhone()  {
    return phone;
  }
  
  public void setUserName(String value) {
    userName = value;
  }
  
  public void setPassword(String value)  {
    password = value;
  }
  
  public void setConfirmPwd( String value )  {
    confirmPassword = value;
  }
  
  public void setFirstName(String value)  {
    firstName = value;
  }
  
  public void setLastName(String value)  {
    lastName = value;
  }
  public void setEmail(String value)  {
    email = value;
  }
  
  public void setPhone( String value )  {
    phone = value;
  }
}
