<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
<title>Дэлгэрэнгүй</title>
<jsp:include page="/resources/link/links.jsp"></jsp:include>

</head>
<body>
    <div id=background>
		<jsp:include page="${pageContext.request.pathInfo}includes/header.jsp"></jsp:include>
		<div class="container">
		<div id="contentHolder">
			<div class="row" style="margin: auto;">
				<div class="col-sm-3">
					<jsp:include page="${pageContext.request.pathInfo}includes/navbar.jsp"></jsp:include>
				</div>
				<div class="col-sm-9" id="contentWrapper">
					<div id="headProtector">
					<div id="dMSchemeContainer">
					<div class="responsive" style="text-align: left;">
					<%-- 	Post Id : ${post.id}<br/> --%>
						Name Mon : ${post.titleMon}<br/>
						Name Eng : ${post.titleEn}<br/>
						ActiveFlag : ${post.activeFlag}<br/>
						Parent Category : ${post.category.nameMon} | ${post.category.nameEn}<br/>
						Posts : <br/>
						Post Mon | En Title: ${post.titleMon} | ${post.titleEn}  
						<div>Post in Mn: ${post.contentMon}</div>
						<div>Post in En: ${post.contentEn}</div>		
					</div>
					</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<jsp:include page="${pageContext.request.pathInfo}includes/footer.jsp"></jsp:include>
	</div>
</body>
</html>