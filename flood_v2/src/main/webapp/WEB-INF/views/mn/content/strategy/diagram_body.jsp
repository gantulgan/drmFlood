

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="${pageContext.request.contextPath}${pageContext.request.pathInfo}includes/links.jsp"></jsp:include>

<div class="container">
<div id="contentBody" >
<div class="row">
<div class="col-md-3" >
<jsp:include page="${pageContext.request.contextPath}${pageContext.request.pathInfo}includes/leftMenu.jsp"></jsp:include>
</div>
<div id="dMSchemeContainer" class="col-md-9">

<div class="dMScheme  responsive">
	<img src="${pageContext.request.contextPath}resources/images/diagram.jpg">
</div>

<!-- 1 monitoring -->
<div id="dmMonitoringArea" class="absolutePos">
</div>
<div id="dmMonitoringAreaText" class="absolutePos">
a continuous and dynamic process to supervise the progress on implementation and analyze DRM impacts and achievements
</div>

<!-- 2 risk -->
<!-- <div id="dmRiskArea" class="absolutePos dmOverArea"> -->
<!-- </div> -->
<!-- <div id="dmRiskAreaText" class="absolutePos dmOverArea"> -->
<!-- testetstetet dfsdf sds dfs dfsd fsdf sdf sd sdsdfsdf sf sdsdf sdfsdfsdf sdfsd fsdf -->
<!-- </div> -->

<!-- 3 preparedness -->
<div id="dmPreparednessArea" class="absolutePos dmOverArea">
</div>
<div id="dmPreparednessAreaText" class="absolutePos">
DRM planning at all levels, capacity building & training, establishing early warning systems, evacuation planning including public awareness & education of disaster risk
</div>


<!-- 4 prevention -->
<div id="dmPreventionArea" class="absolutePos dmOverArea">
</div>
<div id="dmPreventionAreaText" class="absolutePos">
actual on ground development works, contractions and servicesthat meet the needs of residents and their resilience, and comply with policy for sustainable development, disaster risk reduction and climate change response
</div>
<!-- 5 predictive -->
<div id="dmPredictiveArea" class="absolutePos dmOverArea">
</div>
<div id="dmPredictiveAreaText" class="absolutePos">
analyze current and historical hazards to make predictions about future uncertainty ofboth events and exposed objects
</div>

<!-- 6 damage -->
<!-- <div id="dmDamageArea" class="absolutePos dmOverArea"> -->
<!-- </div> -->
<!-- <div id="dmDamageAreaText" class="absolutePos"> -->
<!-- testetstetet dfsdf sds dfs dfsd fsdf sdf sd sdsdfsdf sf sdsdf sdfsdfsdf sdfsd fsdf -->
<!-- </div> -->

<!-- 7 warning -->
<!-- <div id="dmWarningArea" class="absolutePos dmOverArea"> -->
<!-- </div> -->
<!-- <div id="dmWarningAreaText" class="absolutePos"> -->
<!-- testetstetet dfsdf sds dfs dfsd fsdf sdf sd sdsdfsdf sf sdsdf sdfsdfsdf sdfsd fsdf -->
<!-- </div> -->

<!-- 8 recovery -->
<div id="dmRecoveryArea" class="absolutePos dmOverArea">
</div>
<div id="dmRecoveryAreaText" class="absolutePos">
Managing and re-establishing logistical routes
</div>

<!-- <!-- 9 hazard --> -->
<!-- <div id="dmHazardArea" class="absolutePos dmOverArea"> -->
<!-- </div> -->
<!-- <div id="dmHazardAreaText" class="absolutePos"> -->
<!-- testetstetet dfsdf sds dfs dfsd fsdf sdf sd sdsdfsdf sf sdsdf sdfsdfsdf sdfsd fsdf -->
<!-- </div> -->

<!-- 10 readiness -->
<div id="dmReadinessArea" class="absolutePos dmOverArea">
</div>
<div id="dmReadinessAreaText" class="absolutePos">
operative communication, evacuation and registration
</div>

<!-- 11 response -->
<div id="dmResponseArea" class="absolutePos dmOverArea">
</div>
<div id="dmResponseAreaText" class="absolutePos">
Search & rescue and burying the dead
</div>

<script type="text/javascript">
	$(function(){
		prepareDiagramPanels();
	});
</script>
</div>
</div>
</div>
</div>