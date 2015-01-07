<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<div class="container">
	<div class="row">
	<div class="col-md-12">	
		<div class="news_category_title">
			<h1><img class="title_img" alt="Мэдээний зураг" src="resources/images/news.png" /> Мэдээ мэдээлэл</h1>
		</div>
	</div>
	</div>
	<div class="row">
	<div class="col-md-6">
		<div class="news_category"><h2>Мэдээ мэдээлэл</h2></div>
		
		<jsp:include page="news_brief.jsp">
			<jsp:param value="resources/images/capacity.jpeg" name="img_link"/>
			<jsp:param name="news_title" value="Medee 1" />
			<jsp:param name="news_brief"
				value="Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor " />
		</jsp:include>

		<jsp:include page="news_brief.jsp">
			<jsp:param value="resources/images/building.jpeg" name="img_link"/>
			<jsp:param name="news_title" value="Medee 2" />
			<jsp:param name="news_brief"
				value="Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor " />
		</jsp:include>
	</div>
	<div class="col-md-6">
		<div class="news_category"><h2>Үерийн эрсдэлтэй бүсүүд</h2></div>
		<jsp:include page="news_brief.jsp">
			<jsp:param value="resources/images/beach.jpeg" name="img_link"/>
			<jsp:param name="news_title" value="Bus 1" />
			<jsp:param name="news_brief"
				value="Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor " />
		</jsp:include>
		<jsp:include page="news_brief.jsp">
			<jsp:param value="resources/images/galaxy.jpeg" name="img_link"/>
			<jsp:param name="news_title" value="Bus 2" />
			<jsp:param name="news_brief"
				value="Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor " />
		</jsp:include>
	</div>
	</div>
	<div class="news_category_title">
		<h1><img class="title_img" alt="Мэдээний зураг" src="resources/images/news.png" /> Гамшгийн менежмент</h1>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="news_category"><h2>Нутгийн иргэнийн оролцоо</h2></div>
			<jsp:include page="news_brief.jsp">
				<jsp:param value="resources/images/contrib.jpeg" name="img_link"/>
				<jsp:param name="news_title" value="Medee 1" />
				<jsp:param name="news_brief"
					value="Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor " />
			</jsp:include>

			<jsp:include page="news_brief.jsp">
				<jsp:param value="resources/images/abc.jpeg" name="img_link"/>
				<jsp:param name="news_title" value="Medee 2" />
				<jsp:param name="news_brief"
					value="Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor " />
			</jsp:include>
		</div>
		<div class="col-md-6">
			<div class="news_category"><h2>Үерийн эрсдлийн менежмент</h2></div>
			<jsp:include page="news_brief.jsp">
				<jsp:param value="resources/images/manage1.jpeg" name="img_link"/>
				<jsp:param name="news_title" value="Bus 1" />
				<jsp:param name="news_brief"
					value="Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor " />
			</jsp:include>
			<jsp:include page="news_brief.jsp">
				<jsp:param value="resources/images/manage2.jpeg" name="img_link"/>
				<jsp:param name="news_title" value="Bus 2" />
				<jsp:param name="news_brief"
					value="Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor " />
			</jsp:include>
		</div>
		</div>
</div>