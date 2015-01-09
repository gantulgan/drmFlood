<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container">
	<div id="fLinks">
	<!-- <div id="fLinkStrip"></div> -->
	<div class="row">
		<div class="col-md-2 col-sm-6">
			<h5>Нүүр хуудас</h5>
			<div id="sitemap">
				<ul>
					<li><a href="${pageContext.request.contextPath}">Нүүр</a></li>
					<li><a href="${pageContext.request.pathInfo}login">Нэвтрэх</a></li>
				</ul>
			</div>
		</div>
		<c:forEach items="${categories}" var="root">
		<div class="col-md-2 col-sm-6">
			<%-- <c:forEach items="${categories}" var="root"> --%>
			<h5>${root.nameMon }</h5>
			<div id="sitemap">
				<ul>
				<c:forEach items="${root.childCategories}" var="child">
					<li><a href="${pageContext.request.contextPath}/content&${child.id}">${child.nameMon}</a></li>
				</c:forEach>
				</ul>
			</div>
			<%-- </c:forEach> --%>
		</div>
		</c:forEach>
		<div class="col-md-2 col-sm-6">
			<h5>Газрын зураг</h5>
			<div id="sitemap">
			<ul>
				<li>
				<a href="${pageContext.request.contextPath}/mapper">Газрын зураг</a>
				</li>
			</ul>
			</div>
		</div>
		<div class="col-md-2 col-sm-6">
			<h5>Холбоо барих</h5>
			<div id="sitemap">
				<ul>
				<li>
				<a href=""><img src="resources/images/icons/email.png" alt="email" style="width: 25px; height: 25px"></img></a>
				<a href="https://www.facebook.com"><img src="resources/images/icons/facebook.png" alt="facebook" style="width: 25px; height: 25px"></img></a>
				</li>
				<li>
				<a href="https://plus.google.com/"><img src="resources/images/icons/googleplus.png" alt="google+" style="width: 25px; height: 25px"></img></a>
				<a href="https://www.twitter.com"><img src="resources/images/icons/twitter.png" alt="twitter" style="width: 25px; height: 25px"></img></a>
				</li>
				<li>
				<a href="https://www.instagram.com"><img src="resources/images/icons/instagram.png" alt="instagram" style="width: 25px; height: 25px"></img></a>
				<a href="http://www.youtube.com/watch?v=rnHX-SJIvG0"><img src="resources/images/icons/youtube.png" alt="youtube" style="width: 25px; height: 25px"></img></a>
				</li>
				</ul>
		</div>
		</div>
	</div>
	</div>
</div>
<div class="container">
	<div id="footer">
		<ul>
			<li>2014он &copy;</li>
<!-- 			<li>Веб сайтын зохиомж, шийдэлийг:<a href=""><b>TUZOX LLC</b></a></li>
			<li>Беб сайт хөгжүүлсэн:<a href=""><b>TSAHIMUR LLC</b></a></li>
			<li>Дүрсийн тоон боловсруулалт, зураглалыг:<a href=""><b>JEMR LLC</b></a></li>
 -->		</ul>
	</div>
</div>