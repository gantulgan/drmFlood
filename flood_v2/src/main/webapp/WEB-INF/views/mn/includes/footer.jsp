<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<div class="container">
	<div id="fLinks">
	<div id="fLinkStrip"></div>
	<div class="row">
		<div class="col-md-3 col-sm-6">
			<h5>Нүүр хуудас</h5>
			<div id="sitemap">
				<ul>
					<li><a href="/home.jsp">Нүүр</a></li>
					<li><a href="/login.jsp">Нэвтрэх</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-3 col-sm-6">
			<h5>Мэдээ, Мэдээлэл</h5>
			<div id="sitemap">
				<ul>
					<li><a href="${pageContext.request.pathInfo}content/news/newNews.jsp">Шинэ Мэдээ</a></li>
					<li><a href="${pageContext.request.pathInfo}content/news/emergencyNews.jsp">Шуурхай Мэдээ</a></li>
					<li><a href="${pageContext.request.pathInfo}content/info/guidance.jsp">Зөвлөмж</a></li>
					<li><a href="${pageContext.request.pathInfo}content/info/info.jsp">Анхан шатны тусламж</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-3 col-sm-6">
			<h5>Үерийн эрсдэлийн менежмент</h5>
			<div id="sitemap">
				<ul>
					<li><a href="${pageContext.request.pathInfo}content/strategy/strategy.jsp">Стратеги</a></li>
					<li><a href="${pageContext.request.pathInfo}content/infrastructure/infrastructure.jsp">Дэд бүтэц</a></li>
					<li><a href="${pageContext.request.pathInfo}content/cbdrm/cbdrm.jsp"><abbr title="Community Based Disaster Risk Management">CBDRM</abbr></a></li>
					<li><a href="${pageContext.request.pathInfo}content/institution/institution.jsp">Институци</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-3 col-sm-6">
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
				<!-- <p>Утас: 7011-****</p> -->
		</div>
		</div>
	</div>
	</div>
</div>
<div class="container">
	<div id="fBanner"></div>
	<div id="footer">
		<p>2014он.Зохиогчийн эрхээр хамгаалагдсан&copy;.</p>
		<ul>
			<li><a href="">Нүүр</a></li>
			<li><a href="">Нэвтрэх</a></li>
			<li><a href="">Холбoгдох</a></li>
		</ul>
	</div>
</div>