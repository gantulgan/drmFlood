<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Нийтлэлүүд</title>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<script src=<c:url value="/resources/js/bootstrap.min.js"/>></script>
<script src=<c:url value="/resources/jslib/tinymce.min.js"/>></script>
</head>
<body>


<jsp:include page="${pageContext.request.pathInfo}../../includes/adminHeader.jsp"></jsp:include>
<br/>
<div>
<p class="bg-success"><c:out value="${param.info}"></c:out></p>
<p class="bg-danger"><c:out value="${param.error}"></c:out></p>
</div>
<br/>
<a href="${pageContext.request.contextPath}/admin/post/new/" class="btn btn-default">Нийтлэл бичих</a>
<br/>
<br/>

<table class="table table-condensed table-hover ">
	<thead>
		<tr>	
			<td>Dugaar</td>
			<td>Гарчиг - Монгол</td>
			<td>Гарчиг - Англи</td>
			<td>Идэвхтэй эсэх</td>
			<td>Ангилал</td>
			<td>Хураангуй - Монголоор</td>
			<td>Хураангуй - Англиар</td>
			<td>Мэдээний агуулга - Монгол</td>
			<td>Мэдээний агуулга - Англи</td>
			<td>Дэлгэрэнгүй</td>
			<td>Өөрчлөх</td>
			<td>Арилгах</td>
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
			<td><c:out value="${post.introMon}"></c:out></td>
			<td><c:out value="${post.introEn}"></c:out></td>
			<td><c:out value="${post.contentMon}"></c:out></td>
			<td><c:out value="${post.contentEn}"></c:out></td>
			<td><a href="${pageContext.request.contextPath}/admin/post/view/${post.id}" class="btn btn-default">Дэлгэрэнгүй</a></td>
			<td><a href="${pageContext.request.contextPath}/admin/post/edit/${post.id}" class="btn btn-default">Өөрчлөх</a></td>
			<td><a href="${pageContext.request.contextPath}/admin/post/remove/${post.id}" class="btn btn-danger">Устгах</a></td>
		</tr>
		</c:forEach>
	</tbody>
</table>

</body>
</html>