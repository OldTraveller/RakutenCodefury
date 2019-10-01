<%@ include file = "/partials/header_when_login.jsp" %>
<%@page import="GeneralStuff.Sha1Hash"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
  <div class="container jagah-do-upar">
    <div class="row text-center">
      <div class="col">
        	<h2> Welcome, <span style="color : red;"><%= member.getEmail() %></span></h2>
        	<h3> My Password : <span style="color : red;"><%= member.getPassword() %></span></h3>
        	<h2 style="color : blue;"> USE IT IF YOU WANT TO !!! :-) </h2>
      </div>
    </div>

 <div class="col-12 col-sm-12 col-md-6 col-lg-6 m-auto col-xl-3 text-left">

      </div>
    <div class="row mt-5 align-items-top">
      <div class="col-12 col-sm-12 col-md-6 col-lg-6 m-auto col-xl-3 text-left">
        <div class="bg-gray p-3 text-center rounded sl-1 totn-border">
          <h2 class="font-weight-light">Source Codes Rental</h2>
          <p class="text-center"><a href="SourceCodeThing" class="btn btn-warning">Explore</a></p>
        </div>
      </div>

      <div class="col-12 col-sm-12 col-md-6 col-lg-6 m-auto col-xl-3 text-left">
        <div class="bg-gray p-3 text-center rounded sl-1 totn-border">
          <h2 class="font-weight-light">Merkle Spread</h2>
          <p class="text-center"><a href="MerkleSpreadView" class="btn btn-danger">Explore</a></p>
        </div>
      </div>
      
      <div class="col-12 col-sm-12 col-md-6 col-lg-6 m-auto col-xl-3 text-left">
        <div class="bg-gray p-3 text-center rounded sl-1 totn-border">
          <h2 class="font-weight-light">Your Source Codes</h2>
          <p class="text-center"><a href="OtherCodes" class="btn btn-success">Explore</a></p>
        </div>
      </div>
      <div class="col-12 col-sm-12 col-md-6 col-lg-6 m-auto col-xl-3 text-left">
        <div class="bg-gray p-3 text-center rounded sl-1 totn-border">
          <h2 class="font-weight-light">Codes Available Online</h2>
          <p class="text-center"><a href="SourceCodeReview" class="btn btn-info">Explore</a></p>
        </div>
      </div>
    
    </div>
     <hr>
            <div class="bg-gray p-3 text-center rounded sl-1 totn-border">
          <h2 class="font-weight-light" style="color: red;">Check Out Our New API for WomenSafety Tracker from Codefury 1.0</h2>
          <p class="text-center"><a href="WomenSafetyDispatcher" class="btn btn-danger">Explore</a></p>
        </div>
         <hr>
            <div class="bg-gray p-3 text-center rounded sl-1 totn-border">
          <h2 class="font-weight-light" style="color: green;">The PlacementWindow</h2>
          <p class="text-center"><a href="http://totn-placement-window.herokuapp.com/" _target="_blank" class="btn btn-success">Free Articles</a></p>
        </div>
             <hr>
        <div class="bg-gray p-3 text-center rounded sl-1 totn-border">
          <h2 class="font-weight-light" style="color: blue;">The Anonymous API</h2>
          <p class="text-center"><a href="WomenSafetyDispatcher" _target="_blank" class="btn btn-info">TOTN - Anonymous API</a></p>
        </div>
         <hr>
         <div class="bg-gray p-3 text-center rounded sl-1 totn-border">
          <h2 class="font-weight-light" style="color: black;">The BlogSpot API</h2>
          <p class="text-center"><a href="https://totn-blogspot.herokuapp.com/blogs" _target="_blank" class="btn btn-warning">BlogSpot API</a></p>
        </div>
    <div class="row mt-5 align-items-top">
      <div class="col-12 bg-gray col-sm-10 col-md-12">
        	<h2 class="text-center" style="color : blue;">Who am I ???</h2>
			 <table class="table table-hover table-bordered">
			  <thead>
			  <tr>
			      <th scope="col">USERNAME  </th>
			      <th scope="col" style="color: red;"><%= member.getUsername() %></th>
			    </tr>
			    <tr>
			      <th scope="col">EMAIL</th>
			      <th scope="col" ><%= member.getEmail()%></th>
			    </tr>
			    <tr>
			      <th scope="col">USER_SHA</th>
			      <th scope="col"><%= member.getUniqueShaHash() %></th>
			    </tr>
			    <tr>
			      <th scope="col">PASSWORD </th>
			      <th scope="col"><%= member.getPassword() %></th>
			    </tr>
			    <tr>
			      <th scope="col">BALANCE </th>
			      <th scope="col"><%= member.getBalance() %></th>
			    </tr>

			  </thead>
			</table>
      </div>
    </div>
    <hr>
  
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
  </div>
	<hr>
	
	<%
		QueryString = "SELECT * FROM CODEFURY.USER";
		rs = statement.executeQuery(QueryString);
	%>
	<div class="container">
		<div class="row align-items-center">
			<div class="bg-gray col-sm-12 col-md-12">
		        	<h2 class="text-center" style="color : blue;">People on same P2P network</h2>
					 <table class="table table-hover text-center table-bordered">
					  <thead>
					  <tr>
					   	<th scope="col-md-6 col-sm-12" style="color : red;">Username</th>
					   	<th scope="col-md-6 col-sm-12" style="color : blue;">Unique User SHA</th>
					  </tr>
					  <% while (rs.next()) { %>
					    <tr>
					      <th scope="col-md-6 col-sm-12" style="color : red;"><%= rs.getString(1)  %></th>
					      <th scope="col-md-6 col-sm-12" style="color : green;"><%= rs.getString(3) %></th>
					    </tr>
					   <% } %>
					  </thead>
					</table>
		      </div>
	      </div>
	      <hr>
	</div>
	
		<% } catch(Exception e) {} %>
  </div>
<%@ include file="./partials/footer.jsp" %>