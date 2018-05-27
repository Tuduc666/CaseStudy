package dao;

import java.io.IOException;
//import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
//import java.util.Properties;

public class OracleConnection {
	public static Connection getConnection() throws ClassNotFoundException, IOException, SQLException {
		Connection conn = null;
	//	final Properties prop = new Properties();
	//	final InputStream inputStream = OracleConnection.class.getClassLoader().getResourceAsStream("CaseStudy/resources/db.properties");
	//	prop.load(inputStream);
		Class.forName("oracle.jdbc.driver.OracleDriver");  //changed
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl12", 
				"SYSTEM", "Tamduc1166");
		return conn;
	}
}