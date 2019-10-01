package GeneralStuff;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/RegisterQuery")
public class RegisterQuery extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterQuery() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
		response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
		response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
		response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibilit
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String additional = request.getParameter("additional");
		
		System.out.println("ADDITIONAL IS : " + additional);
		
		Connection connection = null ; 
		PreparedStatement preparedStatement = null ;
		int i = 0;
		try {
			connection = SqlConnection.getLocalConnection() ;
			String sqlQuery = "INSERT INTO WEBATHON.QUERIES ( EMAIL , SUBJECT, ADDITIONAL )" + 
					" VALUES (?, ?, ?)" ; 
				preparedStatement = connection.prepareStatement(sqlQuery);
				preparedStatement.setString(1, email);
				preparedStatement.setString(2, subject);
				preparedStatement.setString(3, additional);
			i = preparedStatement.executeUpdate() ; 
			if ( i != 0 ) {
				System.out.println("INSERTED QUERY !!");
			} 
			
		} catch ( Exception e ) {
			e.printStackTrace();				
		}
		if (i > 0) {
			request.getServletContext().setAttribute("QUERY_DONE", "YES");
		} else {
			request.getServletContext().setAttribute("QUERY_DONE", "NO");
		}
		request.getRequestDispatcher("DisplayMore").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
