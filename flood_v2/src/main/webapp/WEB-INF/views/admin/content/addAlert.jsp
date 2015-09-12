<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Alerts</title>
</head>
<body>
this is add alert

	<form:form action="." modelAttribute="alert" method="POST">
		<div>Start Date:	<form:input path="startDate" type="datetime-local"/></div>
		<div>End Date:		<form:input path="endDate" type="datetime-local"/></div>
		<div>Монгол хэлээр:	<form:input path="alertMon" /></div>
		<div>In English:	<form:input path="alertEn" /></div>
		<div>Active_Flag :	<form:checkbox path="activeFlag" /></div>
		<div><input type="submit" value="Add"></div>
	</form:form>

	<br>
	<a href="${pageContext.request.contextPath}/admin/alert">back</a>
</body>
</html>