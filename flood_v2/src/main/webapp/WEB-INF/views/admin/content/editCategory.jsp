<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ангилал засах</title>
</head>
<body>
<form:form action="." modelAttribute="category" method="POST">
		<div>Монгол нэр <form:input path="nameMon" /></div>
		<div>Англи нэр <form:input path="nameEn" /></div>
			<form:hidden path="id"/>
		<div>Дээд/хамаарагдах ангилал 
		<form:select path="parent" >
			<form:option value="">Root</form:option>
			<c:forEach items="${categories}" var="cat">
				
				<form:option  value="${cat.id}" > ${cat.nameMon} | ${cat.nameEn }</form:option>
			</c:forEach>
<%-- 			<form:options items="${categories}" itemValue="id" itemLabel="${nameEn}${nameMon}"/> --%>
		</form:select>
		</div>
		<div>Идэвхтэй эсэх :<form:checkbox path="activeFlag" /></div>
		<div><input type="submit" value="Update"></div>
</form:form>
	
	<br>
	<a href="${pageContext.request.pathInfo}../">буцах</a>
</body>
</html>