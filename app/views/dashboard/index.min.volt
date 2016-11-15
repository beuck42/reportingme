<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
	<!--<![endif]-->
	<!-- BEGIN HEAD -->
	<head>
		<meta charset="utf-8" />
		<title>Mikado Labs - Reporting v1 | User Login</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta content="width=device-width, initial-scale=1" name="viewport" />
		<meta content="Mikado Labs statistics, charts, recent events and reports" name="description" />
		<meta content="Mikado Labs" name="author" />
		<!-- BEGIN GLOBAL MANDATORY STYLES -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
		<link href="/securinfor/public/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
		<link href="/securinfor/public/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
		<link href="/securinfor/public/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="/securinfor/public/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
		<!-- END GLOBAL MANDATORY STYLES -->
		<!-- BEGIN PAGE LEVEL PLUGINS -->
		<link href="/securinfor/public/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet" type="text/css" />
		<link href="/securinfor/public/assets/global/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
		<link href="/securinfor/public/assets/global/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css" />
		<link href="/securinfor/public/assets/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css" />
		<!-- END PAGE LEVEL PLUGINS -->
		<!-- BEGIN THEME GLOBAL STYLES -->
		<link href="/securinfor/public/assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
		<link href="/securinfor/public/assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
		<!-- END THEME GLOBAL STYLES -->
		<!-- BEGIN THEME LAYOUT STYLES -->
		<link href="/securinfor/public/assets/layouts/layout4/css/layout.min.css" rel="stylesheet" type="text/css" />
		<link href="/securinfor/public/assets/layouts/layout4/css/themes/default.min.css" rel="stylesheet" type="text/css" id="style_color" />
		<link href="/securinfor/public/assets/layouts/layout4/css/custom.min.css" rel="stylesheet" type="text/css" />
		<!-- END THEME LAYOUT STYLES -->
		<link rel="shortcut icon" href="favicon.ico" /> </head>
	<!-- END HEAD -->
	<body class="page-container-bg-solid page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed">
		<!-- BEGIN HEADER -->
		<div class="page-header navbar navbar-fixed-top">
			<!-- BEGIN HEADER INNER -->
			<div class="page-header-inner ">
				<!-- BEGIN LOGO -->

					<div class="menu-toggler sidebar-toggler hide">
						<!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
					</div>
				</div>
				<!-- END LOGO -->
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"> </a>
				<div class="page-top">
					<!-- BEGIN TOP NAVIGATION MENU -->
					<div class="top-menu">
						<ul class="nav navbar-nav pull-right">
							<!-- BEGIN USER LOGIN DROPDOWN -->
							<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->

							<li class="dropdown dropdown-user dropdown-dark">
								<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
									<span class="username username-hide-on-mobile"> Nick </span>
									<!-- DOC: Do not remove below empty space(&nbsp;) as its purposely used -->
									<img alt="" class="img-circle" src="/securinfor/public/assets/layouts/layout4/img/avatar9.jpg" /> </a>
								<ul class="dropdown-menu dropdown-menu-default">
									<li>
										<a href="page_user_profile_1.html">
											<i class="icon-user"></i> My Profile </a>
									</li>

									<li>
										{{ link_to("connexion/disconnect", "<i class='icon-key'></i> Log Out") }}
										<!-- <a href="connexion/disconnect">
											<i class="icon-key"></i> Log Out </a> -->
									</li>
								</ul>
							</li>
							<!-- END USER LOGIN DROPDOWN -->
							<!-- BEGIN QUICK SIDEBAR TOGGLER
							<li class="dropdown dropdown-extended quick-sidebar-toggler">
								<span class="sr-only">Toggle Quick Sidebar</span>
								<i class="icon-logout"></i>
							</li>
							<!-- END QUICK SIDEBAR TOGGLER -->
						</ul>
					</div>
					<!-- END TOP NAVIGATION MENU -->
				</div>
				<!-- END PAGE TOP -->
			</div>
			<!-- END HEADER INNER -->
		</div>
		<!-- END HEADER -->
		<!-- BEGIN HEADER & CONTENT DIVIDER -->
		<div class="clearfix"> </div>
		<!-- END HEADER & CONTENT DIVIDER -->
		<!-- BEGIN CONTAINER -->
		<div class="page-container">
			<!-- BEGIN SIDEBAR -->
			<div class="page-sidebar-wrapper">
				<!-- BEGIN SIDEBAR -->
				<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
				<!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
				<div class="page-sidebar navbar-collapse collapse ">
					<!-- BEGIN SIDEBAR MENU -->
					<!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
					<!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
					<!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
					<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
					<!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
					<!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
					<ul class="page-sidebar-menu page-sidebar-menu-closed  " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
						<li class="nav-item start active open">
							<a href="javascript:;" class="nav-link nav-toggle">
								<i class="icon-home"></i>
								<span class="title">Dashboard</span>
								<span class="selected"></span>
								<span class="arrow open"></span>
							</a>

						</li>

					</ul>
					<!-- END SIDEBAR MENU -->
				</div>
				<!-- END SIDEBAR -->
			</div>
			<!-- END SIDEBAR -->
			<!-- BEGIN CONTENT -->
			<div class="page-content-wrapper">
				<!-- BEGIN CONTENT BODY -->
				<div class="page-content">
					<!-- BEGIN PAGE HEAD-->
					<div class="page-head">
						<!-- BEGIN PAGE TITLE -->
						<div class="page-title">
							<h1>Mikado Labs Dashboard
								<small>statistics, charts, recent events and reports</small>
							</h1>
						</div>
						<!-- END PAGE TITLE -->
						<!-- BEGIN PAGE TOOLBAR -->
						<div class="page-toolbar">
							<div id="dashboard-report-range" data-display-range="0" class="pull-right tooltips btn btn-fit-height green" data-placement="left" data-original-title="Change dashboard date range">
								<i class="icon-calendar"></i>&nbsp;
								<span class="thin uppercase hidden-xs"></span>&nbsp;
								<i class="fa fa-angle-down"></i>
							</div>
						</div>
						<!-- END PAGE TOOLBAR -->
					</div>
					<!-- END PAGE HEAD-->
					<!-- BEGIN PAGE BREADCRUMB -->
					<ul class="page-breadcrumb breadcrumb">
						<!-- <li>
							<a href="index.html">Home</a>
							<i class="fa fa-circle"></i>
						</li> -->
						<li>
							<span class="active">Dashboard</span>
						</li>
					</ul>
					<!-- END PAGE BREADCRUMB -->
					<!-- BEGIN PAGE BASE CONTENT -->
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="dashboard-stat2 bordered">
								<div class="display">
									<div class="number" style="margin-left: 45%">
										<h3 class="font-green-sharp">
											<span data-counter="counterup" data-value="0">0</span>
										</h3>
										<small>MCO</small>
									</div>
									<div class="icon">
										<i class="icon-pie-chart"></i>
									</div>
								</div>
								<div class="progress-info">
									<div class="progress">
										<span style="width: 76%;" class="progress-bar progress-bar-success green-sharp">
											<span class="sr-only">10% progress</span>
										</span>
									</div>
									<div class="status">
										<div class="status-title"> progress </div>
										<div class="status-number"> 10% </div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-24">
							<div class="dashboard-stat2 bordered">
								<div class="display">
									<div class="number" style="margin-left: 45%">
										<h3 class="font-red-haze">
											<span data-counter="counterup" data-value="0">0</span>
										</h3>
										<small>TOTAL</small>
									</div>
									<div class="icon">
										<i class="icon-like"></i>
									</div>
								</div>
								<div class="progress-info">
									<div class="progress">
										<span style="width: 85%;" class="progress-bar progress-bar-success red-haze">
											<span class="sr-only">85% change</span>
										</span>
									</div>
									<div class="status">
										<div class="status-title"> change </div>
										<div class="status-number"> 85% </div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="dashboard-stat2 bordered">
								<div class="display">
									<div class="number" style="margin-left: 45%">
										<h3 class="font-blue-sharp">
											<span data-counter="counterup" data-value="0"></span>
										</h3>
										<small>IMAC</small>
									</div>
									<div class="icon">
										<i class="icon-basket"></i>
									</div>
								</div>
								<div class="progress-info">
									<div class="progress">
										<span style="width: 45%;" class="progress-bar progress-bar-success blue-sharp">
											<span class="sr-only">45% grow</span>
										</span>
									</div>
									<div class="status">
										<div class="status-title"> grow </div>
										<div class="status-number"> 45% </div>
									</div>
								</div>
							</div>
						</div>
						<!-- <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="dashboard-stat2 bordered">
								<div class="display">
									<div class="number">
										<h3 class="font-purple-soft">
											<span data-counter="counterup" data-value="0"></span>
										</h3>
										<small>NEW USERS</small>
									</div>
									<div class="icon">
										<i class="icon-user"></i>
									</div>
								</div>
								<div class="progress-info">
									<div class="progress">
										<span style="width: 57%;" class="progress-bar progress-bar-success purple-soft">
											<span class="sr-only">56% change</span>
										</span>
									</div>
									<div class="status">
										<div class="status-title"> change </div>
										<div class="status-number"> 57% </div>
									</div>
								</div>
							</div>
						</div> -->
					</div>
					<div class="row">
 <!-- 1er Graph -->
						<div class="col-lg-6 col-xs-12 col-sm-12">
							<div class="portlet light bordered">
								<div class="portlet-title">
									<div class="caption">
										<span class="caption-subject bold uppercase font-dark">Revenue</span>
										<span class="caption-helper">distance stats...</span>
									</div>
									<div class="actions">
										<a class="btn btn-circle btn-icon-only btn-default" href="#">
											<i class="icon-cloud-upload"></i>
										</a>
										<a class="btn btn-circle btn-icon-only btn-default" href="#">
											<i class="icon-wrench"></i>
										</a>
										<a class="btn btn-circle btn-icon-only btn-default" href="#">
											<i class="icon-trash"></i>
										</a>
										<a class="btn btn-circle btn-icon-only btn-default fullscreen" href="#"> </a>
									</div>
								</div>
								<div class="portlet-body">
									<!-- <div id="chartdiv" class="CSSAnimationChart"></div> -->
									<div id="dashboard_amchart_1" class="CSSAnimationChart"></div>
								</div>
							</div>
						</div>
