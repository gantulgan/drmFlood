<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<div class="container">
<div id="contentBody" >
<hr class="featurette-divider">
      <!-- Three columns of text below the carousel -->
      <div class="row" style="margin: 0px 15px;">
        <div class="col-md-6" id="linkFrontNews">
                <div class="row featurette">
				<div class="col-md-5 hidden-sm hidden-xs">
		          <img class="img-circle img-responsive" id="thumbnail" src="resources/images/thumbnail/news.png" alt="" >
		        </div>
		        <div class="col-md-7">
		          <h2 class="featurette-heading">Мэдээ</h2>
		          <p class="lead">Улаанбаатар хотын үерийн талаархи мэдээлэл</p>
		        </div>
		      	</div>
        </div>
        <div class="col-md-6" id="linkDManagement">
          		<div class="row featurette">
				<div class="col-md-5 hidden-sm hidden-xs">
		          <img class="img-circle img-responsive" id="thumbnail" src="resources/images/thumbnail/management.jpg" alt="">
		        </div>
		        <div class="col-md-7">
		          <h2 class="featurette-heading">Менежмент</h2>
		          <p class="lead">Үерийн Эрсдэлийн менежмент</p>
		        </div>
		      	</div>
		</div>      	
      </div>
</div>
<div id="contentBody">
	<div class="row" style="margin: 0px 15px;">
	    <div class="col-md-6" id="linkMapper">
	    	<div class="row featurette">
			<div class="col-md-5 hidden-sm hidden-xs">
	        	<img class="img-circle img-responsive" id="thumbnail" src="resources/images/thumbnail/map.jpg" alt="">
	      	</div>
	      	<div class="col-md-7">
		        <h2 class="featurette-heading">Газрын зураг</h2>
		        <p class="lead">Улаанбаатар хотын үерийн бүсийг газрын зураг дээр үзэх.</p>
	     	</div>
	    	</div>
	    </div>
	    <div class="col-md-6" id="linkContact">
	    	<div class="row featurette">
			<div class="col-md-5 hidden-sm hidden-xs">
	          <img class="img-circle img-responsive" id="thumbnail" src="resources/images/thumbnail/abc.jpeg" alt="">
	        </div>
	        <div class="col-md-7">
	          <h2 class="featurette-heading">Мэдээлэл</h2>
	          <p class="lead">Үертэй холбоотой зөвлөгөө болон нэмэлт мэдээлэл авах.</p>
	        </div>
	      	</div>
		</div>      	
</div>
<hr class="featurette-divider">
</div>
<script type="text/javascript">
$(function(){
	loadLinkButtons('home');
});
</script>   
</div>