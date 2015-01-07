<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:message var="pageTitle" code="common.message.unimplemented" />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${pageTitle}</title>
</head>
<body>
	this is admin home page
	<a href="${pageContext.request.contextPath}/admin/category" >Category List</a>
	<a href="${pageContext.request.contextPath}/admin/post" >Post List</a>
	<a href="${pageContext.request.contextPath}/admin/alert" >Alert msg</a>
	
	Language : <a href="?lang=en">English</a>|<a href="?lang=mn">Mongolian</a>|<a href="?lang=fr">French</a>
	<h3>
	welcome.springmvc : <spring:message code="common.message.unimplemented" text="default text" />
	</h3>
	
	Current Locale : ${pageContext.response.locale}
	
</body>
</html>