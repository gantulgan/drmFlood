<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Амжилттай бичлэг нэмэв</title>
</head>
<body>
	Post Id : ${post.id}<br/>
	Name Mon : ${post.titleMon}<br/>
	Name Eng : ${post.titleEn}<br/>
	ActiveFlag : ${post.activeFlag}<br/>
	Parent Category : ${post.category.nameMon} | ${post.category.nameEn}<br/>
	Posts : <br/>
	Post Mon | En Title: ${post.titleMon} | ${post.titleEn}  
	<div>Post in Mn: ${post.contentMon}</div>
	<div>Post in En: ${post.contentEn}</div>	
		
	<br>
	<a href="${pageContext.request.pathInfo}../">back</a>
</body>
</html>