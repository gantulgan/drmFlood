<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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

<div style="text-align: left;">
	<div ><h2>Төслийн танилцуулга</h2></div>
	<p>Энэхүү төсөл нь Улаанбаатар хотын үерийн эрсдлийг тодорхойлон, гамшигаас сэргийлэх нэгдсэн сан үүсгэхэд зориулагдсан болно. 
		Дэлгэрэнгүй мэдээлэлийг авахыг хүсвэл бидэндтэй холбогдоорой.</p>
	<div><h2> Сүүлийн 100 жилд Улаанбаатар хотод тохиолдсон үерүүд</h2></div>
		<a href="${pageContext.request.contextPath}${pageContext.request.pathInfo}content/info/ubflood.xls">Дэлгэрэнгүй мэдээлэл татаж авах.</a>
	<div><h2> Нэр томьёоны тайлбар:</h2></div>
	<div class="row">
		<div class="col-lg-5"><h4>English</h4></div>
		<div class="col-lg-5"><h4>Монгол</h4></div>
		<div class="col-lg-2"><h4>Товчлол</h4></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Flood:</strong><p>A temporary condition of land inundation by overflow of water, rapidly accumlated and escaped or been released from normal confines</p></div>
		<div class="col-lg-5"><strong>Үер:</strong></div>
		<div class="col-lg-2"><strong>F</strong></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Flood hazard:</strong><p>A dangerous situation caused by flood water</p></div>
		<div class="col-lg-5"><strong>Үерийн аюул</strong></div>
		<div class="col-lg-2"><strong>H</strong></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Flood hazard assessment:</strong><p></p></div>
		<div class="col-lg-5"><strong>Үерийн аюулын үнэлгээ</strong></div>
		<div class="col-lg-2"></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Flood hazard map:</strong><p>A tool for visualization of spatial distribution of flood situation and hazard factors</p></div>
		<div class="col-lg-5"><strong>Үерийн аюулын зураг</strong></div>
		<div class="col-lg-2"></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Flood risk:</strong><p></p></div>
		<div class="col-lg-5"><strong>Үерийн эрсдэл</strong></div>
		<div class="col-lg-2"><strong>R</strong></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Flood risk assessment:</strong><p></p></div>
		<div class="col-lg-5"><strong>Үерийн эрсдэлийн үнэлгээ</strong></div>
		<div class="col-lg-2"></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Flood risk map:</strong><p></p></div>
		<div class="col-lg-5"><strong>Үерийн эрсдэлийн зураг</strong></div>
		<div class="col-lg-2"></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Exposure:</strong><p></p></div>
		<div class="col-lg-5"><strong>Өртөнги</strong></div>
		<div class="col-lg-2"><strong>E</strong></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Vulnerability:</strong><p></p></div>
		<div class="col-lg-5"><strong>Эмзэг байдал</strong></div>
		<div class="col-lg-2"><strong>V</strong></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Resiliency:</strong><p></p></div>
		<div class="col-lg-5"><strong>Тэсэх чадавхи</strong></div>
		<div class="col-lg-2"></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Floodplain:</strong><p></p></div>
		<div class="col-lg-5"><strong>Үерт автах газар</strong></div>
		<div class="col-lg-2"></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Flood risk management:</strong><p>The holistic and systematic procedure to deal with uncertainty and reduce flood risk by promoting the balanced implementation of multiple measures</p></div>
		<div class="col-lg-5"><strong>Үерийн эрсдэлийн менежмент:</strong><p>Тодорхойгүй байдлыг тооцон, олон талт арга хэмжээг тэнцвэртэй хэрэгжүүлэхийг дэмжих замаар үерийн уламаас учирч болзошгүй эрсдэлийг бууруулах нэгдмэл тогтолцоот үйл ажиллагаа</p></div>
		<div class="col-lg-2"></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Flood risk management strategy:</strong><p>Continuous process of planning, implementation and improvement of the holistic and ystematic procedure for flood risk reduction in certain time period</p></div>
		<div class="col-lg-5"><strong>Үерийн эрсдэлийн менежмент стратеги:</strong><p>Үерийн эрсдэлийг бууруулах нэгдмэл тоголцоот үйл ажиллагааг тодорхой хугацаагаар төлөвлөх, хэрэгжүүлэх, сайжруулах тасралтгүй үргэлжлэх үйл явц</p></div>
		<div class="col-lg-2"></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Risk reduction policy:</strong><p>Enabling environment for implementation of the strategy</p></div>
		<div class="col-lg-5"><strong>Эрсдэл бууруулах бодлого:</strong></div>
		<div class="col-lg-2"></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Principle for risk reduction:</strong><p>Simple guidelines that help facilitate the formulation of strategies and policies</p></div>
		<div class="col-lg-5"><strong>Эрсдэл бууруулах зарчим:</strong></div>
		<div class="col-lg-2"></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Mainstreaming flood risk management:</strong><p>To provide safeguard to the development and enhance flood risk reduction through better planning and designing of development (physical and non-physical) infrastructure</p></div>
		<div class="col-lg-5"><strong>Үерийн эрсдэлийн менежментинийн хэрэглээг нэмэгдүүлэх:</strong></div>
		<div class="col-lg-2"></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Flood Risk Management System:</strong><p>Sub system of DRM and it is a stable and integrated system for flood risk reduction</p></div>
		<div class="col-lg-5"><strong>Үерийн эрсдэлийн менежментийн тогтолцоо:</strong><p>Гамшгийн эрсдэлийн менежментийн дэд тогтолцоо бөгөөд үерийн эрсдэлийг бууруулах зорилго бүхий тогтвортой орших цогц тогтолцоо</p></div>
		<div class="col-lg-2"></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Flood Risk Mangement Institution:</strong><p>All organizational systems that operate towards the goal of reducing flood risk</p></div>
		<div class="col-lg-5"><strong>Үерийн эрсдэлийн менежментийн институци:</strong><p>Үерийн эрсдэлийн менежментийн стратегийг хариуцах байгууллагуудын тогтолцоо</p></div>
		<div class="col-lg-2"></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Community-based disaster risk management :</strong><p>Collaborative activities of a community with bottom-up and continuous processes to reduce disaster risk for the community</p></div>
		<div class="col-lg-5"><strong>Сайн дурын нөхөрлөлд суурилсан гамшгийн эрсдэлийн менежмент</strong><p>Хөршүүд нөхөрлөн гамшгийн эрсдэлээ бууруулах, доороос-дээш чиглэсэн, байнгын, хамтын ажиллагаа</p></div>
		<div class="col-lg-2"><strong>CBDRM</strong></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Integrated Information System:</strong><p>Sets of interoperable information systems that help communicate and share information and knowledge</p></div>
		<div class="col-lg-5"><strong>Нэгдсэн мэдээллийн систем:</strong><p>Гамшгийн эрсдэлийг бууруулах зорилгоор харилцах, мэдээлэл, мэдлэг солилцоход дэмжлэг үзүүлэх харилцан уялдаа холбоо бүхий системүүдийн нэгдэл</p></div>
		<div class="col-lg-2"><strong>Integrated IS</strong></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Web-based risk platform:</strong><p>Core element of integrated IS that provides communication, information and knowledge sharing platform for risk reduction</p></div>
		<div class="col-lg-5"><strong>Вебэд суурилсан эрсдэлийн платформ:</strong></div>
		<div class="col-lg-2"><strong>WBRP</strong></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Application software:</strong><p>A system to perform a specific task of Integrated IS</p></div>
		<div class="col-lg-5"><strong>Хэрэглээний програм:</strong><p>Нэгдмэл мэдээллийн системд тодорхой үүрэг гүйцэтгэх систем</p></div>
		<div class="col-lg-2"></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Disaster Risk Database:</strong><p>Set of databases that store data and information for analysis and prediction of uncertainty</p></div>
		<div class="col-lg-5"><strong>Гамшгийн эрсдэлийн өгөгдлийн сан:</strong><p>Тодорхойгүй байдлыг шинжлэх, төсөөлөхөд шаардагдах өгөгдөл, мэдээллийг агуулах сангуудын нэгдэл</p></div>
		<div class="col-lg-2"><strong>DRD</strong></div>
	</div>
	<div class="row">
		<div class="col-lg-5"><strong>Stakeholder:</strong><p>Any person or groupd of people with a legitimate power to respond to, negotiate with, and change the strategic future of FRM</p></div>
		<div class="col-lg-5"><strong>Оролцогч талууд:</strong><p></p></div>
		<div class="col-lg-2"></div>
	</div>
</div>
</div>
</div>
</div>
</div>
</div>