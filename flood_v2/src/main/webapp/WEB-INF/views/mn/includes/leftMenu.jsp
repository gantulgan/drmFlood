<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="leftMenu">
<ul id="leftMenu">
	<li><span><a href="/news.jsp">Мэдээ</a></span></li>
	<li><span><a href="/management.jsp">Гамшгийн менежмент</a></span>
		<ul>
			<li><span><a href="${pageContext.request.pathInfo}content/strategy/strategy.jsp?type=strategy">Стратеги</a></span>
				<ul>
					<li><span><a href="${pageContext.request.pathInfo}content/strategy/principle.jsp">Зарчим</a></span></li>
					<li><span><a href="${pageContext.request.pathInfo}content/strategy/diagram.jsp">Диаграм</a></span></li>
				</ul>
			</li>
			<li><span><a href="${pageContext.request.pathInfo}content/infrastructure/infrastructure.jsp?type=structure">Дэд бүтэц</a></span></li>
			<li><span><a href="${pageContext.request.pathInfo}content/cbdrm/cbdrm.jsp?type=cbdrm">CBDRM</a></span></li>
			<li><span><a href="${pageContext.request.pathInfo}content/institution/institution.jsp?type=institution">Институци</a></span>
			</li>
		</ul>
		
	</li>
	<li><span><a href="/mapper.jsp">Газрын зураг</a></span></li>
	<li><span><a href="#">Холбоо барих</a></span></li>
</ul>
</div>