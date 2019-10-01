<%@page import="java.sql.ResultSet"%>
<% if (request.getSession().getAttribute("MEMBER") == null ) { %>
	<%@ include file = "/partials/header.jsp" %>	
<% } else { %>
	<%@ include file = "/partials/header_when_login.jsp" %>
<% } %> 
<%
/* TO PREVENT CACHING !! */
		response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
		response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
		response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
		response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibilit
%>
<!-- DISPLAY HEADINGS ARE MORE BETTER THAN THE NORMAL HEADINGS -->
      	<div class="container jagah-do-upar jagah-do-neeche">
		<div id="carouselExampleControls" class="carousel slide black-border" data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="images/slider_image_six.jpg" alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="images/slider_image_four.png" alt="Third slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="images/image_processing.jpeg" alt="Fourth slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="images/nlp.jpg" alt="Fifth slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="images/cg.jpg" alt="Fifth slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="images/iot.gif" alt="Fifth slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	</div>
	<!-- TOTN - CAROUSEL END -->
	<hr>
	<div class="container">
		<h2 class="text-center "><strong style ="padding : 5px;">STRIDES IN TECH HAS CHANGED THE WORLD RAPIDLY</strong></h2>
	</div>
	<hr>
	<div class="container">

			<div class="row container text-left align-items-center">

					<div class="col-md-5 col-sm-12 m-md-auto">
						<h2><strong>Digital Commerce</strong></h2>
						
						<p><strong>
								D-commerce is just like eCommerce, meant for selling and delivering digital goods online. D-commerce deals with only digital goods, not tangible goods or services.	
						</strong>

				</p>
				
					</div>
					<div class="col-md-5 col-sm-12">
						<img alt="image" class="img-fluid totn-border" max-width="100%" height="100px" src="http://static.libsyn.com/p/assets/4/2/1/5/421504bb9bc21605/DigitalCommerce2.jpg">
					</div>
			</div>
			<hr>

		<div class="row container text-left align-items-center">
							<div class="col-md-5 col-sm-12">
											<img alt="image" class="img-fluid totn-border" src="images/Blockchain.jpg">
							</div>
					
							
					<div class="col-md-5 col-sm-12 m-md-auto">
						<h2><strong>BLOCKCHAIN</strong></h2>
						<p>
							<strong>
								Blockchain technology can be integrated into multiple areas. 
								The primary use of blockchains today is as a distributed ledger 
								for cryptocurrencies, most notably bitcoin. There are a few
								operational products maturing from proof of concept by late 2016
							</strong>
				</p>
				
					</div>
					
			</div>
			<hr>
			
			
					<div class="row container text-left align-items-center">

					<div class="col-md-5 col-sm-12 m-md-auto">
						<h2><strong>Artificial Intelligence</strong></h2>
						
						<p><strong>
									Artificial Intelligence popularly known as AI is relevant to any intellectual task. Modern artificial intelligence techniques are pervasive and are too numerous to list here. Frequently, when a technique reaches mainstream use, it is no longer considered artificial intelligence; this phenomenon is described as the AI effect.
							</strong>
				</p>
				
					</div>
					<div class="col-md-5 col-sm-12">
						<img alt="image" class="img-fluid totn-border" src="images/AI.jpeg">
					</div>
			</div>
			<hr>
			
							<div class="row container text-left align-items-center">
					<div class="col-md-5 col-sm-12">
						<img alt="image" class="img-fluid totn-border" src="images/CLOUD.jpg">
					</div>
					<div class="col-md-5 col-sm-12 m-md-auto">
						<h2><strong>Cloud Computing</strong></h2>
						
						<p>
							<strong>
								Cloud computing is the on demand availability of computer system resources, especially data storage and computing power, without direct active management by the user. The term is generally used to describe data centers available to many users over the Internet. Large clouds, predominant today, often have functions distributed over multiple locations from central servers.
							</strong>
				</p>
					</div>
			</div>
			<hr>
			
			<div class="container">
			<h3 class="text-center "><strong style ="padding : 5px;">And countably infinite many more ...</strong></h3>
		</div>
		<hr>
		
		<div class="container">
			<div class="row text-center">
				<div class="col-12">
					<h2>What the world has to say ???</h2>
					</p>
				</div>
			</div>

			<div class="row text-center">
				<div class="col-md-6 col-sm-12 container">
					<iframe width="500" height="300" src="https://www.youtube.com/embed/DENG7Q7VRgo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</div>
				<div class="col-md-6 col-sm-12 container">
					<iframe width="500" height="300" src="https://www.youtube.com/embed/DJntn1cbfx8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</div>
			</div>
		<hr>
		</div>
								<div class="row container text-left align-items-center">
					<div class="col-md-6 col-sm-12">
						<img alt="image" class="img-fluid totn-border" src="images/TLE.JPG">
					</div>
					<div class="col-md-6 col-sm-12 m-md-auto">
						<h3><strong>Advances in Technology ??? Hmmm</strong></h3>
						
						<p>
							<strong>
								The Inefficient use of Technology makes us feel like the picture shown beside !!! 
							</strong>
				</p>
				<p>
							<strong>
								That is, we think we are doing it <strong style="color :green;">CORRECT</strong> but it's not actually <strong style="color :green;">CORRECT</strong> !!! 
							</strong>
				</p>
					</div>
			</div>
	</div>
<jsp:include page="./partials/footer.jsp"/>