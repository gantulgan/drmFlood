
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<div class="container">
<div id="contentBody" >
<hr class="featurette-divider">
      <!-- Three columns of text below the carousel -->
      <div class="row" style="margin: 0px 15px;">
        <div class="col-md-6" id="newNews">
                <div class="row featurette">
				<div class="col-md-5 hidden-sm hidden-xs">
		          <img class="img-circle img-responsive" id="thumbnail" src="resources/images/thumbnail/TXT.png" alt="" >
		        </div>
		        <div class="col-md-7">
		          <h2 class="featurette-heading">Шинэ Мэдээ</h2>
		          <p class="lead">Шинэ соргог мэдээ.</p>
		        </div>
		      	</div>
        </div>
        <div class="col-md-6" id="emergencyNews">
          		<div class="row featurette">
				<div class="col-md-5 hidden-sm hidden-xs">
		          <img class="img-circle img-responsive" id="thumbnail" src="resources/images/thumbnail/Recent.png" alt="">
		        </div>
		        <div class="col-md-7">
		          <h2 class="featurette-heading">Шуурхай Мэдээ</h2>
		          <p class="lead">Онц яаралтай шуурхай мэдээ.</p>
		        </div>
		      	</div>
		</div>      	
      </div>
</div>
<div id="contentBody">
	<div class="row" style="margin: 0px 15px;">
	    <div class="col-md-6" id="topNews">
	    	<div class="row featurette">
			<div class="col-md-5 hidden-sm hidden-xs">
	        	<img class="img-circle img-responsive" id="thumbnail" src="resources/images/thumbnail/DefaultSetting.png" alt="">
	      	</div>
	      	<div class="col-md-7">
		        <h2 class="featurette-heading">Шилдэг мэдээ</h2>
		        <p class="lead">Долоо хоногийн шилдэг мэдээ.</p>
	     	</div>
	    	</div>
	    </div>
	    <div class="col-md-6" id="popularNews">
	    	<div class="row featurette">
			<div class="col-md-5 hidden-sm hidden-xs">
	          <img class="img-circle img-responsive" id="thumbnail" src="resources/images/thumbnail/Document.png" alt="">
	        </div>
	        <div class="col-md-7">
	          <h2 class="featurette-heading">Онцгой мэдээ</h2>
	          <p class="lead">Долоо хоногийн хамгийн их тараагдсан мэдээ.</p>
	        </div>
	      	</div>
		</div>      	
</div>
<hr class="featurette-divider">
</div>
<script type="text/javascript">
$(function(){
	loadLinkButtons('news');
});
</script>    
</div>