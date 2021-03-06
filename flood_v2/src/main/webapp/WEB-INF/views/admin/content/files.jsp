<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<title>Файл болон баримтууд</title>
</head>
<body>

<jsp:include page="../../includes/adminHeader.jsp"></jsp:include>

<br/>
<div>
<p class="bg-success"><c:out value="${param.info}"></c:out></p>
<p class="bg-danger"><c:out value="${param.error}"></c:out></p>
</div>
<br/>
<a href="${pageContext.request.contextPath}/admin/upload" class="btn btn-default">Upload</a>
<br/>
<br/>

<table class="table table-condensed table-hover table-bordered table-striped ">
	<thead>
		<tr>	
			<td>Файлын нэр</td>
			<!-- <td>Link</td> -->
			<td>Хуулж авах</td>
			<td>Устгах</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="file" items="${files}" >
		<tr>	
			<td><c:out value="${file}"></c:out></td>
			<%-- <td><c:out value="${file.link}"></c:out></td> --%>
			<td><a href="${pageContext.request.contextPath}/download/do/${file}">Холбоос</a></td>
			<td><a href="${pageContext.request.contextPath}/admin/file/remove/${file}" class="btn btn-danger">Устгах</a></td>
		</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>