<!-- 2eme Graph -->
						<div class="col-lg-6 col-xs-12 col-sm-12">
							<div class="portlet light bordered">
								<div class="portlet-title">
									<div class="caption ">
										<span class="caption-subject font-dark bold uppercase">Finance</span>
										<span class="caption-helper">distance stats...</span>
									</div>
									<div class="actions">
										<a href="#" class="btn btn-circle green btn-outline btn-sm">
											<i class="fa fa-pencil"></i> Export </a>
										<a href="#" class="btn btn-circle green btn-outline btn-sm">
											<i class="fa fa-print"></i> Print </a>
									</div>
								</div>
								<div class="portlet-body">
									<div id="dashboard_amchart_3" class="CSSAnimationChart"></div>
								</div>
							</div>
						</div>
					</div>
<!-- 3eme Graph -->
					<div class="row">
						<div class="col-lg-6 col-xs-12 col-sm-12">
							<div class="portlet light bordered">
								<div class="portlet-title">
									<div class="caption">
										<span class="caption-subject bold uppercase font-dark">Revenue</span>
										<span class="caption-helper">distance stats...</span>
									</div>
									<div class="actions">
										<a class="btn btn-circle btn-icon-only btn-default" href="#">
											<i class="icon-cloud-upload"></i>
										</a>
										<a class="btn btn-circle btn-icon-only btn-default" href="#">
											<i class="icon-wrench"></i>
										</a>
										<a class="btn btn-circle btn-icon-only btn-default" href="#">
											<i class="icon-trash"></i>
										</a>
										<a class="btn btn-circle btn-icon-only btn-default fullscreen" href="#"> </a>
									</div>
								</div>
								<div class="portlet-body">
									<div id="dashboard_amchart_2" class="CSSAnimationChart"></div>
								</div>
							</div>
						</div>
