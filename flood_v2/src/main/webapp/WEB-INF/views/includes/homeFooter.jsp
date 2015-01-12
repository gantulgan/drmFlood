<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:message var="homepage" code="footer.homepage" />
<spring:message var="home" code="footer.home" />
<spring:message var="login" code="footer.login" />
<spring:message var="mapper" code="footer.mapper" />
<spring:message var="contact" code="footer.contact" />
<spring:message var="contact_text" code="footer.contact.text" />
<spring:message var="feedback" code="footer.feedback" />
<spring:message var="feedback_email" code="footer.feedback.email" />
<spring:message var="feedback_button" code="footer.feedback.button" />


<div class="container">
	<!-- <div id="fLinkStrip"></div> -->
	<div id="fLinks" class="row">
		<div class="col-md-offset-1 col-md-11">
			<h3>${contact }</h3>
			<div id="sitemap" class="col-md-offset-3 col-md-9">
				${contact_text }
			</div>
		</div>
	</div>
	<%-- <div id="fLinks" class="row">
		<div class="col-md-offset-1 col-md-11">
			<h3>${feedback }</h3>
			<div id="sitemap" class="col-md-offset-3 col-md-9">
			<form:form action="." modelAttribute="feedback" method="POST"  class="form-horizontal" role="form">
				<div class="form-group">
				<label for="email" class="col-sm-4 control-label" >${feedback_email }:</label>
					<div class="col-sm-8">
						<form:input path="email" class="form-control" placeholder="${feedback_email }"/>
					</div>
				</div>	 
				<div class="form-group">
				<label for="email" class="col-sm-4 control-label" >${feedback }:</label>
					<div class="col-sm-8">
						<form:input path="feedback" class="form-control" placeholder="${feedback }"/>
					</div>
				</div>	 
			    <div class="form-group">
			      <div class="col-sm-offset-4 col-sm-8">
			         <input type="submit" value="${feedback_button }"  class="btn btn-default">
			      </div>
			    </div>
		    </form:form>
			</div>
		</div>
	</div> --%>
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