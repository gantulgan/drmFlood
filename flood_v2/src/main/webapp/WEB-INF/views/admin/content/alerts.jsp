<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<title>Анхааруулгууд</title>
</head>
<body>

<jsp:include page="../../includes/adminHeader.jsp"></jsp:include>

<br/>
<div>
<p class="bg-success"><c:out value="${param.info}"></c:out></p>
<p class="bg-danger"><c:out value="${param.error}"></c:out></p>
</div>
<br/>
<a href="${pageContext.request.contextPath}/admin/alert/new" class="btn btn-default">Шинээр анхааруулга үүсгэх</a>
<br/>
<br/>
<!-- <a class="btn btn-default"> Category </a> -->
<!-- <a class="btn btn-primary"> Post </a> -->
<!-- <a class="btn btn-primary"> Alert </a> -->
<!-- <a class="btn btn-danger">Log out</a> -->

<table class="table table-condensed table-hover table-bordered table-striped ">
	<thead>
		<tr>	
			<td>ID / #</td>
			<td>Эхлэх огноо</td>
			<td>Дуусах огноо</td>
			<td>Идэвхтэй эсэх</td>
			<td>Монгол хэлээр</td>
			<td>In English</td>
			<td>Дэлгэрэнгүй</td>
			<td>Өөрчлөх</td>
			<td>Арилгах</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="alert" items="${alerts}" >
		<tr>	
			<td><c:out value="${alert.id}"></c:out></td>
			<td><c:out value="${alert.startDate}"></c:out></td>
			<td><c:out value="${alert.endDate}"></c:out></td>
			<td><c:out value="${alert.activeFlag}"></c:out></td>
			<td><c:out value="${alert.alertMon}"/></td>
			<td><c:out value="${alert.alertEn}"/></td>
			<td><a href="${pageContext.request.contextPath}/admin/alert/view/${alert.id}" class="btn btn-default">Дэлгэрэнгүй</a></td>
			<td><a href="${pageContext.request.contextPath}/admin/alert/edit/${alert.id}" class="btn btn-default">Өөрчлөх</a></td>
			<td><a href="${pageContext.request.contextPath}/admin/alert/remove/${alert.id}" class="btn btn-danger">Арилгах</a></td>
		</tr>
		</c:forEach>
	</tbody>
</table>

<!-- <div class = "row table table-hover"> -->
<!-- 	<div class="col-xs-1">Dugaar</div> -->
<!-- 	<div class="col-xs-2">Category Mon Name</div> -->
<!-- 	<div class="col-xs-2">Category En Name</div> -->
<!-- 	<div class="col-xs-1">Active Flag</div> -->
<!-- 	<div class="col-xs-2">Parent Category</div> -->
<!-- 	<div class="col-xs-1">Detail</div> -->
<!-- 	<div class="col-xs-1">Update</div> -->
<!-- 	<div class="col-xs-1">Remove</div> -->
<!-- </div> -->
<%-- <c:forEach var="category" items="${categories}" > --%>
<!-- <div class = "row">	 -->
<%-- 	<div class="col-xs-1"><c:out value="${category.id}"></c:out></div> --%>
<%-- 	<div class="col-xs-2"><c:out value="${category.nameMon}"></c:out></div> --%>
<%-- 	<div class="col-xs-2"><c:out value="${category.nameEn}"></c:out></div> --%>
<%-- 	<div class="col-xs-1"><c:out value="${category.activeFlag}"></c:out></div> --%>
<%-- 	<div class="col-xs-2"><c:out value="${category.parent.nameMon}"/>|<c:out value="${category.parent.nameEn}"/></div> --%>
<!-- 	<div class="col-xs-1 btn btn-default">Detail</div> -->
<!-- 	<div class="col-xs-1 btn btn-default">Update</div> -->
<!-- 	<div class="col-xs-1 btn btn-default">Remove</div> -->
<!-- </div> -->
<%-- </c:forEach> --%>
</body>
</html>