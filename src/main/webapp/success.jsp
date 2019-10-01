<jsp:include page="./partials/header.jsp"/>
      <div class="container">
            <hr>
	           <h1 class="display-3 text-capitalize text-center w3-animate-top">
	                 File Uploaded Successfully !! 
	           </h1>
            <hr>
      </div>
      <div class="container">
			<button class="btn btn-secondary" onclick="getOCRData()">Extract Text</button>
      </div>
      <div class="container">
      	<h2 id="heading"></h2>
      	<p id="data">
      		<!-- The Data Will be Populated Here !!  -->
      	</p>
      </div>
      
<script type="text/javascript">
function getOCRData() {
	$.ajax({
		  url: "http://localhost:8080/PracticeSnippets/ReadText",
		  success: function( result ) {
			  let heading = "OCR DATA"; 
			  let data = result["OCR_TEXT"];
			  
			  $("#heading").html(heading);
			  $("#data").html(data);
		  }
	});
}
</script>
<jsp:include page="./partials/footer.jsp"/>