<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:message var="homepage" code="footer.homepage" />
<spring:message var="home" code="footer.home" />
<spring:message var="login" code="footer.login" />
<spring:message var="mapper" code="footer.mapper" />
<spring:message var="contact" code="footer.contact" />	
	
<div class="container">
<div id="contentBody" class="row">
<hr class="featurette-divider"/>
        <div class="col-md-6 col-lg-3">
                <div class="row featurette">
					<div class="col-sm-12">
			          <img class="img-circle img-responsive" id="thumbnail" src="resources/images/circleIcon/news.png" alt="" >
			        </div>
		        </div>
        </div>
        <div class="col-md-6 col-lg-3">
          		<div class="row featurette">
					<div class="col-sm-12">
			          <img class="img-circle img-responsive" id="thumbnail" src="resources/images/circleIcon/clipboard.png" alt="">
			        </div>
		        </div>
		</div>      	
	    <div class="col-md-6 col-lg-3">
	    	<div class="row featurette">
				<div class="col-sm-12">
		        	<img class="img-circle img-responsive" id="thumbnail" src="resources/images/circleIcon/aperture.png" alt="">
		      	</div>
	      	</div>
	    </div>
	    <div class="col-md-6 col-lg-3">
	    	<div class="row featurette">
				<div class="col-sm-12">
		          <img class="img-circle img-responsive" id="thumbnail" src="resources/images/circleIcon/map.png" alt="">
		        </div>
	        </div>
		</div>      
</div>

<div id="contentBody" class="row">
		<c:forEach items="${categories}" var="root">
        <div class="col-md-6 col-lg-3">
		        <div class="row featurette">
			        <div class="col-sm-12" >
			          <h2 class="featurette-heading">${pageContext.response.locale.language == 'en'? root.nameEn : root.nameMon }</h2>
			          <hr class="featurette-divider">
			          <div class="col-sm-offset-2 col-sm-10"  id="contentLink">
							<ul>
							<c:forEach items="${root.childCategories}" var="child">
							<li><a href="${pageContext.request.contextPath}/category/${child.id}">${pageContext.response.locale.language == 'en' ? child.nameEn : child.nameMon }</a></li>
							</c:forEach>
							</ul>
			          </div>
			        </div>
		      	</div>
        </div>
        </c:forEach>
 	    <div class="col-md-6 col-lg-3">
		    <div class="row featurette">
		        <div class="col-sm-12">
		          <h2 class="featurette-heading">${mapper}</h2>
		          <hr class="featurette-divider">
		          <div class="col-sm-offset-3 col-sm-9" id="contentLink">
		          <a href="${pageContext.request.contextPath}/mapper">${mapper}</a>
		          </div>
		        </div>
	      	</div>
		</div>      
		<div class="row">
		<div class="col-xs-12"><hr class="featurette-divider"/></div>
		</div>
</div>
	
</div>