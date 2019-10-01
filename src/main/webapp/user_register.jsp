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
%>
	<section class="fdb-block fp-active" data-block-type="forms">
	  <div class="container">
	    <div class="row justify-content-center">

	      <div class="col-12 col-md-8 col-lg-7 col-md-5 text-center">
	      <% 
		  		Object obj = request.getServletContext().getAttribute("STATUS");
	  			String status = (String)obj;
		  		if (obj != null ) {
		  			if (status.equals("NOT_SENT")) { %>	
			  		<div class="alert alert-danger alert-dismissable">
			  			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
	  					<strong>Sorry !</strong></a> Some Error occured !! Give it one more try !! 
					</div>
		  		  <% } else if (status.equals("SENT")){ %>
			  		  <div class="alert alert-success alert-dismissable">
				  			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
		  					<strong>That's Cool !!</strong> Try Logging in to enjoy the features !! </a>.
					  </div>
		  		  <% } %>
		  	<% }  request.getServletContext().setAttribute("STATUS" , null); %>
	        
	       	<div class="fdb-box black-border">
		        <FORM action="RegisterNewUser" method="post">
		          <div class="row">
		            <div class="col">
		              <h1>Register</h1>
		            </div>
		          </div>
		          <div class="row">
		            <div class="col mt-4">
		              <input type="text" class="form-control" autocomplete="off" name="name" placeholder="Username" required>
		            </div>
		          </div>
		          <div class="row mt-4">
		            <div class="col">
		              <input type="text" class="form-control" autocomplete="off" name="email" placeholder="Email" required>
		            </div>
		          </div>
		          <div class="row mt-4">
		            <div class="col">
		              <input type="password" class="form-control mb-1" autocomplete="off" name="password" placeholder="Password" required>
		              <p class="text-right"><a href="ShowLoginPage">Already have an account?</a></p>
		            </div>
		          </div>
		          <div class="row mt-4">
		            <div class="col">
		              <button class="btn btn-outline-secondary black-border" type="submit">Submit</button>
		            </div>
		          </div>
		        </FORM>
		        </div>
	      </div>
	    </div>
	    	
	    		  	<div class="container text-center">
	    		  	<h1>Already Registered ???</h1>
		              <a class="btn btn-info black-border" href="ShowLoginPage">Login Here !!</a>
		            </div>
	  </div>
	</section>
<%@ include file="./partials/footer.jsp" %>