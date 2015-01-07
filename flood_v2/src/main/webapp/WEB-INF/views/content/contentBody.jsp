<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<div class="container">
<div id="contentBody" >
<hr class="featurette-divider">
      <div class="row" style="margin: 0px;">
        <div class="col-md-6 col-lg-2" id="linkFrontNews">
                <div class="row featurette">
					<div class="col-sm-12">
			          <img class="img-circle img-responsive" id="thumbnail" src="resources/images/circleIcon/news.png" alt="" >
			        </div>
		        </div>
		        <div class="row featurette">
			        <div class="col-sm-12" >
			          <h2 class="featurette-heading">Мэдээ</h2>
			          <hr class="featurette-divider">
			          <div class="col-sm-offset-3 col-sm-9"  id="contentLink">
			          <a href="">Мэдээ</a>
			          <a href="">Шуурхай мэдээ</a>
			          </div>
			        </div>
		      	</div>
        </div>
        <div class="col-md-6 col-lg-4" id="linkDManagement">
          		<div class="row featurette">
					<div class="col-sm-12">
			          <img class="img-circle img-responsive" id="thumbnail" src="resources/images/circleIcon/aperture.png" alt="">
			        </div>
		        </div>
		        <div class="row featurette">
			        <div class="col-sm-12">
			          <h2 class="featurette-heading">Менежмент</h2>
			          <hr class="featurette-divider">
			          <div class="col-sm-offset-3 col-sm-9" id="contentLink">
			          <a href="">Үерийн эрсдэлийн менежментийн стратеги</a>
			          <a href="">Менежментийн загварууд</a>
			          </div>
			        </div>
		      	</div>
		</div>      	
	    <div class="col-md-6 col-lg-3" id="linkMapper">
	    	<div class="row featurette">
				<div class="col-sm-12">
		        	<img class="img-circle img-responsive" id="thumbnail" src="resources/images/circleIcon/map.png" alt="">
		      	</div>
	      	</div>
		    <div class="row featurette">
		      	<div class="col-sm-12">
			        <h2 class="featurette-heading">Газрын зураг</h2>
			        <hr class="featurette-divider">
			        <div class="col-sm-offset-3 col-sm-6" id="contentLink">
			        <a href="">Дүүрэг</a>
			        <a href="">Голын ай сав</a>
			        </div>
		     	</div>
	    	</div>
	    </div>
	    <div class="col-md-6 col-lg-3" id="linkContact">
	    	<div class="row featurette">
				<div class="col-sm-12">
		          <img class="img-circle img-responsive" id="thumbnail" src="resources/images/circleIcon/clipboard.png" alt="">
		        </div>
	        </div>
		    <div class="row featurette">
		        <div class="col-sm-12">
		          <h2 class="featurette-heading">Мэдээлэл</h2>
		          <hr class="featurette-divider">
		          <div class="col-sm-offset-3 col-sm-9" id="contentLink">
		          <a href="">Тайлан, илтгэл</a>
		          <a href="">Нэр томъёоны тайлбар, лавлах</a>
		          </div>
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