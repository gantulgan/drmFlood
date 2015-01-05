<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
    <title>Тавтай морил</title>
	<jsp:include page="${pageContext.request.pathInfo}includes/links.jsp"></jsp:include>
</head>

<div id="wrapper">
	<jsp:include page="${pageContext.request.pathInfo}includes/navbar.jsp"></jsp:include>
	<jsp:include page="${pageContext.request.pathInfo}customerBody.jsp"></jsp:include>
	<jsp:include page="${pageContext.request.pathInfo}includes/footer.jsp"></jsp:include>  
</div>


