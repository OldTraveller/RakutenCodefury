package Controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import GeneralStuff.GetMemberFromDB;
import GeneralStuff.Sha1Hash;
import GeneralStuff.UserAuthentication;
import POJOS.MemberDetails;

public class LoginTOTN extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginTOTN() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
		response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
		response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
		response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibilit
		
		String email = request.getParameter("email");
    	String password = request.getParameter("password");
    	
    	System.out.println("USERNAME : " + email);
    	System.out.println("PASSWORD : " + password);
    	/* TO PREVENT CACHING !! */	
    	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    	response.setHeader("Pragma", "no-cache"); 
    	response.setDateHeader("Expires", 0); 
    	
    	MemberDetails member = new MemberDetails();
    	try {
        	member.setEmail(email);
    		member.setPassword(Sha1Hash.getSHAString(password));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
    	try {
			if (UserAuthentication.isUserProper(member)) {
				MemberDetails member2 = GetMemberFromDB.getMember(member); 
				/* CREATE A SESSION FOR THE USER */
				HttpSession userSession = request.getSession();
				request.getSession().setAttribute("MEMBER", member2);
				request.getSession().setAttribute("ALERT_ID", "6");
				System.out.println(member2);
				request.getRequestDispatcher("UserWindow.jsp").forward(request, response);
			} else {
				request.getServletContext().setAttribute("VERIFIED", "NO");
				response.sendRedirect("IndexPageView");
			}
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
