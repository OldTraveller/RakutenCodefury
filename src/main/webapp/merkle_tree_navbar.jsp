<% if (request.getSession().getAttribute("MEMBER") == null ) { %>
	<%@ include file = "partials/header.jsp" %>	
<% } else { %>
	<%@ include file = "./partials/header_when_login.jsp" %>
<% } 
	/* TO PREVENT CACHING !! */
		response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
		response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
		response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
		response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibilit
%>
<hr>
  <div class="container jagah-do-upar">
  		<h2 class="text-center">Well here we have the <span style="color :blue;">BlockChain</span> Oriented Solution called <b>Merkle Tree</b> based on the Pyramid Scheme 
  			which allows people to be associated to other people on the network and carry out transactions for the product offered by them.
  		</h2>
  		<div class="row pt-5 justify-content-center align-items-center">
			 <div class="col-md-8 col-sm-12">
		       <img alt="image" class="img-fluid totn-border" src="images/treecoin.jpg">
   	         </div>
	    </div>
      <h2 class="text-center" style="color : darkgreen;">
			WHAT THE HELL EVEN IS THE IDEA ???
		</h2>
		<p style="color: black; font-size: 1.1em;" class="text-center">
			<strong class="text-center">Ever heard about a <span style="color: red">PYRAMID SCHEME</span>???</strong>
		</p>
	  	<div class="row pt-5 justify-content-center align-items-center">
			 <div class="col-md-8 col-sm-12">
		       <img alt="image" width = "100%" class="img-fluid totn-border" src="images/pyramid_scheme.gif">
   	         </div>
	   </div>
		<h2 class="text-center" style="color : darkgreen;">
			PYRAMID SCHEMES ARE USUALLY SEEN ON A NEGATIVE SIDE ...
		</h2>
		<p style="color: black; font-size: 1.1em;" class="text-center">
			<strong class="text-center">
				but here the idea is to use this PYRAMID SCHEME in a positive sense by recruiting more 
				and more people to come up with a innovative solutions.
			</strong>
		</p>		
		<hr>
	<div class="container ">
		<p style="color: black; font-size: 1.1em;" class="text-center">
			<strong class="text-center">
				So, we have incorporated the idea of <span style="color : green">TRANSACTIONS</span> (secured by <span style="color : blue;">BlockChain</span>) whenever 
				a associator is able to refer a fixed number of people to Barood Solutions he/she is 
				transacted a given amount of <b>Merkel</b> coins which can be later used to buy the products or even convert them into real life currency at the end of the month .
			</strong>
		</p>
	</div>
	<hr>
	<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<h3 class="text-center" style="color : green; background-color: black; color : white;">
					Since expansion is exponential in nature. Within less amount of time 
					the Solution to the particular problem posted  will be a solved with a source code attached to it.
				</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10  col-sm-12">
		       <img alt="image" width ="100%" class="img-fluid totn-border" src="images/pyramid_scheme_2.jpg">
   	         </div>
   	         <div class="col-md-1"></div>
		</div>
	</div>	
	<hr>	
  <h1 class="text-center" style="color :red;">Login to test our Merkle Tree Node DS</h1>
  <hr>
  </div>
  
<%@ include file="./partials/footer.jsp" %>