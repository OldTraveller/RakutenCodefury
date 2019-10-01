<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<% if (request.getSession().getAttribute("MEMBER") == null ) { %>
	<%@ include file = "/partials/header.jsp" %>	
<% } else { %>
	<%@ include file = "/partials/header_when_login.jsp" %>
<% } 
	/* TO PREVENT CACHING !! */
		response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
		response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
		response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
		response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibilit
		MemberDetails member = (MemberDetails)request.getSession().getAttribute("MEMBER");
		// for lattitude longi : 12.972442, 77.580643
		// https://www.google.co.in/maps/search/12.972442,+77.580643/@12.972442,77.5784543,17z?hl=en
		// FORMAT : [https://www.google.co.in/maps/search/] + lattitude + "[,]" + longitude + "/@" + 
		//			lattitude + "," + longitude + "," 
		// <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15553.155664177157!2d77.65011124773112!3d12.953355307769037!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae13ffa8480035%3A0xa4881c53002aeb3!2sJeevan+Bheema+Nagar+Traffic+Police+Station!5e0!3m2!1sen!2sin!4v1553181928328" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
%>

<%
try {
	String connectionURL = "jdbc:mysql://localhost:3306/CODEFURY" ;
	Connection connection = null;
	Statement statement = null;
	ResultSet rs = null;
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	connection = DriverManager.getConnection(connectionURL, "root", "" );	
	statement = connection.createStatement();
	String QueryString = "SELECT * FROM police_station";
	rs = statement.executeQuery(QueryString);
%>

  <div class="container jagah-do-upar">
	   <div class=" row text-center jagah-do-neeche">
	      <div class="col" style="background-color : black;">
	        <h1><span style="color: #ff00ff;">Women</span><span style="color: pink;">Safety</span><span style="color: green;">RequestDispatcher</span></h1>
	      </div>
	   </div>
	  
	  <table class="table table-sm">
		  <thead>
		    <tr>
		      <th scope="col">POLICE-STATION</th>
		      <th scope="col">LATTITUDE</th>
		      <th scope="col">LONGITUDE</th>
		      <th scope="col">PRIORITY VALUE</th>
		      <th></th>
		    </tr>
		  </thead>
		  <tbody>
		  <% while (rs.next()) {
				int priorityValue = rs.getInt(5);  
				String color = null;
				String button = null;
				if (priorityValue >= 8) {
					color = "green";
					button = "success";
				} else if (priorityValue >= 5 ) {
					color = "blue";
					button = "primary";
				} else {
					color = "red";
					button = "danger";
				}
		  %>
		    <tr>
		      <th scope="row" style="color : <%= color %>"><strong><%= rs.getString(1) %></strong></th>
		      <td style="color : <%= color %>"><%= rs.getDouble(2) %></td>
		      <td style="color : <%= color %>"><%= rs.getDouble(3) %></td>
		      <td style="color : <%= color %>"><strong><%= priorityValue %></strong></td>
		      <td><a href="" class="btn black-border btn-<%= button %>">Dispatch</a></td>
		    </tr>
		 <% } 
		  rs = statement.executeQuery(QueryString);
		 %>
		  </tbody>
		</table>
		<div class="container pt-5 justify-content align-items-left">
			<h3 class="text-center" style="padding: 5px;">Data Seggregation Credits : <span style="color: green;">Muhammed Moin (6th SEM CSE)</span></h3>
		</div>
	
		<div class="row justify-content-center">
			      <div class="col-12 col-md-8 col-lg-6 text-center totn-border">
			        <h2>TRACE THEM OUT ...</h2>
			        <FORM action="ChangeAlertId" method="POST">
			        	<div class="input-group mt-4 mb-4">
		  					<select class="form-control" name="alertId" required>
		  					<% while (rs.next()) { %>
		    					<option value="<%= rs.getInt(4) %>"><%= rs.getString(1) %></option>
		    				<% } %>
		  					</select>
				          <div class="input-group-append">
				            <button class="btn btn-outline-info" type="submit">TRACE</button>
				          </div>
				        </div>
			        </FORM>
			      </div>
			    </div>
      </div>
	<% 
		// JUST FOR INITIAL LOAD UP !! OTHERWISE IT WILL THROW JASPER NULL POINTER EXCEPITON
		QueryString = "SELECT URL FROM webathon.police_station_url WHERE ALERT_BELL_ID = " + request.getSession().getAttribute("ALERT_ID");
		rs = statement.executeQuery(QueryString);	
		
		while (rs.next()) {
			String urlOfMap = rs.getString("URL");
	%>	
		
	     <div class="jagah-do-upar">
	    	<iframe class="map" src="<%= urlOfMap %>" width="100%" height="300" frameborder="0" style="border:0" allowfullscreen=""></iframe>
	  	</div>
  	
  	<% } %>
		
		<div class="container pt-5 justify-content align-items-left">
			<h3 class="text-center totn-border" style="padding: 5px;"><span style="color : blue;"> POINT TO CHECK : (xp, yp) </span> | 
									<span style="color : red;"> RADIUS OF DISPATCH CIRCLE : d </span>| 
									<span style="color : green;"> POINT OF ALERT RAISE : (xc, yc) </span> </h3>
		</div>
  		<div class="row pt-5 justify-content-center align-items-center">
			 <div class="col-md-10 col-sm-12">
		       <img alt="image" class="img-fluid totn-border" src="images/circle_generation.JPG">
   	         </div>
	  </div>
  </div>
  <% } catch(Exception e) {
	  // IDK WHAT TO DO !! 
	  System.out.println("EXCEPTION !!");
		e.printStackTrace();
   } %>
<%@ include file="./partials/footer.jsp" %>