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
%>
	<div class="row text-center justify-content-center jagah-do-upar">
      <div class="col-8 totn-border">
      	<%
      		boolean sahiHai = (request.getSession() != null) &&
      						  (request.getSession().getAttribute("MEMBER") != null) ;
      		if (sahiHai) {
      	%>
      		<h2>Hey, <%= ((MemberDetails)request.getSession().getAttribute("MEMBER")).getUsername() %></h2>
      	<% } %>
        <h1><span style="color: red">404</span> ERROR ! PAGE NOT FOUND.</h1>
        <h2>Since You Have Come Here !!!</h2>
        <h3 style="color: blue;">ENJOY THIS SONG AND GO</h3>
      </div>
      <iframe class = "totn-border jagah-do-upar" width="560" height="315" src="https://www.youtube.com/embed/dQw4w9WgXcQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      <hr>
    </div>
    
<%@ include file="./partials/footer.jsp" %>