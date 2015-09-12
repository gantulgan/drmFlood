<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Амжилттай категори</title>
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
	
	<br>
	<a href="${pageContext.request.pathInfo}../">back</a>
</body>
</html>