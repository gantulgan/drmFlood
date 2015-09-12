<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://openlayers.org/en/v3.0.0/css/ol.css" type="text/css">
<script src="http://parall.ax/parallax/js/jspdf.js"></script>
<title>Map</title>
<jsp:include page="/resources/link/links.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="${pageContext.request.pathInfo}mapper_body_v2.jsp"></jsp:include>
</body>
</html>