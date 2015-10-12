<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:message var="changeLang" code="header.changeLang" />
<spring:message var="home" code="header.home" />
<spring:message var="mapper" code="header.mapper" />
<spring:message var="contact" code="header.contact" />
<spring:message var="login" code="header.login" />
<spring:message var="ubmayor" code="header.alt.ubmayor" />
<spring:message var="worldbank" code="header.alt.worldbank" />
<spring:message var="japanemb" code="header.alt.japanemb" />

<%-- <jsp:include page="feedback.jsp"></jsp:include> --%>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Цэс</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <div style="display: inline-block;">
      	<div class="hidden-xs hidden-sm" style="display: inline-block;">
	      <a class="navbar-brand" href="http://www.ubservice.mn/">
	      	<img  class="headerLogo" alt="${ubmayor}"  title="${ubmayor}" src="${pageContext.request.contextPath}/resources/images/icons/ub_logo_.png"/>
	      </a>
	      <a class="navbar-brand" href="http://www.worldbank.org/" >
	      	<img  class="headerLogo" style="background-color: white; padding: 3px;" alt="${worldbank }" title="${worldbank }" src="${pageContext.request.contextPath}/resources/images/icons/wb_logo.svg"/>
	      </a>
	      <a class="navbar-brand" href="http://www.mn.emb-japan.go.jp/">
	      	<img  class="headerLogo" alt="${japanemb }" title="${japanemb }" src="${pageContext.request.contextPath}/resources/images/icons/japan.png" />
	      </a>
      	</div>
      </div>
    </div>
    <div id="navbar" class="navbar-collapse collapse">
    <div id="profile">
      <form class="navbar-form navbar-right" role="form">
		<div class="form-group">
            <a href="${pageContext.request.contextPath}/">${home}</a>
        </div>
        <div class="form-group">                
            <a href="${pageContext.request.contextPath}/mapper">${mapper}</a>
        </div>
<%--         <div class="form-group">                
            <a href="${pageContext.request.contextPath}/info">${contact}</a>
        </div> --%>
        <div class="form-group">                
			<a href="${pageContext.request.contextPath}/admin/login">${login}</a>
  		</div>
  		<div class="form-group">
  			<c:if test="">
  			</c:if>
			<a href="?lang=${pageContext.response.locale.language == 'en' ? 'mn' : 'en'}">${changeLang}</a>
  		</div>
      </form>
    </div>  
    </div><!--/.navbar-collapse -->
  </div>
</nav>
<div id="headProtector">
</div>