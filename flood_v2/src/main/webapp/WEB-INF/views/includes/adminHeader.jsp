<%@page import="com.tsahimur.ubflood.entity.AdminUser"%>
<%@page import="com.tsahimur.ubflood.util.Constant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- <jsp:include page="${pageContext.request.pathInfo}../includes/links.jsp"></jsp:include> --%>
<%
	AdminUser admin = (AdminUser) session.getAttribute(Constant.Admin.USER_SESSION_KEY);
	if ( admin == null ){
		response.sendRedirect("www.google.com");
	}
	
%>
<div class="row">
	<div class="col-xs-1" ></div>
	<div class="col-xs-1 btn btn-primary" ><a style="color: white;" href="${pageContext.request.contextPath}/admin/">Admin home</a></div>
	<div class="col-xs-1 btn btn-primary" ><a style="color: white;" href="${pageContext.request.contextPath}/admin/category/">Category</a></div>
	<div class="col-xs-1 btn btn-primary" ><a style="color: white;" href="${pageContext.request.contextPath}/admin/post/">Post</a></div>
	<div class="col-xs-1 btn btn-primary" ><a style="color: white;" href="${pageContext.request.contextPath}/admin/alert/">Alert</a></div>
	<div class="col-xs-1"></div>
	<div class="col-xs-1 btn btn-danger" >Log out</div>
</div>