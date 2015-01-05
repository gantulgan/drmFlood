<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="map_control_view">
	<div id="mapControls">
		<div id="control_district">
			<jsp:include page="${pageContext.request.pathInfo}mapper/mapper_district_control.jsp"></jsp:include>
		</div>
		<div id="control_basin">
			<jsp:include page="${pageContext.request.pathInfo}mapper/mapper_basin_control.jsp"></jsp:include>
		</div>
	</div>
	<script type="text/javascript">
		loadMapperSelector();
		enableDistrictController();
	</script>
</div>
