<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="headProtector">
<div id="dMSchemeContainer">

<c:forEach var="post" items="${posts}">	
<div class="responsive" style="text-align: left;">
	<div class="row" id="newsTitle"><h3><c:out value="${post.titleMon}"></c:out></h3></div>
	<hr class="featurette-divider">
    <div class="row featurette">
		<div class="col-md-3 hidden-sm hidden-xs">
        	<img class="img-circle img-responsive" id="thumbnail" src="${pageContext.request.pathInfo }resources/images/thumbnail/news.png" alt="" >
	    </div>
	    <div class="col-md-9">
	    	<p>${post.contentMon}</p>
	        <a href="${pageContext.request.pathInfo }./news/view/${post.id}">Дэлгэрэнгүй</a>
	    </div>
   	</div>
</div>
</c:forEach>
</div>
</div>
