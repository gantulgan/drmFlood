<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<spring:message var="pageTitle" code="common.message.unimplemented" />


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<title>${pageTitle}</title>
</head>
<body>
	<jsp:include page="${pageContext.request.pathInfo}../includes/adminHeader.jsp"></jsp:include>
    <div class="container">
    <h3>Админ хэсэгт тавтай морилно уу.</h3>
    <ul class="list-unstyled">
        <li><a href="${pageContext.request.contextPath}/admin/category/">Ангилал</a></li>
        <li><a href="${pageContext.request.contextPath}/admin/post/">Нийтлэл</a></li>
        <li><a href="${pageContext.request.contextPath}/admin/alert/">Урсдаг анхааруулга</a></li>
        <li><a href="${pageContext.request.contextPath}/admin/files/">Файлууд</a></li>
    </ul>
    </div>
</body>
</html>