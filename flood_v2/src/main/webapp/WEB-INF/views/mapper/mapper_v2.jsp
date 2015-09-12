<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="http://openlayers.org/en/v3.0.0/css/ol.css" type="text/css">
<script src="http://parall.ax/parallax/js/jspdf.js"></script>


<div id="contentBody" class="container">
	<hr class="featurette-divider">


	<jsp:include page="${pageContext.request.pathInfo}mapper_body_v2.jsp"></jsp:include>
		
	<div class="row">
		<div class="col-xs-12">
			<br />
			<button id="fullscreen2" type="button" class="btn btn-default">Fullscreen</button>
		</div>
	</div>
	<hr class="featurette-divider">
</div>
<script>
$('#fullscreen2').click(function(){
	console.log('test2');0
	window.open("${pageContext.request.contextPath}/mapper/fullscreen", "Map", ',type=fullWindow,fullscreen,scrollbars=yes');
});
</script>
