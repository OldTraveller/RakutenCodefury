package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import GeneralStuff.Sha1Hash;
import GeneralStuff.SqlConnection;
import POJOS.MemberDetails;

public class PersistUserDetails {
	static Connection connection = null ; 
	static PreparedStatement preparedStatement = null ;
	
	public static boolean putUserDetails(MemberDetails member) {
		try {
			connection = SqlConnection.getLocalConnection() ;
			String sqlQuery = "INSERT INTO WEBATHON.USER_DETAILS ( NAME , USN,"
					+ "SEMESTER, BRANCH, EMAIL, PASSWORDS, BALANCE) " + 
					" VALUES (?,?,?,?,?,?)" ;
			
			sqlQuery = "INSERT INTO CODEFURY.USER ( USERNAME, EMAIL, PASSWORD, SHA_HASH_ASSOCIATOR, BALANCE) VALUES (?, ? ,?, ?, ?)";
				preparedStatement = connection.prepareStatement(sqlQuery);
				preparedStatement.setString(1, member.getUsername());
				preparedStatement.setString(2, member.getEmail());
				preparedStatement.setString(3, member.getPassword());
				preparedStatement.setString(4, Sha1Hash.getSHAString(String.valueOf(System.nanoTime())));
				preparedStatement.setDouble(5, member.getBalance());
				int i = preparedStatement.executeUpdate() ; 
			if ( i != 0 ) {
				return true ;	
			} 
			
		} catch ( Exception e ) {
			e.printStackTrace();				
			
		}
			return true;			
		}
	
	static boolean testEmpty ( String anyString ) {
		if ( anyString.equals("") ) {
			return true ;
		} 
		return false ;
	}

}

