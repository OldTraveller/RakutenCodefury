package Controller;

import java.io.IOException;
import java.net.URISyntaxException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import GeneralStuff.Sha1Hash;
import GeneralStuff.SqlConnection;

/**
 * Servlet implementation class AddTopic
 */
public class AddTopic extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Connection connection = null ; 
	static PreparedStatement preparedStatement = null ;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTopic() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String problemSolved = request.getParameter("problem_solved"); 
		String url = request.getParameter("url"); 
		String description = request.getParameter("description"); 
		String uniqueHash = request.getParameter("hash");
		double price = Double.parseDouble(request.getParameter("price"));

		try {
			connection = SqlConnection.getLocalConnection() ;
		} catch (ClassNotFoundException | URISyntaxException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sqlQuery = "INSERT INTO CODEFURY.SOURCE_CODE_THING_2 VALUES (?, ?, ?, ?, ?)";
			try {
				preparedStatement = connection.prepareStatement(sqlQuery);
				preparedStatement.setString(1, uniqueHash);
				preparedStatement.setString(2, problemSolved);
				preparedStatement.setString(3, url);
				preparedStatement.setString(4, description);
				preparedStatement.setDouble(5, price);
				int i = preparedStatement.executeUpdate();
				request.getRequestDispatcher("SourceCodeThing").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
