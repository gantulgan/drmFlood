<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Нийтлэл нэмэх | Post publish</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<script src=<c:url value="/resources/js/bootstrap.min.js"/>></script>
<script src=<c:url value="/resources/js/tinymce/tinymce.min.js"/>></script>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color: white;">
	<form:form action="." modelAttribute="post" method="POST">
		<div>
			Монгол гарчиг
			<form:input path="titleMon" />
		</div>
		<div>
			Англи гарчиг
			<form:input path="titleEn" />
		</div>
		<div>
			Дээд/харгалзан ангилал
			<form:select path="category">
				<c:forEach items="${categories}" var="cat">
					<form:option value="${cat.id}">${cat.nameMon} | ${cat.nameEn }</form:option>
				</c:forEach>
			</form:select>
			<div class="row">
				<div class="col-xs-6">
					Хураангуй - Монголоор<br />
					<form:textarea class="texteditor" path="introMon" style="height: 100px;" />
				</div>
				<div class="col-xs-6">
					Хураангуй - Англи<br />
					<form:textarea class="texteditor" path="introEn" style="height: 100px;" />
				</div>
			</div>
			<br />
			<div class="row">
				<div class="col-xs-6">
					Мэдээний бие - Монгол<br />
					<form:textarea class="texteditor" path="contentMon"
						style="height: 400px;" />
				</div>
				<div class="col-xs-6">
					Мэдээний бие - Англи<br />
					<form:textarea class="texteditor" path="contentEn"
						style="height: 400px;" />
				</div>
			</div>
		</div>
		<div>
			Идэвхтэй эсэх :<br />
			<form:checkbox path="activeFlag" />
		</div>
		<div>
			<input type="submit" value="Add">
		</div>
	</form:form>
	<script type="text/javascript">
		tinymce.init({
			selector : "textarea.texteditor",
			fontsize_formats : "8pt 9pt 10pt 11pt 12pt 26pt 36pt",
			theme : 'modern',
			plugins : [
					"advlist autolink lists link image charmap print preview anchor",
					"searchreplace visualblocks code fullscreen",
					"insertdatetime media table contextmenu paste " ],
			toolbar : "insertfile undo redo | fontselect | fontsizeselect | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
		});
	</script>
	<br>
	<a href="${pageContext.request.contextPath}/admin/post">буцах</a>
</body>
</html>