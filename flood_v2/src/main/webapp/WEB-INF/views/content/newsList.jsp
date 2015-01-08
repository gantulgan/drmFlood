<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

	<%-- <jsp:include page="${pageContext.request.pathInfo}includes/navbar.jsp"></jsp:include> --%>
<div class="container">
<div id="contentHolder">


	<div class="row" style="margin-right: 0px;">
		<div class="col-sm-3">
			<jsp:include page="${pageContext.request.pathInfo}../includes/navbar.jsp"></jsp:include>
		</div>
		<div class="col-sm-9" id="contentWrapper">
			<jsp:include page="${pageContext.request.pathInfo}news/newsList_body.jsp"></jsp:include>
		</div>
	</div>
</div>
</div>