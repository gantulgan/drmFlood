<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	
<div class="container">
	<%-- <div class="row featurette" style="margin: 0px;">
		<c:forEach items="${categories}" var="root">
		<div class="col-md-6 col-lg-3">
	        <h2 class="featurette-heading">${root.nameMon}</h2>
	        <hr class="featurette-divider">
	        <div class="col-sm-offset-3 col-sm-9" id="contentLink">
	        	<c:forEach items="${root.childCategories}" var="child">
	        	<a href="">${child.nameMon}</a>
	        	</c:forEach>
      	</div>
		</div>
		</c:forEach>    	
	</div> --%>
    <div id="contentBody" class="row">
<hr class="featurette-divider"/>
        <div class="col-md-6 col-lg-2">
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
        <div class="col-md-6 col-lg-4">
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
	    <div class="col-md-6 col-lg-3">
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
	    <div class="col-md-6 col-lg-3">
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
		<div class="row">
		<div class="col-xs-6">
	<hr class="featurette-divider"/></div>
	</div>
	</div>
</div>