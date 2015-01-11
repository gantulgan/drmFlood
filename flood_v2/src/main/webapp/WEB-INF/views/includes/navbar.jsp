<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- This is navigation bar WITH side menu for logged in users -->
<!-- ========================================================= -->
<!-- CSS: navbar.css -->
<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
    	<c:forEach items="${categories}" var="root">
            <li>
                <a href="#">${pageContext.response.locale.language == 'en' ? root.nameEn : root.nameMon }<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                <c:forEach items="${root.childCategories}" var="child">
                	<li>
                        <a href="${pageContext.request.contextPath}/category/${child.id}">${pageContext.response.locale.language == 'en' ? child.nameEn : child.nameMon}</a>
                    </li>
                </c:forEach>
                </ul>
                <!-- /.nav-second-level -->
            </li>
		</c:forEach>
        </ul>
    </div>
    <!-- /.sidebar-collapse -->
</div>
