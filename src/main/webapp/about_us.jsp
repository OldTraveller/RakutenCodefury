<%@page import="java.sql.ResultSet"%>
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
<div class="container">
        <div class="row text-center justify-content-center jagah-do-upar">
          <div class="col-8 totn-border">
            <h1>TEAM NAME : <span style="color :red;">BAROOD</span> !!!</h1>
          </div>
        </div>
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12 col-md-12 col-lg-12 text-center">
            <h2><strong>Feel Free To Contact Us !!!</strong></h2>
            <h3 style="color :blue;">Just see the Map below to know where to find Us ... :-)</h3>
          </div>
        </div>
    <hr>
    
          <div class="col-12 col-lg-12 col-md-12">
            <iframe class="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3887.9652914891535!2d77.58385061457798!3d12.974071790854232!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae16733ec35453%3A0x1cd7245177406fa9!2sUVCE+Canteen!5e0!3m2!1sen!2sin!4v1551043964700" width="100%" height="300" frameborder="0" style="border:0" allowfullscreen=""></iframe>
          </div>
          <hr>
          </div>
          </div>
<jsp:include page="./partials/footer.jsp"/>