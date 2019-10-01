package GeneralStuff;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import POJOS.MemberDetails;

public class GetMemberFromDB {
	static Connection connection = null ; 
	static Statement statement = null ;
	public static MemberDetails getMember(MemberDetails member) throws SQLException {
		try {
			connection = SqlConnection.getLocalConnection() ;
			System.out.println("INSIDE GETMEMBERS");
			System.out.println("PASSWORD : " + member.getPassword());
			String sqlQuery = "SELECT * FROM CODEFURY.USER WHERE EMAIL = '" + member.getEmail() + "'"
					+ " AND PASSWORD = '" + member.getPassword() + "'";
			statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sqlQuery);
			MemberDetails member_ret = new MemberDetails();
			while (rs.next()) {
				System.out.println("YES SOME VALUE IS THERE !!");
				member_ret.setEmail(rs.getString("EMAIL"));
				member_ret.setPassword(rs.getString("PASSWORD"));
				member_ret.setUniqueShaHash(rs.getString("SHA_HASH_ASSOCIATOR"));
				member_ret.setBalance(rs.getDouble("BALANCE"));
				member_ret.setUsername(rs.getString("USERNAME"));
			} 
			
			System.out.println("INSIDE GETMEMBERS FROM DB !!");
			System.out.println("MEMBER NAME : " + member.getUsername());;
			return member_ret;
		} catch ( Exception e ) {
			e.printStackTrace();				
		} finally {
			statement.close();
			connection.close();
		}
		return null;
		}
}
