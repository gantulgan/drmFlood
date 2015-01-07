<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="">
	<div class="row" id="mapMenu">
		<div class="col-xs-6 mapTopMenu mapTopDistrictMenu" id="district_control_select">ДҮҮРЭГ</div>
		<div class="col-xs-6 mapTopMenu mapTopBasinMenu" id="basin_control_select">АЙ САВ		
		</div>
	</div>
	<div class="row"  id="mapMenu">
		<div class="col-md-2 mapSubMenu" id="duuregBGD">Баянгол</div>
		<div class="col-md-2 mapSubMenu" id="duuregBZD">Баянзүрх</div>
		<div class="col-md-2 mapSubMenu" id="duuregCHD">Чингэлтэй</div>
		<div class="col-md-2 mapSubMenu" id="duuregHUD">Хан-Уул</div>
		<div class="col-md-2 mapSubMenu" id="duuregSHD">Сонгино Хайрхан</div>
		<div class="col-md-2 mapSubMenu" id="duuregSBD">Сүхбаатар</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<jsp:include page="${pageContext.request.pathInfo}mapper_controller.jsp"></jsp:include>
		</div>
		<div class="col-md-9">	
			<jsp:include page="${pageContext.request.pathInfo}mapper_view.jsp"></jsp:include>
		</div>
	</div>
	</div>
	<!-- 
	<div class="mapper_area">
	
	<div class="row-fluid">
		<div class="span6">
			<div id="district_control_select" class="mapTopMenu mapTopDistrictMenu">
				<font style="vertical-align: middle;" >ДҮҮРЭГ</font>
			</div>
		</div>
		<div class="span6">  
			<div id="basin_control_select" class="mapTopMenu mapTopBasinMenu">
				<font style="vertical-align: middle; padding-top: 5px;" >САВ ГАЗАР</font>
			</div>
		</div>
	</div>
	<div class="row districtSubMenu">
		<div class="col-md-2" style="padding: 0 0 0 0;">
			<div id="duuregBGD" class="mapSubMenu">Баянгол</div>
		</div>
		<div class="col-md-2" style="padding: 0 0 0 0;">
			<div id="duuregBZD" class="mapSubMenu">Баянзүрх</div>
		</div>
		<div class="col-md-2" style="padding: 0 0 0 0;">
			<div id="duuregCHD" class="mapSubMenu">Чингэлтэй</div>
		</div>
		<div class="col-md-2" style="padding: 0 0 0 0;">
			<div id="duuregHUD" class="mapSubMenu">Хан-Уул</div>
		</div>
		<div class="col-md-2" style="padding: 0 0 0 0;">
			<div id="duuregSHD" class="mapSubMenu">Сонгино Хайрхан</div>
		</div>
		<div class="col-md-2" style="padding: 0 0 0 0;">
			<div id="duuregSBD" class="mapSubMenu">Сүхбаатар</div>
		</div>
	</div>
	<div class="row-fluid basinSubMenu" style="display: none;">
		<div class="col-md-1" style="padding: 0 0 0 0;">
			<div id="sav1" class="mapSubMenu">Сав газар 1</div>
		</div>
		<div class="col-md-1" style="padding: 0 0 0 0;">
			<div id="sav2" class="mapSubMenu">Сав газар 2</div>
		</div>
		<div class="col-md-1" style="padding: 0 0 0 0;">
			<div id="sav3" class="mapSubMenu">Сав газар 3</div>
		</div>
		<div class="col-md-1" style="padding: 0 0 0 0;">
			<div id="sav4" class="mapSubMenu">Сав газар 4</div>
		</div>
		<div class="col-md-1" style="padding: 0 0 0 0;">
			<div id="sav5" class="mapSubMenu">Сав газар 5</div>
		</div>
		<div class="col-md-1" style="padding: 0 0 0 0;">
			<div id="sav6" class="mapSubMenu">Сав газар 6</div>
		</div>
		<div class="col-md-1" style="padding: 0 0 0 0;">
			<div id="sav7" class="mapSubMenu">Сав газар 7</div>
		</div>
		<div class="col-md-1" style="padding: 0 0 0 0;">
			<div id="sav8" class="mapSubMenu">Сав газар 8</div>
		</div>
		<div class="col-md-1" style="padding: 0 0 0 0;">
			<div id="sav9" class="mapSubMenu">Сав газар 9</div>
		</div>
		<div class="col-md-1" style="padding: 0 0 0 0;">
			<div id="sav10" class="mapSubMenu">Сав газар 10</div>
		</div>
		<div class="col-md-1" style="padding: 0 0 0 0;">
			<div id="sav11" class="mapSubMenu">Сав газар 11</div>
		</div>
		<div class="col-md-1" style="padding: 0 0 0 0;">
			<div id="sav12" class="mapSubMenu">Сав газар 12</div>
		</div>
	</div>
 -->
	
	<div class="row">
	<div class="col-md-3" style="padding-right: 0">
		<jsp:include page="${pageContext.request.pathInfo}mapper_controller.jsp"></jsp:include>
	</div>
	<div class="col-md-9" style="padding-left: 0">	
		<jsp:include page="${pageContext.request.pathInfo}mapper_view.jsp"></jsp:include>
	</div>
	</div>
	</div>

<script type="text/javascript">
	$(function() {
		$("map").hide();
		$("map_loading").show();
		loadMap();
		loadTab();
		prepareFullScreen();
		prepareMapSubMenu();
		$('#duuregBGD').trigger('click');
	});
</script>