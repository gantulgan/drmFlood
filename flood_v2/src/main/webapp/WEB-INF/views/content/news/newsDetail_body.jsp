<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="headProtector">
<div id="dMSchemeContainer">
<div class="responsive" style="text-align: left;">
<%-- 	Post Id : ${post.id}<br/> --%>
	Name Mon : ${post.titleMon}<br/>
	Name Eng : ${post.titleEn}<br/>
	ActiveFlag : ${post.activeFlag}<br/>
	Parent Category : ${post.category.nameMon} | ${post.category.nameEn}<br/>
	Posts : <br/>
	Post Mon | En Title: ${post.titleMon} | ${post.titleEn}  
	<div>Post in Mn: ${post.contentMon}</div>
	<div>Post in En: ${post.contentEn}</div>		
</div>
</div>
</div>