<!-- 4eme Graph -->
						<div class="col-lg-6 col-xs-12 col-sm-12">
							<div class="portlet light bordered">
								<div class="portlet-title">
									<div class="caption ">
										<span class="caption-subject font-dark bold uppercase">Finance</span>
										<span class="caption-helper">distance stats...</span>
									</div>
									<div class="actions">
										<a href="#" class="btn btn-circle green btn-outline btn-sm">
											<i class="fa fa-pencil"></i> Export </a>
										<a href="#" class="btn btn-circle green btn-outline btn-sm">
											<i class="fa fa-print"></i> Print </a>
									</div>
								</div>
								<div class="portlet-body">
									<div id="dashboard_amchart_4" class="CSSAnimationChart"></div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-6 col-xs-12 col-sm-12">
							<div class="portlet light bordered">
								<div class="portlet-title">
									<div class="caption">
										<i class="icon-cursor font-dark hide"></i>
										<span class="caption-subject font-dark bold uppercase">General Stats</span>
									</div>
									<div class="actions">
										<a href="javascript:;" class="btn btn-sm btn-circle red easy-pie-chart-reload">
											<i class="fa fa-repeat"></i> Reload </a>
									</div>
								</div>
								<div class="portlet-body">
									<div class="row">
										<div class="col-md-4">
											<div class="easy-pie-chart">
												<div class="number transactions" data-percent="55">
													<span>+55</span>% </div>
												<a class="title" href="javascript:;"> Transactions
													<i class="icon-arrow-right"></i>
												</a>
											</div>
										</div>
										<div class="margin-bottom-10 visible-sm"> </div>
										<div class="col-md-4">
											<div class="easy-pie-chart">
												<div class="number visits" data-percent="85">
													<span>+85</span>% </div>
												<a class="title" href="javascript:;"> New Visits
													<i class="icon-arrow-right"></i>
												</a>
											</div>
										</div>
										<div class="margin-bottom-10 visible-sm"> </div>
										<div class="col-md-4">
											<div class="easy-pie-chart">
												<div class="number bounce" data-percent="46">
													<span>-46</span>% </div>
												<a class="title" href="javascript:;"> Bounce
													<i class="icon-arrow-right"></i>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-xs-12 col-sm-12">
							<div class="portlet light bordered">
								<div class="portlet-title">
									<div class="caption">
										<i class="icon-equalizer font-dark hide"></i>
										<span class="caption-subject font-dark bold uppercase">Server Stats</span>
										<span class="caption-helper">monthly stats...</span>
									</div>
									<div class="tools">
										<a href="" class="collapse"> </a>
										<a href="#portlet-config" data-toggle="modal" class="config"> </a>
										<a href="" class="reload"> </a>
										<a href="" class="remove"> </a>
									</div>
								</div>
								<div class="portlet-body">
									<div class="row">
										<div class="col-md-4">
											<div class="sparkline-chart">
												<div class="number" id="sparkline_bar5"></div>
												<a class="title" href="javascript:;"> Network
													<i class="icon-arrow-right"></i>
												</a>
											</div>
										</div>
										<div class="margin-bottom-10 visible-sm"> </div>
										<div class="col-md-4">
											<div class="sparkline-chart">
												<div class="number" id="sparkline_bar6"></div>
												<a class="title" href="javascript:;"> CPU Load
													<i class="icon-arrow-right"></i>
												</a>
											</div>
										</div>
										<div class="margin-bottom-10 visible-sm"> </div>
										<div class="col-md-4">
											<div class="sparkline-chart">
												<div class="number" id="sparkline_line"></div>
												<a class="title" href="javascript:;"> Load Rate
													<i class="icon-arrow-right"></i>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
