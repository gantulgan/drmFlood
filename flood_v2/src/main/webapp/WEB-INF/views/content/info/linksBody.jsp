

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="${pageContext.request.contextPath}${pageContext.request.pathInfo}includes/links.jsp"></jsp:include>
<div id="headProtector">
<div class="container">
<div id="contentBody" >
<hr class="featurette-divider"/>
<div id="location" class="container">
	<a href="/home.jsp"><span class="label label-default">Нүүр</span></a>
	<a href="/info.jsp"><span class="label label-primary">Мэдээлэл</span></a>
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

<div class="responsive" style="text-align: left;">
	<p>Холбогдох мэдээлэлүүдийг доорх хаягуудаар орж авна уу.</p>
	<ul>
		<li><a href="http://www.ubservice.mn/" >Улаанбаатар хотын захирагчийн алба</a></li>
		<li><a href="http://nema.gov.mn/" >Онцгой байдлын ерөнхий газар</a></li>
		<li><a href="http://www.worldbank.org/" >Дэлхийн банк</a></li>
	</ul>
</div>
</div>
</div>
</div>
</div>
</div>