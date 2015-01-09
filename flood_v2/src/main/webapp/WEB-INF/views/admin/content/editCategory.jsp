<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
this is edit category
${category.id == '53' ? 'selected=\'selected\'':''}
<form:form action="." modelAttribute="category" method="POST">
		<div>Mongol ner <form:input path="nameMon" /></div>
		<div>English ner <form:input path="nameEn" /></div>
			<form:hidden path="id"/>
		<div>Parent Category 
		<form:select path="parent" tabin>
			<form:option value="">Root</form:option>
			<c:forEach items="${categories}" var="cat">
				
				<form:option  value="${cat.id}" > ${cat.nameMon} | ${cat.nameEn }</form:option>
			</c:forEach>
<%-- 			<form:options items="${categories}" itemValue="id" itemLabel="${nameEn}${nameMon}"/> --%>
		</form:select>
		</div>
		<div>Active_Flag :<form:checkbox path="activeFlag" /></div>
		<div><input type="submit" value="Update"></div>
</form:form>
	
	<br>
	<a href="${pageContext.request.pathInfo}../">back</a>
</body>
</html>