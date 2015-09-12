<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Амжилттай alert</title>
</head>
<body>
	Alert Id : ${alert.id}<br/>
	Alert Mon : ${alert.alertMon}<br/>
	Alert Eng : ${alert.alertEn}<br/>
	ActiveFlag : ${alert.activeFlag}<br/>
	Start Date : ${alert.startDate}<br/>
	End Date : ${alert.endDate}<br/>
	
	<a href="${pageContext.request.pathInfo}../">back</a>
</body>
</html>