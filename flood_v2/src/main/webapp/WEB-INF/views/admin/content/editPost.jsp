<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<script src=<c:url value="/resources/js/bootstrap.min.js"/>></script>
<script src=<c:url value="/resources/js/tinymce/tinymce.min.js"/>></script>
</head>
<body>
${post.id}
${post.id == '52' ? 'yes':'no'}
<form:form action="." modelAttribute="post" method="POST">
		<div>Mongol garchig <form:input path="titleMon" /></div>
		<div>English garchig <form:input path="titleEn" /></div>
		<form:hidden path="id"/>
		<div>Parent Category 
		<form:select id="categoryCombo" path="category">
			<c:forEach items="${categories}" var="cat">
				<form:option id="${cat.id}"  value="${cat.id}">${cat.nameMon} | ${cat.nameEn }</form:option>
			</c:forEach>
		</form:select>
		
		<div>Mongol content <form:textarea class="texteditor" path="contentMon" /></div>
		
		<div>English content <form:textarea class="texteditor" path="contentEn" /></div>
		</div>
		<div>Active_Flag :<form:checkbox path="activeFlag" /></div>
		<div><input type="submit" value="Update"></div>
	</form:form>
<script type="text/javascript">
tinymce.init({
    selector: "textarea.texteditor",
    fontsize_formats: "8pt 9pt 10pt 11pt 12pt 26pt 36pt",
    theme: 'modern',
    plugins: [
        "advlist autolink lists link image charmap print preview anchor",
        "searchreplace visualblocks code fullscreen",
        "insertdatetime media table contextmenu paste "
    ],
    toolbar: "insertfile undo redo | fontselect | fontsizeselect | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
});

</script>
	
</body>
</html>