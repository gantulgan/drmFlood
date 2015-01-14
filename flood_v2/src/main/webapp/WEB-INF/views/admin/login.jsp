<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="postLoginUrl" value="/j_spring_security_check" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${param.failed == true}">
		<div>Your login attempt failed. Please try again.</div>
	</c:if>
	<h1>Please log in</h1>
	<form class="main" action="${postLoginUrl}" method="post">
		Username: <input type="text" name="j_username" /><br /> Password: <input
			type="password" name="j_password" /><br /> <input type="checkbox"
			name="_spring_security_remember_me" /> Remember me<br /> <input
			type="submit" value="Log in" />
	</form>
</body>
</html>