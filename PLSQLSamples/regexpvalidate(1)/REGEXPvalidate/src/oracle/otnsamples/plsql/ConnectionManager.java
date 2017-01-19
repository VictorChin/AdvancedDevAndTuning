/**
 * @author  Shrinivas Bhat
 * @version 1.0
 *
 * Development Environment        :  Oracle JDeveloper 10g
 * Name of the Application        :  ConnectionManager.java
 * Creation/Modification History  :
 *
 *    Shrinvas   21-Sep-2004      Created
 *
 * Overview of Application        : This class is used to create and manage the
 * connections in the cache. It reads the database properties from the
 * Connection.properties file and sets it in the DataSource.
 *
**/
package oracle.otnsamples.plsql; 

// Oracle JDBC Classes 
import oracle.jdbc.pool.OracleDataSource;

// Java IO Classes 
import java.io.IOException;

// Java Sql Classes 
import java.sql.Connection;
import java.sql.SQLException;

// Java Utility Classes 
import java.util.Enumeration;
import java.util.Properties;
import java.util.ResourceBundle;
import java.util.MissingResourceException;

  public class ConnectionManager {

    // Variable pointing to this instance 
    private static ConnectionManager thisInstance = null;

    // Data Source Variable 
    private OracleDataSource ods = null;

    /**
     * Private Constructor : This approach makes it easy to implement this class
     * as a Singleton Class. This method initializes Cache if not already
     * initialized.
     *
     */
    private ConnectionManager() throws MissingResourceException, 
                                       IOException, 
                                       SQLException {
        if (ods == null) {
          ods = new OracleDataSource();
          configureDataSource();
        }
    }

    /**
     * This method returns a single instance of this bean.
     *
     * @return - ConnCacheBean Instance
     *
     * @throws Exception
     */
    public static ConnectionManager getInstance() throws 
                                                  MissingResourceException,
                                                  IOException,
                                                  SQLException  {
      if (thisInstance == null) {
        // Create an instance of this class
        thisInstance = new ConnectionManager();
      }
      return thisInstance;
    }

    /**
     * Return connection from OracleDatasource
     * @return Connection object
     * @throws Exception
     */
    public Connection getConnection() throws SQLException  {
      return ods.getConnection();
    }

    /**
     * This method configures the Datasource with appropriate values of Host
     * Name, User Name, Password etc. Note that the configuration parameters are
     * stored in Connection.properties file.
     *
     * @param ods - OracleDataSource
     */
    private void configureDataSource() throws MissingResourceException, 
                                              IOException  {
      // Load the properties file to get the connection information
      // from the Connection.properties file
       
      Properties prop = this.loadParams("Connection");

      // Set Host name 
      ods.setServerName(prop.getProperty("HostName"));

      // Set Database SID 
      ods.setDatabaseName( prop.getProperty("SID"));

      // Set Port number 
      ods.setPortNumber(new Integer( prop.getProperty("Port")).intValue());

      // Set Driver type 
      ods.setDriverType("thin");

      // Set Network protocol 
      ods.setNetworkProtocol("tcp");

      // Set User name 
      ods.setUser( prop.getProperty("UserName") );

      // Set Password 
      ods.setPassword( prop.getProperty("Password"));
    }

    /**
     * This method reads a properties file, which is passed as the parameter
     * and loads it into a Java Properties object and returns the object.
     *
     * @param file - File name
     *
     * @return Properties object
     *
     * @throws IOException
     */
    private Properties loadParams(String file) throws MissingResourceException, 
                                                      IOException  {
      // Loads a ResourceBundle and creates Properties from it 
      Properties prop = new Properties();
      ResourceBundle bundle = ResourceBundle.getBundle(file);
      Enumeration enum = bundle.getKeys();
      String key = null;

      while (enum.hasMoreElements()) {
        key = (String) enum.nextElement();
        prop.put(key, bundle.getObject(key));
      }

      return prop;
    }
  }