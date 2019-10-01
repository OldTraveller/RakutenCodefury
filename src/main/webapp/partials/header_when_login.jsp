<!DOCTYPE html>
<%@page import="POJOS.MemberDetails"%>
<%
	/* TO PREVENT CACHING !! */
		response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
		response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
		response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
		response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibilit
		MemberDetails member = (MemberDetails)request.getSession().getAttribute("MEMBER");
%>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/froala-design-blocks/1.0.2/css/froala_blocks.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script src="./javascripts/helper.js" type="text/javascript"></script>
  <title>Barood Solutions</title>
</head>
<script type="text/javascript">
	var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
	(function(){
	var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
	s1.async=true;
	s1.src='https://embed.tawk.to/5d4bcfc27d27204601c9e401/default';
	s1.charset='UTF-8';
	s1.setAttribute('crossorigin','*');
	s0.parentNode.insertBefore(s1,s0);
	})();
</script>
<body>
<header data-block-type="headers" data-id="1" class="fp-active">
  <div class="container">
    <nav class="navbar navbar-expand-md no-gutters">
      <div class="col-3 text-left">
        <a href="IndexPageView">
            <h4 style="color: black;"><strong>Barood Solutions</strong></h4>
        </a>
      </div>

      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse-2" aria-controls="navbarNav7" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

      <div class="collapse navbar-collapse navbar-collapse-2 justify-content-center col-md-8 " id="navbarNav7">
        <ul class="navbar-nav justify-content-center">
          <li class="nav-item active">
            <a class="nav-link" href="SourceCodeView">Source-Code</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="ArticlesView">Articles</a>
          </li>
          <li class="nav-item active"> 
          	<a class="nav-link" href="MerkleTreeNavbar">Merkle Tree</a>
          </li>
		<li class="nav-tem-active">
       		<a class="btn btn-info ml-md-3 black-border" href="ShowUserWindow"><%= member.getUsername() %></a>
       		<a class="btn btn-info ml-md-3 black-border" href="LogoutTOTN">Logout</a>
		</li>
        </ul>
      </div>
    </nav>
  </div>
</header>
		<section class="fp-active bg-black" style="padding: 1em;">
		  <div class="container">
		    <div class="row text-center">
		      <div class="col-12 bolder">
		        <h1 class="w3-animate-top display-3">CODEFURY 2.0</h1>
		        <h6 class="w3-animate-top"><strong>Powered by - <span  style="color: orange">Rakuten</span></strong></h6>
		      </div>
		    </div>
		  </div>
		</section>