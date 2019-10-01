<%@ include file = "/partials/header_when_login.jsp" %>
<%@page import="GeneralStuff.Sha1Hash"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%
try {
	String connectionURL = "jdbc:mysql://localhost:3306/codefury" ;
	Connection connection = null;
	Statement statement = null;
	ResultSet rs = null;
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	connection = DriverManager.getConnection(connectionURL, "root", "" );	
	statement = connection.createStatement();
	String QueryString = "SELECT * FROM codefury.USER";
	rs = statement.executeQuery(QueryString);
%>
  <div class="container jagah-do-upar">
  		<h2 class="text-center">The <span style="color :blue;">BlockChain</span> Oriented Solution based on the Pyramid Scheme </h2>
  		<h3 class="text-center" style="color : dark;">Google It !! You wont find it !! Because it's 100% original Idea.</h3>
  		<h2 class="text-center">To save the trees - <span style="color: yellowgreen">Merkle Tree</span> comes to rescue ...</h2>
  </div>
  <hr>
	      		<div class="row justify-content-center">
			      <div class="col-12 col-md-8 col-lg-6 text-center totn-border">
			        <h2>ASSOCIATE A PERSON ...</h2>
			        <FORM action="AssociateSomeone" method="POST">
			        	<div class="input-group mt-4 mb-4">
		  					<select class="form-control" name="whoto" required>
		  					<% while (rs.next()) { %>
		    					<option value="<%= rs.getString(4) %>"><%= rs.getString(1) %></option>
		    				<% } %>
		  					</select>
				          <div class="input-group-append">
				            <button class="btn btn-outline-success" type="submit">ASSOCIATE</button>
				          </div>
				        </div>
			        </FORM>
			      </div>
			    </div>
	<hr>
	
	<%
		QueryString = "SELECT * FROM CODEFURY.LEDGER_DETAILS";
		rs = statement.executeQuery(QueryString);
	%>
	<div class="container">
		<div class="row align-items-center">
			<div class="bg-gray col-sm-12 col-md-12">
		        	<h2 class="text-center" style="color : black;">The BlockChain Ledger</h2>
					 <table class="table table-hover text-center table-bordered">
					  <thead>
					  <tr>
					   	<th scope="col-md-6 col-sm-12" style="color : red;">TRANSACTION ID</th>
					   	<th scope="col-md-6 col-sm-12" style="color : blue;">ASSOCIATOR SHA</th>
					  </tr>
					  <% while (rs.next()) { %>
					    <tr>
					      <th scope="col-md-6 col-sm-12" style="color : red;"><%= rs.getString(1)  %></th>
					      <th scope="col-md-6 col-sm-12" style="color : green;"><%= rs.getString(2) %></th>
					    </tr>
					   <% } %>
					  </thead>
					</table>
		      </div>
	      </div>
	      <hr>
	</div>
	
	<%
		QueryString = "SELECT * FROM CODEFURY.MERKLENODE WHERE SHA_HASH_ASSOCIATOR = '" + member.getUniqueShaHash() + "'";
		rs = statement.executeQuery(QueryString);
	%>
	<div class="container">
		<div class="row align-items-center">
			<div class="bg-gray col-sm-12 col-md-12">
		        	<h2 class="text-center" style="color : blue;">Your associated Users</h2>
					 <table class="table table-hover text-center table-bordered">
					  <thead>
					  <tr>
					   	<th scope="col-md-6 col-sm-12" style="color : red;">YOUR UNIQUE SHA</th>
					   	<th scope="col-md-6 col-sm-12" style="color : blue;">YOUR ASSOCIATED ONES SHA</th>
					  </tr>
					  <% while (rs.next()) { %>
					    <tr>
					      <th scope="col-md-6 col-sm-12" style="color : red;"><%= rs.getString(1)  %></th>
					      <th scope="col-md-6 col-sm-12" style="color : green;"><%= rs.getString(2) %></th>
					    </tr>
					   <% } %>
					  </thead>
					</table>
		      </div>
	      </div>
	      <hr>
	</div>
	
	<% } catch(Exception e) {} %>
	
<%@ include file = "/partials/footer.jsp" %>

