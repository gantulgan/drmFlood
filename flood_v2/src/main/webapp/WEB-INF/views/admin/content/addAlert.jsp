<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Анхааруулга нэмэх</title>
</head>
<body>
	<form:form action="." modelAttribute="alert" method="POST">
		<div>Эхлэх огноо:	<form:input path="startDate" type="datetime-local"/></div>
		<div>Дуусах огноо:		<form:input path="endDate" type="datetime-local"/></div>
		<div>Монгол хэлээр:	<form:input path="alertMon" /></div>
		<div>Англиар:	<form:input path="alertEn" /></div>
		<div>Идэвхтэй эсэх :	<form:checkbox path="activeFlag" /></div>
		<div><input type="submit" value="Add"></div>
	</form:form>

	<br>
	<a href="${pageContext.request.contextPath}/admin/alert">буцах</a>
</body>
</html>