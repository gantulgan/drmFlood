<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<div class="container">
<div id="contentHolder">
	<div class="row">
		<div class="col-sm-3">
			<jsp:include page="${pageContext.request.pathInfo}../includes/navbar.jsp"></jsp:include>
		</div>
		<div class="col-sm-9" id="contentWrapper">
			<jsp:include page="${pageContext.request.pathInfo}news/newsDetail_body.jsp"></jsp:include>
		</div>
	</div>
</div>
</div>