

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="${pageContext.request.contextPath}${pageContext.request.pathInfo}includes/links.jsp"></jsp:include>

<div class="container">
<div id="contentBody" >
<div id="location" class="container">
	<a href="/home.jsp"><span class="label label-default">Нүүр</span></a>
	<a href="/management.jsp"><span class="label label-primary">Менежмент</span></a>
	<a href=""><span class="label label-success">
	<%=
	/* URLUtil.typeConvertor(request.getParameter("type")) */
	%></span></a>
</div>
<hr class="featurette-divider"/>
<div class="row">
<div class="col-md-3" >
<jsp:include page="${pageContext.request.contextPath}${pageContext.request.pathInfo}includes/leftMenu.jsp"></jsp:include>
</div>
<div id="dMSchemeContainer" class="col-md-9">
<h4>Model for integrated governance</h4>
<p style="text-align: justify; padding-right: 20px">
The model is a good practicemodelfrom USFederal Government that utilizes Enterprise Architecture (EA), which integrates strategic drivers, business requirements, and technology solutions, and promotes increased levels of mission effectiveness by standardizing the development and use of architectures within and between Federal Agencies. This practice includes principles for using EA to help agencies eliminate waste and duplication, increase shared services, close performance gaps, and promote engagement among government, industry and citizens.
The EA governance model identifies the planning, decision-making, and oversight processes and groups that determine how the EA is developed, verified, versioned, used, and sustained over time with respect to measures of completeness, consistency, coherence, and accuracy from the perspectives of all stakeholders. In addition, it provides a view of the interrelationships between federal guidance, agency governance processes, and the programs that implement that guidance in an integrated manner. 
This governance model (Figure 19) begins in the upper left quadrant with law and policy; moves to the upper right quadrant where high-level agency directives are represented; moves down to the lower right where operations and planning/management functions are reflected, and finally to the lower left quadrant where architecture and standards are reflected. The model finishes in the center where portfolio and investment management occurs through a number of planning and decision-making bodies. The harmonizing/standards role of EA is depicted as being driven by law and policy and delivering authoritative reference information and design alternatives for the capital planning process in the center.
</p>
<div class="responsive">
	<img src="${pageContext.request.contextPath}resources/images/institution.png" style="height: 100%; width: 100%;">
</div>


</div>
</div>
</div>
</div>