<!-- MAP -->
						<div class="col-lg-12 col-xs-12 col-sm-12">
							<!-- BEGIN REGIONAL STATS PORTLET-->
							<div class="portlet light bordered">
								<div class="portlet-title">
									<div class="caption">
										<i class="icon-share font-dark hide"></i>
										<span class="caption-subject font-dark bold uppercase">Regional Stats</span>
									</div>
									<div class="actions">
										<a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
											<i class="icon-cloud-upload"></i>
										</a>
										<a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
											<i class="icon-wrench"></i>
										</a>
										<a class="btn btn-circle btn-icon-only btn-default fullscreen" data-container="false" data-placement="bottom" href="javascript:;"> </a>
										<a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
											<i class="icon-trash"></i>
										</a>
									</div>
								</div>
								<div class="portlet-body">
									<div id="region_statistics_loading">
										<img src="/securinfor/public/assets/global/img/loading.gif" alt="loading" /> </div>
									<div id="region_statistics_content" class="display-none">
										<div class="btn-toolbar margin-bottom-10">
											<div class="btn-group btn-group-circle" data-toggle="buttons">
												<a href="" class="btn grey-salsa btn-sm active"> Users </a>
												<a href="" class="btn grey-salsa btn-sm"> Orders </a>
											</div>
											<div class="btn-group pull-right">
												<a href="" class="btn btn-circle grey-salsa btn-sm dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> Select Region
													<span class="fa fa-angle-down"> </span>
												</a>
												<ul class="dropdown-menu pull-right">
													<li>
														<a href="javascript:;" id="regional_stat_world"> World </a>
													</li>
													<li>
														<a href="javascript:;" id="regional_stat_usa"> USA </a>
													</li>
													<li>
														<a href="javascript:;" id="regional_stat_europe"> Europe </a>
													</li>
													<li>
														<a href="javascript:;" id="regional_stat_russia"> Russia </a>
													</li>
													<li>
														<a href="javascript:;" id="regional_stat_germany"> Germany </a>
													</li>
												</ul>
											</div>
										</div>
										<div id="vmap_world" class="vmaps display-none"> </div>
										<div id="vmap_usa" class="vmaps display-none"> </div>
										<div id="vmap_europe" class="vmaps display-none"> </div>
										<div id="vmap_russia" class="vmaps display-none"> </div>
										<div id="vmap_germany" class="vmaps display-none"> </div>
									</div>
								</div>
							</div>
							<!-- END REGIONAL STATS PORTLET-->
						</div>
					</div>

				<!-- END CONTENT BODY -->
			</div>
			<!-- END CONTENT -->

		</div>
		<!-- END CONTAINER -->
		<!-- BEGIN FOOTER -->
		<div class="page-footer">
			<div class="page-footer-inner"> 2016 &copy; Mikado Labs

			</div>
			<div class="scroll-to-top">
				<i class="icon-arrow-up"></i>
			</div>
		</div>
		<!-- END FOOTER -->

		<!--[if lt IE 9]>
