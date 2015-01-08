<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- This is navigation bar WITH side menu for logged in users -->
<!-- ========================================================= -->
<!-- CSS: navbar.css -->

<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
            <li>
                <a class="" href=""><i class="fa fa-dashboard fa-fw"></i> Нүүр</a>
            </li>
            <li>
                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Мэдээ<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                	<li>
                        <a href="${pageContext.request.pathInfo}news">Шинэ мэдээ</a>
                    </li>
                    <li>
                        <a href="">Шуурхай мэдээ</a>
                    </li>
                    <li>
                        <a href="">Шилдэг мэдээ</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
<!--                         <li>
                            <a href="tables.html"><i class="fa fa-table fa-fw"></i> Хүснэгт</a>
                        </li> -->
<!--                         <li>
                            <a href="forms.html"><i class="fa fa-edit fa-fw"></i> CV</a>
                        </li> -->
            <li>
                <a href="#"><i class="fa fa-wrench fa-fw"></i> Менежмент<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="">Стратеги</a>
                    </li>
                    <li>
                        <a href="">Дэд бүтэц</a>
                    </li>
                    <li>
                        <a href="">CBDRM</a>
                    </li>
                    <li>
                        <a href="">Институци</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-wrench fa-fw"></i> Газрын зураг<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="#">Дүүрэг <span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li>
                                <a href="#">Баянгол</a>
                            </li>
                            <li>
                                <a href="#">Баянзүрх</a>
                            </li>
                            <li>
                                <a href="#">Сонгино Хайрхан</a>
                            </li>
                            <li>
                                <a href="#">Сүхбаатар</a>
                            </li>
							<li>
                                <a href="#">Хан-Уул</a>
                            </li>
                            <li>
                                <a href="#">Чингэлтэй</a>
                            </li>
                        </ul>
                        <!-- /.nav-third-level -->
                    </li>
                    <li>
                        <a href="">Ай сав</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-sitemap fa-fw"></i> Мэдээлэл<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="#">Танилцуулга</a>
                    </li>
                    <li>
                        <a href="#">Зөвлөгөө</a>
                    </li>
                    <li>
                        <a href="#">Анхан шатны тусламж</a>
                    </li>
                    <li>
                        <a href="#">Холбоо барих</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
        </ul>
    </div>
    <!-- /.sidebar-collapse -->
</div>
<!-- /.navbar-static-side -->
