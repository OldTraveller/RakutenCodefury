<%@page import="GeneralStuff.SqlConnection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.URISyntaxException" %>
<%@page import="java.sql.SQLException"%>

<%@ include file = "/partials/header_when_login.jsp" %>
<section class="container w3-animate-zoom" align="center">
  			<h3><strong>CONTRIBUTION MADE TILL DATE<strong></h3>
  			<hr>
<%!
	public static String getDataElement(String key, String value) {
		return "<tr><td class='is-half'><strong>" + key + "</strong></td><td class='is-half'>" + value + "</td></tr>";
	}

	public static Connection getHerokuConnection() throws URISyntaxException, SQLException, ClassNotFoundException {
		return SqlConnection.getLocalConnection();
	}
%>
<%
    String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/codefury";
	String database = "universal_copy";
	String userid = "root";
	String password = "";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try{
		String id = request.getParameter("id");
		connection = getHerokuConnection();
		statement=connection.createStatement();
		String sql ="SELECT * FROM SOURCE_CODE_THING_2 WHERE SHA_HASH_ASSOCIATOR !='" + member.getUniqueShaHash() +"'";
		System.out.println("QUERY IS : " + sql); 
		resultSet = statement.executeQuery(sql);
		int i = 0; 
		out.println("<hr>");
		out.println("<div id='accordion'");
		System.out.println("SIZE IS : " + resultSet.getFetchSize());
		while(resultSet.next()){
				i++;
				String hash = resultSet.getString("SHA_HASH_ASSOCIATOR"); 
				String url = resultSet.getString("URL");
				String problemSolved = resultSet.getString("PROBLEM_SOLVED"); 
				String description = resultSet.getString("DESCRIPTION");
				double price = resultSet.getDouble("PRICE"); 
				
				out.println("<div class='card'>");
				out.println("<div class='card-header'>");
						out.println("<a style='color: black;' class='collapsed card-link' data-toggle='collapse' href='#collapse" + i + "'><strong style='color: black;'> TOPIC NAME : </strong></span><span style='color: #OD3D56'>" + problemSolved + "</span>");
		        out.println("</a>");
		        		out.println("</div>");
		        				out.println("<div id='collapse" + i + "' class='collapse' data-parent='accordion'>");
		        						out.println("<div class='card-body' style='color: black;'>" + description);
		        
		        out.println("</div>");
		        		out.println("<h6 style='color: black'>HASH_CONTRIBUTOR : <span style='color: violet'>" + hash + "</span></h6>");
		        		out.println("<h6 style='color: black'>PROBLEM SOLVED : <span style='color: green'>" + problemSolved + "</span></h6>");
		        		
		        		out.println("<h6 style='color: black'>PRICE : <span style='color: red'>" + price + " Merkle Coins</span></h6>");
		        		
				        out.println("<a href='"+ url +"' target='_blank'>" + url + "</a><br>");


				     out.println("</a>");
				     out.println("</div>");
		}
		out.println("</div>");
		connection.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>  			
    </section>
    <script>
    	function functionAlert() {
    		if (confirm("Are you sure you want to buy ??")) {
    			window.open('https://www.codexworld.com', '_blank');
    		}
    		
    	}
    </script>
    <hr>
<%@ include file = "/partials/footer.jsp" %>

