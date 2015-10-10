<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Амжилттай alert</title>
</head>
<body>
	Анхааруулгын дугаар : ${alert.id}<br/>
	мэссэж - Монголоор : ${alert.alertMon}<br/>
	мэссэж - Англиар : ${alert.alertEn}<br/>
	Идэвхтэй эсэх : ${alert.activeFlag}<br/>
	Эхлэх огноо : ${alert.startDate}<br/>
	Дуусах огноо : ${alert.endDate}<br/>
	
	<a href="${pageContext.request.pathInfo}../">back</a>
</body>
</html>