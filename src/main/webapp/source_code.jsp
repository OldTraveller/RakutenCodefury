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
   <hr>
    <section class="fp-active" data-block-type="contents">
		  <div class="container">
		    <div class="row align-items-center">
		      <div class="col-12 col-md-12 col-lg-6 col-xl-5">
		        <h2 class="text-center bolder w3-animate-bottom">How our unique source code renting helps ??</h2>
		        <p class="lead mb-5 w3-animate-top">
					<br> 
				Barood Solutions takes up the source code solutions from differnt vendors
	        and analyzes the code efficiency by developing differnt testcases and provide the rating
	        and the customers can  select among vary	
				</p>
		      </div>
		      <div class="col-12 col-md-6 col-sm-12 m-auto">
		        <img alt="We Are All Together !!" class="img-fluid black-border" src="https://www.perforce.com/sites/default/files/image/2019-02/image-solution-repository-management-what-is-repository-management_4.png" >
		      </div>
		    </div>
        <div class="row align-items-center">
		      
		      <div class="col-12 col-md-12 col-lg-6 col-xl-5">
		        <h2 class="text-center bolder w3-animate-bottom">Algorithm behind the rating system......</h2>
		        <p class="lead mb-5 w3-animate-top">
					<br> 
					Barood Solutions implements the use of Kth nearest neighbours algorithm.
        The algorithm uses linear regression on its neignboring elements(products),
        much details about it can be found in the link given below.<br>
        <a href="https://en.wikipedia.org/wiki/K-nearest_neighbors_algorithm">Wiki</a>
				</p>
		      </div>
		      <div class="col-12 col-md-6 col-sm-12 m-auto">
		        <img alt="We Are All Together !!" class="img-fluid black-border" src="https://s3.amazonaws.com/media.eremedia.com/uploads/2017/04/review.png" >
		      </div>
		    </div>
      <hr>
              <div class="row align-items-center">
		      
		      <div class="col-12 col-md-12 col-lg-6 col-xl-5">
		        <h2 class="text-center bolder w3-animate-bottom">Digital Processing..!</h2>
		        <p class="lead mb-5 w3-animate-top">
					<br> 
					The efficient <b>Digital Processing</b> from barood Solutions gives the user an efiicent and the easy way<br>
        to access lots of products to access online.
				</p>
		      </div>
		      <div class="col-12 col-md-6 col-sm-12 m-auto">
		         <img alt="We Are All Together !!" class="img-fluid black-border" src="https://previews.123rf.com/images/kentoh/kentoh1903/kentoh190300313/118843247-digital-data-information-processing-system-business-intelligence.jpg" >
		      </div>
		    </div>
      <hr>
  <h1 class="text-center" style="color :red;">Login to test our Merkle Tree Node DS</h1>
  <hr>
		</section>
<jsp:include page="./partials/footer.jsp"/>