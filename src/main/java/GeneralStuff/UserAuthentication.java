package GeneralStuff;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.cj.xdevapi.SqlUpdateResult;

import POJOS.MemberDetails;

public class UserAuthentication {
	static Connection connection = null ; 
	static Statement statement = null ; 
	
	public static boolean isUserProper(MemberDetails user) throws SQLException {
		try {
			connection = SqlConnection.getLocalConnection();
			System.out.println("CONNECTION : " + connection);
			/* QUERY STRING */
			final String queryCheck = "SELECT * FROM CODEFURY.USER WHERE EMAIL = '" + 
			user.getEmail() + "' AND PASSWORD = '" + user.getPassword() + "'";
			
			/* 
			 * BIGGEST BUG OF ALL TIME !! HASHING THE HASHED FUNCTION ...
			 */
			System.out.println("THE QUERY IS : " + queryCheck);
			statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(queryCheck);
			System.out.println( resultSet );
			/* ONLY IF THERE IS AN ENTRY NEXT WILL RETURN TRUE */
			if (resultSet.next()) { return true ; } 
			else return false ;
		} catch ( Exception e ) {
			e.printStackTrace();
		} finally {
			statement.close();
			connection.close();
		}
			return false ; 	
		}
	
}