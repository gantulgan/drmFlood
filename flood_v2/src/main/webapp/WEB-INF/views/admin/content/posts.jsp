<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Нийтлэлүүд</title>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<script src=<c:url value="/resources/js/bootstrap.min.js"/>></script>
<script src=<c:url value="/resources/js/tinymce/tinymce.min.js"/>></script>
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

<c:set var="currentPage" value="0" />
<c:if test="${param.page.matches('[0-9]+')}">
    <c:set var="currentPage" value="${param.page}" />
</c:if>
Одоогийн хуудас : ${currentPage + 1}<br/>
хуудас : <c:forEach var="page" begin="1" end="${pages}" >
    <c:choose>
        <c:when test="${page - 1 == currentPage}">
            <strong>${page}</strong>
        </c:when>
        <c:otherwise>
            <a href="?page=${page-1}">${page}</a>
        </c:otherwise>
    </c:choose>

</c:forEach>
<table class="table table-condensed table-hover table-bordered table-striped ">
	<thead>
		<tr>	
			<td>№</td>
			<td>Гарчиг - Монгол</td>
			<td>Гарчиг - Англи</td>
			<td>Ангилал</td>
			<td>Хураангуй - Монголоор <br/>(Эхний 200 тэмдэгт)</td>
			<td>Хураангуй - Англиар <br/>(Эхний 200 тэмдэгт)</td>
			<td>Мэдээний агуулга - Монгол <br/>(Эхний 200 тэмдэгт)</td>
			<td>Мэдээний агуулга - Англи <br/>(Эхний 200 тэмдэгт)</td>
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
			<td><c:out value="${post.category.nameMon}"/>|<c:out value="${post.category.nameEn}"/></td>
			<td><c:out value="${fn:substring(post.introMon, 0, 200)}"></c:out></td>
			<td><c:out value="${fn:substring(post.introEn, 0, 200)}"></c:out></td>
			<td><c:out value="${fn:substring(post.contentMon, 0, 200)}"></c:out></td>
			<td><c:out value="${fn:substring(post.contentEn, 0, 200)}"></c:out></td>
			<td><a href="${pageContext.request.contextPath}/admin/post/view/${post.id}" class="btn btn-default">Дэлгэрэнгүй</a></td>
			<td><a href="${pageContext.request.contextPath}/admin/post/edit/${post.id}" class="btn btn-default">Өөрчлөх</a></td>
			<td><a href="${pageContext.request.contextPath}/admin/post/remove/${post.id}" class="btn btn-danger">Устгах</a></td>
		</tr>
		</c:forEach>
	</tbody>
</table>

</body>
</html>