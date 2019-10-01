package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import GeneralStuff.Sha1Hash;
import POJOS.MemberDetails;

public class RegisterNewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public RegisterNewUser() {
        super();
    }

    static boolean isNull(String string) {
    	return string == null;
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache"); 
		response.setDateHeader("Expires", 0); 
		System.out.println("Register New User");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		if (isNull(name) || 
				isNull(email)) {
				request.getRequestDispatcher("IndexPageView").forward(request, response);
			}
		try {
			MemberDetails memberDetails = new MemberDetails();
			memberDetails.setEmail(email);
			memberDetails.setUsername(name);
			memberDetails.setBalance(1200);
			memberDetails.setPassword(Sha1Hash.getSHAString(password));
			Model.PersistUserDetails.putUserDetails(memberDetails);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("request Couldnt be sent !!");
			request.getServletContext().setAttribute("STATUS", "NOT_SENT");
			response.sendRedirect("ShowRegisterPage");
		}
		System.out.println("request is sent !!");
		request.getServletContext().setAttribute("STATUS", "SENT");
		response.sendRedirect("ShowRegisterPage");
	}

}
