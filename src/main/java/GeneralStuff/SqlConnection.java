package GeneralStuff;

import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SqlConnection {
	private static final String URL = "jdbc:mysql://localhost:3306/codefury" ;
	private static final String USERNAME =  "root";
	private static final String PASSWORD = "";

	
	public static Connection getLocalConnection() throws URISyntaxException, SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");	
		return DriverManager.getConnection(URL, USERNAME, PASSWORD);
	}
	
	/*
	 * For testing in the local machine we are using MySQL Database
	 * Schema : WEBATHON
	 */
	public static Connection getHerokuConnection() throws URISyntaxException, SQLException, ClassNotFoundException {
		 String dbUrl = System.getenv("JDBC_DATABASE_URL");
		    return DriverManager.getConnection(dbUrl);
	}
}
