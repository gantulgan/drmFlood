<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:message var="moredetail" code="common.moredetail" />
<spring:message var="management" code="carousel.management" />
<spring:message var="management_desc" code="carousel.management.desc" />
<spring:message var="news" code="carousel.news" />
<spring:message var="news_desc" code="carousel.news.desc" />
<spring:message var="map" code="carousel.map" />
<spring:message var="map_desc" code="carousel.map.desc" />
<spring:message var="info" code="carousel.info" />
<spring:message var="info_desc" code="carousel.info.desc" />

<div class="container">
<div class="row carousel-holder" style="padding: -15px;">
     <div class="col-md-12" style="padding-left: 0px; padding-right: 0px;">
         <div id="homeHeader" class="carousel slide" data-ride="carousel">
             <div class="carousel-inner">
                 <div class="item active">
                     <div>
                     	 <h1>${management }</h1>
						 <p>${management_desc }</p>
						 <%-- <p><a class="" href="${pageContext.request.contextPath}/management" role="button">${moredetail}</a></p> --%>
                     </div>
                 </div>
                 <div class="item">
                      <div>
                     	<h1>${news }</h1>
						<p>${news_desc }</p>
						<%-- <p><a class="" href="${pageContext.request.contextPath}/news" role="button">${moredetail }</a></p> --%>
                     </div>
                 </div>
                 <div class="item" >
                      <div>
                     	<h1>${map }</h1>
						<p>${map_desc }</p>
						<%-- <p><a class="" href="${pageContext.request.contextPath}/mapper" role="button">${moredetail }</a></p> --%>
                     </div>
                 </div>
                 <div class="item" >
                      <div>
                     	<h1>${info }</h1>
						<p>${info_desc }</p>
						<%-- <p><a class="" href="${pageContext.request.contextPath}/information" role="button">${moredetail }</a></p> --%>
                     </div>
                 </div>
             </div>
             <div style="margin-top: 10px;">
	             <ol class="carousel-indicators" >
	                 <li data-target="#homeHeader" data-slide-to="0" class="active"></li>
	                 <li data-target="#homeHeader" data-slide-to="1"></li>
	                 <li data-target="#homeHeader" data-slide-to="2"></li>
	                 <li data-target="#homeHeader" data-slide-to="3"></li>
	             </ol>
             </div>
             <a class="left carousel-control" href="#homeHeader" data-slide="prev">
                 <span class="glyphicon glyphicon-chevron-left"></span>
             </a>
             <a class="right carousel-control" href="#homeHeader" data-slide="next">
                 <span class="glyphicon glyphicon-chevron-right"></span>
             </a>
         </div>
         <div class="headerWarning" ><marquee scrollamount="4"> 2014.07.01 13:29 > THE PUBLIC REPORTED WATER FLOWING OVER A COUPLE OF PAVED ROADS NEAR WATERVILLAGE, UB. </marquee></div>
     </div>
</div>
</div>        