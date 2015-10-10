<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Амжилттай бичлэг нэмэв</title>
</head>
<body>
	Нийтлэлийн дугаар/Id : ${post.id}<br/>
	Гарчиг - Монгол : ${post.titleMon}<br/>
	Гарчиг - Англи : ${post.titleEn}<br/>
	Идэвхтэй эсэх : ${post.activeFlag}<br/>
	Дээд/хамаарах ангилал : ${post.category.nameMon} | ${post.category.nameEn}<br/>
	Нийтлэлүүд : <br/>
	Гарчиг : Монгол | Англи :: ${post.titleMon} | ${post.titleEn}  
	<div>Нийтлэл - Монголоор :: ${post.contentMon}</div>
	<div>Нийтлэл - Англиар :: ${post.contentEn}</div>	
		
	<br>
	<a href="${pageContext.request.pathInfo}../">буцах</a>
</body>
</html>