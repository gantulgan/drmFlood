<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
<title>Нүүр</title>
<jsp:include page="/resources/link/links.jsp"></jsp:include>
<!-- <script>
	$(function() {
		loadTab()
    });
</script>
 -->
</head>
<body>
    <div id="background">
		<jsp:include page="${pageContext.request.pathInfo}includes/header.jsp"></jsp:include>
		<jsp:include page="${pageContext.request.pathInfo}includes/homeHeader.jsp"></jsp:include>
		<jsp:include page="${pageContext.request.pathInfo}content/homeBody.jsp"></jsp:include>
		<jsp:include page="${pageContext.request.pathInfo}includes/homeFooter.jsp"></jsp:include>
	</div>	
</body>
</html>