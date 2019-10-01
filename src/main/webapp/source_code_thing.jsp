<%@page import="GeneralStuff.SqlConnection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.URISyntaxException" %>
<%@page import="java.sql.SQLException"%>
<%@ include file = "/partials/header_when_login.jsp" %>
    <section class="container totn-border w3-animate-right">
        <section class="hero is-black">
            <div class="hero-body" >
                <div class="container" align="center">
                    <h1 ><strong>
                        <span style="color: #003366;">Contribute Your Code</span>
                    </strong></h1>
                    <h3 class="subtitle"> <span style="color: #003366;">
                    		Would you please provide us with details !! 
                    	</span>
                    </h3>
                </div>
            </div>
        </section>
    </section>
    <hr>
    <section class="container w3-animate-zoom" align="center">
  			<h2><strong>Source Code Information</strong></h2>
  			<hr>
	  		<section class="container" align="center">
	    		<div class="row">
	    			<div class="col-md-3"></div>
	    			<div class="col-md-6">
	    			<form action="AddTopic" method="POST">
	    											  <div class="form-group">
						  <h3>Enter Unique HASH</h3>
						    <input type="text" class="form-control" name="hash" required>
						  </div>
						  <div class="form-group">
						  	<h3>Problem Solved ???</h3>
						    <input type="text" class="form-control" name="problem_solved" required>
						  </div>
						  <div class="form-group">
						  	<h3>Source Code URL</h3>
						    <input type="text" class="form-control" name = "url" required>
						  </div>
						  <div class="form-group">
						  	<h3>Description</h3>
						    <input type="text" class="form-control" name="description" required> 
						  </div>
						  <div class="form-group">
						  	<h3>Price You Would Like to Keep !!</h3>
						    <input type="number" class="form-control" name="price" required> 
						  </div>
						  <button type="submit" class="btn btn-primary">Submit</button>
						</form>
	    			</div>
	    			<div class="col-md-3"></div>
	    		</div>
	    	</section>
    </section>
    <hr>
<%@ include file = "/partials/footer.jsp" %>

