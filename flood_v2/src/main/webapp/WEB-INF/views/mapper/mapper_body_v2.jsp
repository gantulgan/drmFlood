<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<spring:message var="district" code="map.district" />
<spring:message var="basin" code="map.basin" />
<spring:message var="hazard" code="map.hazard" />
<spring:message var="exposure" code="map.exposure" />
<spring:message var="vulnerability" code="map.vulnerability" />
<spring:message var="risk" code="map.risk" />

<spring:message var="none" code="map.none" />

<spring:message var="arga" code="map.ue.arga" />
<spring:message var="hazrisk01" code="map.ue.01prob" />
<spring:message var="hazrisk1" code="map.ue.1prob" />
<spring:message var="object1" code="map.ue.object1" />

<spring:message var="maptype" code="map.types" />
<spring:message var="overlay" code="map.overlayer" />


<spring:message var="textHazard" code="map.text.hazard" />
<spring:message var="textExposure" code="map.text.exposure" />
<spring:message var="textVulnerability" code="map.text.vulnerability" />
<spring:message var="textRisk" code="map.text.risk" />

<spring:message var="low" code="map.text.low" />
<spring:message var="high" code="map.text.high" />

<spring:message var="legend" code="map.legend" />

<spring:message var="jemr" code="map.author.jemr" />
<spring:message var="usny" code="map.author.usny" />

<spring:message var="savemap" code="map.save.img" />




<style>
<!--
#control label {
	font-weight: lighter;
}

#control label:hover {
	color: orange;
}

.credit {
	text-align: right;
}
-->
</style>
<div class="row" style="color: white; background-color: #333333;">
	<!-- Our app HTML tags here  -->
	<div id="control" class="col-xs-2 control districtControl"
		style="text-align: left;">
		<h5>${maptype}</h5>
		<label><input type="radio" name="layer" value="hazard"
			class="layerControl"> ${hazard}</label><br /> <label><input
			type="radio" name="layer" value="exposure" class="layerControl">
			${exposure}</label><br /> <label><input type="radio" name="layer"
			value="vulnerability" class="layerControl"> ${vulnerability}</label><br />
		<label><input type="radio" name="layer" value="risk"
			class="layerControl"> ${risk}</label><br /> <label><input
			type="radio" name="layer" value="arga" class="layerControl">
			${arga}</label><br /> <label><input type="radio" name="layer"
			value="hazrisk01" class="layerControl"> ${hazrisk01}</label><br /> <label><input
			type="radio" name="layer" value="hazrisk1" class="layerControl">
			${hazrisk1}</label><br /> <label><input type="radio" name="layer"
			value="object1" class="layerControl"> ${object1}</label><br />
		<hr />
		<h5>${overlay}</h5>
		<label><input type="radio" name="borderLayer" value="none"
			class="overlayControl">${none}</label><br /> <label><input
			type="radio" name="borderLayer" value="duureg" class="overlayControl">${district}</label><br />
		<label><input type="radio" name="borderLayer" value="subbasin"
			class="overlayControl">${basin}</label><br />
	</div>
	<div class="col-xs-10">
		<div class="description hazard">
			<h4>${hazard}</h4>
		</div>
		<div class="description exposure">
			<h4>${exposure}</h4>
		</div>
		<div class="description vulnerability">
			<h4>${vulnerability}</h4>
		</div>
		<div class="description risk">
			<h4>${risk}</h4>
		</div>
		<div class="description arga">
			<h4>${arga}</h4>
		</div>
		<div class="description hazrisk01">
			<h4>${hazrisk01}</h4>
		</div>
		<div class="description hazrisk1">
			<h4>${hazrisk1}</h4>
		</div>
		<div class="description object1">
			<h4>${object1}</h4>
		</div>
		<div id="map" style="height: 100%"></div>

		<div class="description hazard">
			<p class="credit">${jemr}</p>
		</div>
		<div class="description exposure">
			<p class="credit">${jemr}</p>
		</div>
		<div class="description vulnerability">
			<p class="credit">${jemr}</p>
		</div>
		<div class="description risk">
			<p class="credit">${jemr}</p>
		</div>
		<div class="description arga">
			<p class="credit">${usny}</p>
		</div>
		<div class="description hazrisk01">
			<p class="credit">${usny}</p>
		</div>
		<div class="description hazrisk1">
			<p class="credit">${usny}</p>
		</div>
		<div class="description object1">
			<p class="credit">${usny}</p>
		</div>
	</div>
</div>

<!-- OpenLayers JS-->
<script src="http://openlayers.org/en/v3.0.0/build/ol.js"
	type="text/javascript"></script>
<!-- Our app code -->
<script
	src="${pageContext.request.contextPath}/resources/js/map/drm_map.js"
	charset="UTF-8"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/map/drm_map_control.js"
	charset="UTF-8"></script>

<div class="row">
	<div class="col-xs-2">
		<br /> <a id="export-map" class="btn btn-primary"><i
			class="icon-download"></i>${savemap}</a>
	</div>
	<div class="col-xs-10">
		${legend}<br/>
		<div class="description hazard">
			<p>${textHazard} ${low} <img src="resources/images/map_desc/color_map.jpg" alt=""> ${high} <p>
		</div>
		<div class="description exposure">
			<p>${textExposure} ${low} <img src="resources/images/map_desc/color_map.jpg" alt=""> ${high} <p>
		</div>
		<div class="description vulnerability">
			<p>${textVulnerability} ${low} <img  src="resources/images/map_desc/color_map.jpg" alt=""> ${high} <p>
		</div>
		<div class="description risk">
			<p>${textRisk} ${low} <img  src="resources/images/map_desc/color_map.jpg" alt=""> ${high} <p>
		</div>
		<div class="description arga">
			<img width="100%"
				src="resources/images/map_desc/tailbar_arga_hemjeeni.jpg" alt="">
		</div>
		<div class="description hazrisk01">
			<img width="100%"
				src="resources/images/map_desc/tailbar_0.1_prob_legend.jpg" alt="">
		</div>
		<div class="description hazrisk1">
			<img width="100%"
				src="resources/images/map_desc/tailbar_1prob_ legend.jpg" alt="">
		</div>
		<div class="description object1">
			<img width="100%"
				src="resources/images/map_desc/tailbar_object.jpg" alt="">
		</div>
	</div>
</div>
