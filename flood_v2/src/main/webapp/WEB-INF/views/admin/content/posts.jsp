<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<script src=<c:url value="/resources/js/bootstrap.min.js"/>></script>
<script src=<c:url value="/resources/jslib/tinymce.min.js"/>></script>
</head>
<body>
post list page


<div class="row">
	<div class="col-xs-1" ></div>
	<div class="col-xs-1 btn btn-primary" >Admin home</div>
	<div class="col-xs-1 btn btn-primary" >Category</div>
	<div class="col-xs-1 btn btn-primary" >Post</div>
	<div class="col-xs-1 btn btn-primary" >Alert</div>
	<div class="col-xs-1"></div>
	<div class="col-xs-1 btn btn-danger" >Log out</div>
</div>
<br/>
<div>
<p class="bg-success"><c:out value="${param.info}"></c:out></p>
<p class="bg-danger"><c:out value="${param.error}"></c:out></p>
</div>
<br/>
<a href="${pageContext.request.contextPath}/admin/category/new" class="btn btn-default">Create new category</a>
<br/>
<br/>

<table class="table table-condensed table-hover ">
	<thead>
		<tr>	
			<td>Dugaar</td>
			<td>Mon title</td>
			<td>Eng title</td>
			<td>Active Flag</td>
			<td>Category</td>
			<td>Mon content</td>
			<td>Eng Content</td>
			<td>Detail</td>
			<td>Update</td>
			<td>Remove</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="post" items="${posts}" >
		<tr>	
			<td><c:out value="${post.id}"></c:out></td>
			<td><c:out value="${post.titleMon}"></c:out></td>
			<td><c:out value="${post.titleEn}"></c:out></td>
			<td><c:out value="${post.activeFlag}"></c:out></td>
			<td><c:out value="${post.category.nameMon}"/>|<c:out value="${post.category.nameEn}"/></td>
			<td><a href="${pageContext.request.contextPath}/admin/post/view/${post.id}" class="btn btn-default">Detail</a></td>
			<td><a href="${pageContext.request.contextPath}/admin/post/edit/${post.id}" class="btn btn-default">Update</a></td>
			<td><a href="${pageContext.request.contextPath}/admin/post/remove/${post.id}" class="btn btn-danger">Remove</a></td>
		</tr>
		</c:forEach>
	</tbody>
</table>

</body>
</html>