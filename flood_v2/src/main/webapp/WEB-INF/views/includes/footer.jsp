<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:message var="homepage" code="footer.homepage" />
<spring:message var="home" code="footer.home" />
<spring:message var="login" code="footer.login" />
<spring:message var="mapper" code="footer.mapper" />
<spring:message var="contact" code="footer.contact" />

<div class="container">
	<!-- <div id="fLinkStrip"></div> -->
	<div id="fLinks" class="row">
		<div class="col-md-2 col-sm-6">
			<h5>${homepage}</h5>
			<div id="sitemap">
				<ul>
					<li><a href="${pageContext.request.contextPath}">${home}</a></li>
					<li><a href="${pageContext.request.contextPath}/login">${login}</a></li>
				</ul>
			</div>
		</div>
		<c:forEach items="${categories}" var="root">
		<div class="col-md-2 col-sm-6">
			<%-- <c:forEach items="${categories}" var="root"> --%>
			<h5>${pageContext.response.locale.language == 'en'? root.nameEn : root.nameMon }</h5>
			<div id="sitemap">
				<ul>
				<c:forEach items="${root.childCategories}" var="child">
					<li><a href="${pageContext.request.contextPath}/category/${child.id}">${pageContext.response.locale.language == 'en' ? child.nameEn : child.nameMon }</a></li>
				</c:forEach>
				</ul>
			</div>
			<%-- </c:forEach> --%>
		</div>
		</c:forEach>
		<div class="col-md-2 col-sm-6">
			<h5>${mapper}</h5>
			<div id="sitemap">
			<ul>
				<li>
				<a href="${pageContext.request.contextPath}/mapper">${mapper}</a>
				</li>
			</ul>
			</div>
		</div>
		<div class="col-md-2 col-sm-6">
			<h5>${contact}</h5>
			<div id="sitemap">
				<ul>
				<li>
				<a href="https://www.facebook.com/ub.gov"><img src="${pageContext.request.contextPath}/resources/images/icons/facebook.png" alt="facebook" style="width: 25px; height: 25px"></img></a>
				</li>
				</ul>
		</div>
		</div>
	</div>
</div>
<div class="container">
	<div id="footer" class="row">
	<div class="col-xs-12">
		<ul>
			<li>&copy;2014</li>
<!-- 			<li>Веб сайтын зохиомж, шийдэлийг:<a href=""><b>TUZOX LLC</b></a></li>
			<li>Беб сайт хөгжүүлсэн:<a href=""><b>TSAHIMUR LLC</b></a></li>
			<li>Дүрсийн тоон боловсруулалт, зураглалыг:<a href=""><b>JEMR LLC</b></a></li>
 -->		</ul>
 </div>
	</div>
</div>