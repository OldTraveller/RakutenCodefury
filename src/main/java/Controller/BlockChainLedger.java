package Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

import GeneralStuff.Sha1Hash;
import GeneralStuff.SqlConnection;

public class BlockChainLedger {
	
	static Connection connection = null ; 
	static PreparedStatement preparedStatement = null ;
	public static boolean persistLedger (String associator, String associated) {
		try {
			connection = SqlConnection.getLocalConnection() ;
			String sqlQuery = "INSERT INTO CODEFURY.MERKLENODE ( SHA_HASH_ASSOCIATOR , SHA_HASH_ASSOCIATED ) VALUES (? , ?)" ; 
				preparedStatement = connection.prepareStatement(sqlQuery);
				preparedStatement.setString(1, associator);
				preparedStatement.setString(2, associated);
			int i = preparedStatement.executeUpdate() ; 
			/*
			 *  CREATE TABLE MERKLE_NODE_DETAILS (
				SHA_HASH_ASSOCIATOR VARCHAR(50) NOT NULL,
				NAME VARCHAR(50) NOT NULL,
			    RATE_OF_INTEREST DOUBLE NOT NULL,
			    EMAIL_ID VARCHAR(50) NOT NULL,
			    BALANCE DOUBLE NOT NULL
			 */
			Statement statement = connection.createStatement();
			sqlQuery = "SELECT COUNT(*) FROM CODEFURY.MERKLENODE WHERE SHA_HASH_ASSOCIATOR = '" + associator +  "'" ;
			ResultSet rs = statement.executeQuery(sqlQuery);
			
			int count = 0;
			System.out.println("COUNT IS : " + count);
			while (rs.next()) {
				count = rs.getInt(1);
			}
			
			if (count == 1000) {
				String time = null;
				Date date = new Date();
				String currentTimeStamp = date.toString();
				sqlQuery = "INSERT INTO CODEFURY.ledger_details VALUES (" + Sha1Hash.getSHAString(sqlQuery) + ", " + associator + ")";
				statement.execute(sqlQuery);
				sqlQuery = "DELETE FROM CODEFURY.LEDGER_DETAILS WHERE SHA_HASH_ASSOCIATOR = '" + associator + "'";
				statement.execute(sqlQuery);
				sqlQuery = "UPDATE CODEFURY.USER " + 
						"SET BALANCE = BALANCE * 1.0125 " + 
						"WHERE SHA_HASH_ASSOCIATOR = '" + associator + "'";
				statement.execute(sqlQuery);
			} 
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