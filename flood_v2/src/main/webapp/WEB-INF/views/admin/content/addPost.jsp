<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
this is add post
<form:form action="." modelAttribute="post" method="POST">
		<div>Mongol garchig <form:input path="titleMon" /></div>
		<div>English garchig <form:input path="titleEn" /></div>
		<div>Parent Category 
		<form:select path="category">
			<c:forEach items="${categories}" var="cat">
				<form:option value="${cat.id}">${cat.nameMon} | ${cat.nameEn }</form:option>
			</c:forEach>
		</form:select>
		
		<div>Mongol content <form:textarea id="contentMon" path="contentMon" /></div>
		
		<div>English content <form:textarea id="contentEn" path="contentEn" /></div>
		</div>
		<div>Active_Flag :<form:checkbox path="activeFlag" /></div>
		<div><input type="submit" value="Add"></div>
	</form:form>
</body>
</html>