<script src="/securinfor/public/assets/global/plugins/respond.min.js"></script>
<script src="/securinfor/public/assets/global/plugins/excanvas.min.js"></script>
<script src="/securinfor/public/assets/global/plugins/ie8.fix.min.js"></script>
<![endif]-->
		<!-- BEGIN CORE PLUGINS -->
		<script src="/securinfor/public/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
		<!-- END CORE PLUGINS -->
		<!-- BEGIN PAGE LEVEL PLUGINS -->
		<script src="/securinfor/public/assets/global/plugins/moment.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/morris/morris.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/morris/raphael-min.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/counterup/jquery.waypoints.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/counterup/jquery.counterup.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/amcharts/amcharts/amcharts.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/amcharts/amcharts/serial.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/amcharts/amcharts/pie.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/amcharts/amcharts/radar.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/amcharts/amcharts/themes/light.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/amcharts/amcharts/themes/patterns.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/amcharts/amcharts/themes/chalk.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/amcharts/ammap/ammap.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/amcharts/ammap/maps/js/worldLow.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/amcharts/amstockcharts/amstock.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/horizontal-timeline/horizontal-timeline.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/jqvmap/jqvmap/jquery.vmap.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
		<!-- END PAGE LEVEL PLUGINS -->
		<!-- BEGIN THEME GLOBAL SCRIPTS -->
		<script src="/securinfor/public/assets/global/scripts/app.min.js" type="text/javascript"></script>
		<!-- END THEME GLOBAL SCRIPTS -->
		<!-- BEGIN PAGE LEVEL SCRIPTS -->
		<script src="/securinfor/public/assets/pages/scripts/dashboard.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/js/initDashboard" type="text/javascript"></script>
		<script src="/securinfor/public/js/dashboard" type="text/javascript"></script>
		<!-- END PAGE LEVEL SCRIPTS -->
		<!-- BEGIN THEME LAYOUT SCRIPTS -->
		<script src="/securinfor/public/assets/layouts/layout4/scripts/layout.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/layouts/layout4/scripts/demo.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
		<!-- END THEME LAYOUT SCRIPTS -->
	</body>
</html>
