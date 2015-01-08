<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
<title>Мэдээ</title>
<jsp:include page="/resources/link/links.jsp"></jsp:include>

</head>
<body>
    <div id="background">
		<jsp:include page="${pageContext.request.pathInfo}includes/header.jsp"></jsp:include>
	<div class="container">
	<div id="contentHolder">
	<div class="row" style="margin-right: 0px;">
		<div class="col-sm-3">
			<jsp:include page="${pageContext.request.pathInfo}includes/navbar.jsp"></jsp:include>
		</div>
		<div class="col-sm-9" id="contentWrapper">
			<div id="headProtector">
			<div id="dMSchemeContainer">
			<c:forEach var="post" items="${posts}">	
			<div class="responsive" style="text-align: left;">
				<div class="row" id="newsTitle"><h3><c:out value="${post.titleMon}"></c:out></h3></div>
				<hr class="featurette-divider">
			    <div class="row featurette">
					<div class="col-md-3 hidden-sm hidden-xs">
			        	<img class="img-circle img-responsive" id="thumbnail" src="${pageContext.request.pathInfo }resources/images/thumbnail/news.png" alt="" >
				    </div>
				    <div class="col-md-9">
				    	<p>${post.contentMon}</p>
				        <a href="${pageContext.request.pathInfo }./content/view/${post.id}">Дэлгэрэнгүй</a>
				    </div>
			   	</div>
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