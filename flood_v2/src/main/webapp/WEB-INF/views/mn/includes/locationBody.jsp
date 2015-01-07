<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<!-- Энэ бол туршилтын хуудас!!!  -->
<!-- =========================== -->
<link href="/css/simple-sidebar.css" rel="stylesheet">
<div id="location" class="container">
	<span class="label label-default">Нүүр</span>
	<span class="label label-primary">Хэвтрэх</span>
    <a href="#menu-toggle" class="" id="menu-toggle"><span class="label label-info">Туслагч</span></a>
</div>
<div class="container">
<div id="contentBody">
	<div id="wrapper">
	     <!-- Sidebar -->
	     <div class="row">
	     <div class="col-xs-12">
		     <div id="page-content-wrapper">
		         <div class="container-fluid">
		             <div class="row">
		                 <div class="col-xs-12">
		                     <h1>Уучлаарай</h1>
		                     <p>Нэвтэрч орох боломжгүй байна. Та дараа дахин хандаарай. <a href="/home.jsp" style="display: inline-block;">Нүүр хуудас</a> буцах.</p>
		                 </div>
		             </div>
		         </div>
		     </div>
		     <div id="sidebar-wrapper">
		         <ul class="sidebar-nav">
		             <li class="sidebar-brand">
		                 <a href="#">
		                     Туслагч
		                 </a>
		             </li>
		             <li>
		                 <a href="/home.jsp">Нүүр</a>
		             </li>
		             <li>
		                 <a href="/news.jsp">Мэдээ</a>
		             </li>
		             <li>
		                 <a href="/management.jsp">Менежмент</a>
		             </li>
		             <li>
		                 <a href="/mapper.jsp">Газрын зураг</a>
		             </li>
		             <li>
		                 <a href="/info.jsp">Холбогдох</a>
		             </li>
		         </ul>
		     </div>
	     </div>
	     <!-- <div class="col-xs-11">
	     /#sidebar-wrapper
	     Page Content
	     <div id="page-content-wrapper">
	         <div class="container-fluid">
	             <div class="row">
	                 <div class="col-lg-12">
	                     <h1>Уучлаарай</h1>
	                     <p>Нэвтэрч орох боломжгүй байна. Та дараа дахин хандаарай. <a href="/home.jsp" style="display: inline-block;">Нүүр хуудас</a> буцах.</p>
	                 </div>
	             </div>
	         </div>
	     </div>
	     </div> -->
	     <!-- /#page-content-wrapper -->
	 </div>
</div>
</div>
</div>
 <script>
 $("#menu-toggle").click(function(e) {
     e.preventDefault();
     $("#wrapper").toggleClass("toggled");
 });
 </script>