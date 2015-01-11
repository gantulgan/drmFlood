<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<spring:message var="pageTitle" code="common.message.unimplemented" />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<title>${pageTitle}</title>
</head>
<body>

	<jsp:include page="${pageContext.request.pathInfo}../includes/adminHeader.jsp"></jsp:include>

	this is admin home page
	<br>
		
	Language : <a href="?lang=en">English</a>|<a href="?lang=mn">Mongolian</a>|<a href="?lang=fr">French</a>
	<h3>
	welcome.springmvc : <spring:message code="common.message.unimplemented" text="default text" />
	</h3>
<%-- 	${post.id == '52' ? 'yes':'no'} --%>
	Current Locale : ${pageContext.response.locale.language == 'en' ? 'english' : 'mongolian'}
	${pageContext.request.contextPath}
	
</body>
</html>