<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Alert</title>
</head>
<body>
this is edit alert

	<form:form action="." modelAttribute="alert" method="POST">
		<form:hidden path="id"/>
		<div>Start Date:	<form:input path="startDate"  type="datetime-local" /></div>
		<div>End Date:		<form:input path="endDate"  type="datetime-local" /></div>
		<div>Монгол хэлээр:	<form:input path="alertMon" /></div>
		<div>In English:	<form:input path="alertEn" /></div>
		<div>Active_Flag :	<form:checkbox path="activeFlag" /></div>
		<div><input type="submit" value="Update"></div>
	</form:form>
	
	<br>
	<a href="${pageContext.request.pathInfo}../">back</a>
</body>
</html>