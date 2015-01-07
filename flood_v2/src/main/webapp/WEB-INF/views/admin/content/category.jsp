<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	Category Id : ${category.id}<br/>
	Name Mon : ${category.nameMon}<br/>
	Name Eng : ${category.nameEn}<br/>
	ActiveFlag : ${category.activeFlag}<br/>
	Parent Category : ${category.parent.nameMon} | ${category.parent.nameEn}<br/>
	Posts : <br/>
	<c:forEach items="${category.posts}" var="post">
		Post Mon Title: ${post.titleMon} | ${post.titleEn}  	
	</c:forEach>
	
</body>
</html>