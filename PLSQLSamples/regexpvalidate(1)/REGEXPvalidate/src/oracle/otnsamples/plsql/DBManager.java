/**
 * @author                        : Shrinivas Bhat
 * @Version                       : 1.0
 *
 * Development Environment        :  Oracle JDeveloper 10g
 * Name of the File               :  DBManager.java
 * Creation/Modification History  :
 *
 *    Shrinivas Bhat    21-Sep-2004     Created
 *
 */
package oracle.otnsamples.plsql;

// Import SQL classes
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
// Import Util classes
import java.sql.Types;
import java.util.MissingResourceException;
// Import IO class
import java.io.IOException;
/**
 * This class is used to get the database connection and execute the required
 * query. 
 */
public class DBManager  {
  // ConnectionManager object
  ConnectionManager connManager = null;

  /**
   * Default constructor
   */
  public DBManager() throws Exception  {
    try  {
     // Get the instance of ConnectionManager
     connManager = ConnectionManager.getInstance();
    } catch (MissingResourceException mrEx)  {
      throw new Exception(mrEx.getMessage());
    } catch (IOException ioEx)  {
      throw new Exception(ioEx.getMessage());    
    } catch (Exception ex)  {
      throw new Exception(ex.getMessage());
    }
  }

  /**
   * This method is used to validate the user inputs. 
   * @param user
   * @throws java.sql.SQLException
   */
  public void validateAndAddUserInfo( UserInfo user )   throws SQLException { 
    
    RegistrationFrame regFrame = RegistrationFrame.getInstance();
    // Connection from the Connection Cache
    Connection conn = null;

    // PreparedStatement and ResultSet objects
    PreparedStatement pstmt = null;

    try  {
      // Get Connection from the Connection Cache.
      conn = connManager.getConnection();
      CallableStatement proc = null;

      // Prepare to execute the stored procedure CHECK_PASSWORD      
      regFrame.showMessage("Executing Regular Expression to validate Password... ");      
      regFrame.addMessage(" REGEXP_LIKE('"+ user.getPassword()+"'"+
                                ",'(([0-9][a-z]{1}|[a-z][0-9]{1}))' ) ");      
      proc = conn.prepareCall("{call check_password(?)}");
      proc.setString(1,user.getPassword());
      proc.execute();      

      // Prepare to execute the stored procedure CHECK_EMAIL
      regFrame.addMessage("");
      regFrame.addMessage("Executing Regular Expression to validate Email...");
      regFrame.addMessage(" REGEXP_LIKE('"+ user.getEmail()+"'"+
                    ",'([a-z]+|[0-9]+)@[[:alpha:]]+[.]COM','i')");
      proc = conn.prepareCall("{call check_email(?)}");      
      proc.setString(1,user.getEmail());
      proc.execute();

      // Prepare to execute the stored procedure CHECK_PHONE
      regFrame.addMessage("");
      regFrame.addMessage("Executing Regular Expression to validate Phone Number...");      
      regFrame.addMessage("REGEXP_LIKE('"+user.getPhone()+"',"+
                     "'^([[:digit:]]{3}-[[:digit:]]{3}-[[:digit:]]{4})$')");      
      proc = conn.prepareCall("{call check_phone(?)}");
      proc.setString(1,user.getPhone());
      proc.execute();      

    } catch (SQLException sqlEx)  {
      throw sqlEx;
    } 
    
    // Add the user into the database.
    addUserInfo(user);
  }
 
  /**
   * This method connects to the database and checks if the given username 
   * exists in the database already. If the username exists the stored procedure 
   * returns two username suggestion to the user. This is based on the entered 
   * username and  the phone number.
   * @param userName - Username 
   * @param phone - Phone number 
   * @return - String vector containing suggested usernames
   * @throws java.sql.SQLException - SQL Exception 
   */
  public String[] checkAvailability(String userName, String phone)  
                                                        throws SQLException  {
    RegistrationFrame regFrame = RegistrationFrame.getInstance();
    
    // Connection from the Connection Cache
    Connection conn = null;
    String sugg1 = null;
    String sugg2 = null;
    String suggArray[] = null; 
    try  {
      // Get Connection from the Connection Cache.
      conn = connManager.getConnection();
      // Prepare to execute the stored procedure CHECK_USERNAME
      CallableStatement proc = conn.prepareCall("{call check_username(?,?,?,?)}");
      proc.setString(1,userName);
      proc.setString(2,phone);
      proc.registerOutParameter(3,Types.VARCHAR);
      proc.registerOutParameter(4,Types.VARCHAR);
      // Execute the stored procedure
      proc.execute();
      // Retrieve the OUT parameters
      sugg1 = proc.getString(3);
      sugg2 = proc.getString(4);
      regFrame.showMessage("");
      if (sugg1 != null)  {
        // Display the message 
        regFrame.showMessage("Executed Regular Expression for user name "+
                                                            "suggestion...");      
        regFrame.addMessage( " REGEXP_SUBSTR('"+phone+"','[^-]+',1,3)") ;
        regFrame.addMessage( " REGEXP_SUBSTR('"+phone+"','[^-]+',1,2)") ; 
        suggArray = new String[2];
        suggArray[0] = sugg1;
        suggArray[1] = sugg2;
      }
      
    } catch (SQLException sqlEx)  {
      throw sqlEx;
    } 
    return suggArray;
  }
  
  /**
   * This method inserts the user data into the database. 
   * @param user - UserInfo object
   * @throws java.sql.SQLException - SQL Exception 
   */
  private void  addUserInfo(UserInfo user)  throws SQLException {    

    // Connection from the Connection Cache
    Connection conn = null;

    // PreparedStatement and ResultSet objects
    PreparedStatement pstmt = null;

    try {
      // Get Connection from the Connection Cache.
      conn = connManager.getConnection();

      // Query to fetch the employee information
      String query = " INSERT INTO userinfo(username, password, firstname,"+
                     " lastname, email, phone) "+
                     " VALUES (?,?,?,?,?,? ) ";
      // Prepare statement
      pstmt = conn.prepareStatement( query );
      // Bind the values 
      pstmt.setString(1,user.getUserName());
      pstmt.setString(2,user.getPassword());
      pstmt.setString(3,user.getFirstName());
      pstmt.setString(4,user.getLastName());
      pstmt.setString(5,user.getEmail());
      pstmt.setString(6,user.getPhone());
      
      // Execute query to insert user data
      pstmt.executeUpdate();
    } catch (java.sql.SQLException ex) { // Catch SQL Exceptions
       throw new SQLException("SQL Error = " + ex.toString());
    } finally {
      try {
        // Close PreparedStatement and Connection
        pstmt.close();
        conn.close();
      } catch (Exception ex) { // Catch All exceptions
         throw new SQLException("SQL Error while closing objects = " +
                              ex.toString() );
      }
    }
  }
 
  /**
   * This method converts the null String into a readable String object.
   * @param strValue - String 
   * @return String
   */
  private String convertNull( String strValue)  {
    return ( strValue == null?"N/A": strValue );    
  }
}