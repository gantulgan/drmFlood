<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
this is add category

	${category.categoryName }
	<form:form action="." modelAttribute="category">
		<div>Username: <form:input path="id" /></div>
		<div>Password: <form:input path="categoryName" /></div>
		<div><input type="submit" value="Update"></div>
	</form:form>
</body>
</html>