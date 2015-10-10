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
	Ангиллын дугаар/Id : ${category.id}<br/>
	Монгол нэр : ${category.nameMon}<br/>
	Англи нэр : ${category.nameEn}<br/>
	Идэвхтэй эсэх : ${category.activeFlag}<br/>
	Дээд/хамаарагдах ангилал : ${category.parent.nameMon} | ${category.parent.nameEn}<br/>
	Нийтлэл : <br/>
	<c:forEach items="${category.posts}" var="post">
		Post Mon Title: ${post.titleMon} | ${post.titleEn}  	
	</c:forEach>
	
	<br>
	<a href="${pageContext.request.pathInfo}../">буцах</a>
</body>
</html>