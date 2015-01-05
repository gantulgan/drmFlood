<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- This is navigation bar WITH side menu for logged in users -->
<!-- ========================================================= -->
<!-- CSS: navbar.css -->
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Цэс</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="/home.jsp">Puzzle Agency</a>
    </div>
    <!-- /.navbar-header -->

    <ul class="nav navbar-top-links navbar-right">
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-messages">
                <li>
                    <a href="#">
                        <div>
                            <strong>Болд</strong>
                            <span class="pull-right text-muted">
                                <em>өчигдөр</em>
                            </span>
                        </div>
                        <div>Зарласан ажлын тодруулга</div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <strong>Админ</strong>
                            <span class="pull-right text-muted">
                                <em>өчигдөр</em>
                            </span>
                        </div>
                        <div>Дугаар#3008 ажил хаагдав.</div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <strong>Дорж</strong>
                            <span class="pull-right text-muted">
                                <em>12.00ам</em>
                            </span>
                        </div>
                        <div>Зарласан ажилд нэгдэв</div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a class="text-center" href="#">
                        <strong>Бүх зурвас унших</strong>
                        <i class="fa fa-angle-right"></i>
                    </a>
                </li>
            </ul>
            <!-- /.dropdown-messages -->
        </li>
        <!-- /.dropdown -->
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-tasks">
                <li>
                    <a href="#">
                        <div>
                            <p>
                                <strong>Ажил 1</strong>
                                <span class="pull-right text-muted">40% гүйцэтгэл</span>
                            </p>
                            <div class="progress progress-striped active">
                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    <span class="sr-only">40% гүйцэтгэл (success)</span>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <p>
                                <strong>Ажил 2</strong>
                                <span class="pull-right text-muted">20% гүйцэтгэл</span>
                            </p>
                            <div class="progress progress-striped active">
                                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                    <span class="sr-only">20% гүйцэтгэл</span>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <p>
                                <strong>Ажил 3</strong>
                                <span class="pull-right text-muted">60% гүйцэтгэл</span>
                            </p>
                            <div class="progress progress-striped active">
                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                    <span class="sr-only">60% гүйцэтгэл (warning)</span>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <p>
                                <strong>Ажил 4</strong>
                                <span class="pull-right text-muted">80% гүйцэтгэл</span>
                            </p>
                            <div class="progress progress-striped active">
                                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                    <span class="sr-only">80% гүйцэтгэл (danger)</span>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a class="text-center" href="#">
                        <strong>Бүх ажил харах</strong>
                        <i class="fa fa-angle-right"></i>
                    </a>
                </li>
            </ul>
            <!-- /.dropdown-tasks -->
        </li>
        <!-- /.dropdown -->
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <li><a href="#"><i class="fa fa-user fa-fw"></i>Хэрэглэгчийн самбар</a>
                </li>
                <li><a href="#"><i class="fa fa-gear fa-fw"></i>Тохируулга</a>
                </li>
                <li class="divider"></li>
                <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Гарах</a>
                </li>
            </ul>
            <!-- /.dropdown-user -->
        </li>
        <!-- /.dropdown -->
    </ul>
    <!-- /.navbar-top-links -->

    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li class="sidebar-search">
                    <div class="input-group custom-search-form">
                        <input type="text" class="form-control" placeholder="Хайлт">
                        <span class="input-group-btn">
                        <button class="btn btn-default" type="button">
                            <i class="fa fa-search"></i>
                        </button>
                    </span>
                    </div>
                    <!-- /input-group -->
                </li>
                <li>
                    <a class="active" href=""><i class="fa fa-dashboard fa-fw"></i> Самбар</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Ажил<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                    	<li>
                            <a href="${pageContext.request.pathInfo}job$/jobPost.jsp">Ажил зарлах</a>
                        </li>
                        <li>
                            <a href="">Зарласан ажил</a>
                        </li>
                        <li>
                            <a href="">Хүлээгдэж буй ажил</a>
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
                    <a href="#"><i class="fa fa-wrench fa-fw"></i> Тохиргоо<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${pageContext.request.pathInfo}user/profileEdit.jsp">Танилцуулга</a>
                        </li>
                        <li>
                            <a href="">Нууц үг</a>
                        </li>
                        <li>
                            <a href="">Зурвас</a>
                        </li>
                        <li>
                            <a href="">Ажил</a>
                        </li>
                        <li>
                            <a href="">Төрөл</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <li>
                    <a href="#"><i class="fa fa-sitemap fa-fw"></i> Тайлан<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="#">Төлбөр</a>
                        </li>
                        <li>
                            <a href="#">Өр</a>
                        </li>
                        <li>
                            <a href="#">Гэрээ <span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a href="#">Гэрээ 1</a>
                                </li>
                                <li>
                                    <a href="#">Гэрээ 2</a>
                                </li>
                                <li>
                                    <a href="#">Гэрээ 3</a>
                                </li>
                                <li>
                                    <a href="#">Гэрээ 4</a>
                                </li>
                            </ul>
                            <!-- /.nav-third-level -->
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
</nav>