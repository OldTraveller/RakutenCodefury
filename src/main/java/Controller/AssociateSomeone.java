package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import POJOS.MemberDetails;

/**
 * Servlet implementation class AssociateSomeone
 */
public class AssociateSomeone extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssociateSomeone() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String whoToAssociate = request.getParameter("whoto");
		String associator = ((MemberDetails)request.getSession().getAttribute("MEMBER")).getUniqueShaHash();
		System.out.println("WHO TO : " + whoToAssociate);
		System.out.println("ASSOCIATOR : " + associator);
		boolean isPersisted = BlockChainLedger.persistLedger(associator, whoToAssociate);
		response.sendRedirect("MerkleSpreadView");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
