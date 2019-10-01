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
		<section class="fdb-block fp-active container">
		    <div class="row justify-content-center">
		      <div class="col-12 col-md-8 col-lg-7 col-xl-5 text-center">
		      <% 
		  		Object obj = request.getServletContext().getAttribute("VERIFIED");
	  			String status = (String)obj;
		  		if (obj != null ) {
		  			if (status.equals("NO")) { %>	
			  		<div class="alert alert-danger alert-dismissable">
			  			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
	  					<strong>You sure of the credentials ???</strong></a>
					</div>
		  		  <% } %>
		  	<% }  request.getServletContext().setAttribute("VERIFIED" , null); %>
		        <FORM action="LoginTOTN" method="POST">
		        	<div class="fdb-box totn-border">
			          <div class="row">
			            <div class="col">
			              <h1>Log In</h1>
			            </div>
			          </div>
			          <div class="row mt-4">
			            <div class="col">
			              <input type="text" class="form-control" name = "email" autocomplete="off" placeholder="Email" required>
			            </div>
			          </div>
			          <div class="row mt-4">
			            <div class="col">
			              <input type="password" class="form-control mb-1" name="password" autocomplete="off" placeholder="Password" required>
			              <p class="text-right"><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Recover Password</a></p>
			            </div>
			          </div>
			          <div class="row mt-4">
			            <div class="col">
			              <button class="btn btn-outline-secondary black-border" type="submit">Submit</button>
			            </div>
			          </div>
			        </div>
		        </FORM>
		      </div>
		    </div>
		</section>
<%@ include file="./partials/footer.jsp" %>