<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>

<div class="row">
	<div class="col-xs-1 btn btn-primary" >Admin home</div>
	<div class="col-xs-1 btn btn-primary" >Category</div>
	<div class="col-xs-1 btn btn-primary" >Post</div>
	<div class="col-xs-1 btn btn-primary" >Alert</div>
	<div class="col-xs-7"></div>
	<div class="col-xs-1 btn btn-danger" >Log out</div>
</div>

<!-- <a class="btn btn-default"> Category </a> -->
<!-- <a class="btn btn-primary"> Post </a> -->
<!-- <a class="btn btn-primary"> Alert </a> -->
<!-- <a class="btn btn-danger">Log out</a> -->

<table class="table table-condensed table-hover ">
	<thead>
		<tr>	
			<td>Dugaar</td>
			<td>Category Name</td>
			<td>Active Flag</td>
			<td>Parent Id</td>
			<td>Update</td>
			<td>Remove</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="category" items="${categories}" >
		<tr>	
			<td><c:out value="${category.id}"></c:out></td>
			<td><c:out value="${category.categoryName}"></c:out></td>
			<td><c:out value="${category.activeFlag}"></c:out></td>
			<td><c:out value="${category.parent.categoryName}"></c:out></td>
			<td><a href="#" class="btn btn-default">Update</a></td>
			<td><a href="#" class="btn btn-danger">Remove</a></td>
		</tr>
		</c:forEach>
	</tbody>
	
</table>

<!-- <div class = "row"> -->
<!-- 	<div class="col-xs-1">Dugaar</div> -->
<!-- 	<div class="col-xs-5">Category Name</div> -->
<!-- 	<div class="col-xs-1">Active Flag</div> -->
<!-- 	<div class="col-xs-1">Parent Id</div> -->
<!-- 	<div class="col-xs-1">Update</div> -->
<!-- 	<div class="col-xs-1">Remove</div> -->
<!-- </div> -->
<%-- <c:forEach var="category" items="${categories}" > --%>
<!-- <div class = "row">	 -->
<%-- 	<div class="col-xs-1"><c:out value="${category.id}"></c:out></div> --%>
<%-- 	<div class="col-xs-5"><c:out value="${category.categoryName}"></c:out></div> --%>
<%-- 	<div class="col-xs-1"><c:out value="${category.activeFlag}"></c:out></div> --%>
<%-- 	<div class="col-xs-1"><c:out value="${category.parentId}"></c:out></div> --%>
<!-- 	<div class="col-xs-1 btn btn-default">Update</div> -->
<!-- 	<div class="col-xs-1 btn btn-default">Remove</div> -->
<!-- </div> -->
<%-- </c:forEach> --%>
</body>
</html>