<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:message var="more" code="common.moredetail" />

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
<title>Тавтай морил</title>
<jsp:include page="/resources/link/links.jsp"></jsp:include>

</head>
<body>
    <div id="background">
		<jsp:include page="${pageContext.request.pathInfo}includes/header.jsp"></jsp:include>
	<div class="container">
	<div id="contentHolder">
	<div class="row" style="background-color: #6DAFBF;">
		<div class="col-sm-3">
			<jsp:include page="${pageContext.request.pathInfo}includes/navbar.jsp"></jsp:include>
		</div>
		<div class="col-sm-9" id="contentWrapper">
			<div id="headProtector">
			<div id="dMSchemeContainer">
			<c:forEach var="post" items="${posts}">	
			
			<div class="responsive" style="text-align: left;">
			    <div class="row featurette">
				    <div class="col-md-12">
				     <p class="bg-primary" style="padding-top: 0px; padding-bottom: 0px;"><a style="color: white;"><img style="height: 30px; width: 30px;" id="thumbnail" src="${pageContext.request.contextPath }resources/images/thumbnail/news2.png" alt="" />
				    	<strong><c:out value="${pageContext.response.locale.language == 'en' ? post.titleEn : post.titleMon }"/></strong></a></p>
				    	<div style="display: block; min-height: 80px; max-height: 120px; overflow: hidden;">
				    	<p >${pageContext.response.locale.language == 'en' ? post.introEn : post.introMon}</p>
				    	</div>
				    	<p style="text-align: right;"><a style="text-align: right; padding-top: 0px; padding-bottom: 0px;" href="${pageContext.request.contextPath}/content/${post.id}">${more}</a>
				    	</p>
				    </div>
			   	</div>	
			   	<hr class="featurette-divider"/>
			</div>
			</c:forEach>
			</div>
			</div>
		</div>
	</div>
	</div>
	</div>
		<jsp:include page="${pageContext.request.pathInfo}includes/footer.jsp"></jsp:include>
	</div>	
</body>
</html>