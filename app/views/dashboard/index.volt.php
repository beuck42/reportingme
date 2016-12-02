<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<html lang="en">
	<head>
		<!DOCTYPE html>
<meta charset="utf-8" />
<title>Mikado Labs - Reporting v1 | User Login</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="Securinfor statistics, charts, recent events and reports" name="description" />
<meta content="Mikado Labs" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
<link href="/securinfor/public/assets/global/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css" />
<link href="/securinfor/public/assets/global/plugins/simple-line-icons/simple-line-icons.css" rel="stylesheet" type="text/css" />
<link href="/securinfor/public/assets/global/plugins/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="/securinfor/public/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.css" rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<link href="/securinfor/public/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css" />
<link href="/securinfor/public/assets/global/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
<link href="/securinfor/public/assets/global/plugins/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
<link href="/securinfor/public/assets/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL STYLES -->
<link href="/securinfor/public/assets/global/css/components.css" rel="stylesheet" id="style_components" type="text/css" />
<link href="/securinfor/public/assets/global/css/plugins.css" rel="stylesheet" type="text/css" />
<!-- END THEME GLOBAL STYLES -->
<!-- BEGIN THEME LAYOUT STYLES -->
<link href="/securinfor/public/assets/layouts/layout4/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/securinfor/public/assets/layouts/layout4/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color" />
<link href="/securinfor/public/assets/layouts/layout4/css/custom.css" rel="stylesheet" type="text/css" />
<!-- END THEME LAYOUT STYLES -->
<!-- <link rel="shortcut icon" href="favicon.ico" /> -->

	</head>
	<body class="page-container-bg-solid page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed">
		<!DOCTYPE html>
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	<div class="page-header-inner ">
		<!-- BEGIN LOGO -->
		<div class="menu-toggler sidebar-toggler hide"></div>
		<!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
	</div>
	<!-- END LOGO -->
	<!-- BEGIN RESPONSIVE MENU TOGGLER -->
	<a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"> </a>
	<div class="page-top">
		<!-- BEGIN TOP NAVIGATION MENU -->
		<div class="top-menu">
			<ul class="nav navbar-nav pull-right">
				<!-- BEGIN USER LOGIN DROPDOWN -->
				<li class="dropdown dropdown-user dropdown-dark">
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
						<img alt="" class="img" src="/securinfor/public/img/logo_securinfor_small.png" />
					</a>
					<ul class="dropdown-menu dropdown-menu-default">
						<li><a href="page_user_profile_1.html"><i class="icon-user"></i> My Profile </a></li>
						<li><?= $this->tag->linkTo(['connexion/disconnect', '<i class=\'icon-key\'></i> Log Out']) ?></li>
					</ul>
				</li>
				<!-- END USER LOGIN DROPDOWN -->
			</ul>
		</div>
		<!-- END TOP NAVIGATION MENU -->
	</div>
	<!-- END PAGE TOP -->
</div>
<!-- END HEADER -->

		<!-- BEGIN CONTAINER -->
		<div class="page-container">
			<!DOCTYPE html>
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
		<ul class="page-sidebar-menu page-sidebar-menu-closed " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
			<li class="nav-item start active open">
				<a href="dashboard" class="nav-link nav-toggle">
					<i class="fa fa-home"></i>
					<span class="title">Dashboard</span>
				</a>
			</li>
			<li class="nav-item start active open">
				<a href="technicien" class="nav-link nav-toggle">
					<i class="fa fa-user"></i>
					<span class="title">Technicien</span>
				</a>
			</li>
			<li class="nav-item start active open">
				<a href="intervention" class="nav-link nav-toggle">
					<i class="fa fa-briefcase"></i>
					<span class="title">Interventions</span>
				</a>
			</li>
			<li class="nav-item start active open">
				<a href="logistique" class="nav-link nav-toggle">
					<i class="fa fa-car"></i>
					<span class="title">Logistique</span>
				</a>
			</li>
		</ul>
		<!-- END SIDEBAR MENU -->
	</div>
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
							<h1>Securinfor Dashboard
								<small>statistiques, graphiques des interventions récentes</small>
							</h1>
						</div>
						<!-- END PAGE TITLE -->
						<!DOCTYPE html>
<!-- BEGIN PAGE TOOLBAR -->
<div class="page-toolbar">
	<div id="dashboard-report-range" data-display-range="0" class="pull-right tooltips btn btn-fit-height green" data-placement="left" data-original-title="Modifier le filtre de date">
		<i class="icon-calendar"></i>&nbsp;
		<span class="thin uppercase hidden-xs"></span>&nbsp;
		<i class="fa fa-angle-down"></i>
	</div>
</div>
<!-- END PAGE TOOLBAR -->

					</div>
					<!-- END PAGE HEAD-->
					<!-- BEGIN PAGE BASE CONTENT -->
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="dashboard-stat2 bordered">
								<div class="display">
									<div class="number" style="margin-left: 50%">
										<h3 class="font-green-sharp">
											<span id="MCO" data-value="0">0</span>
										</h3>
										<small>MCO</small>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="dashboard-stat2 bordered">
								<div class="display">
									<div class="number" style="margin-left: 50%">
										<h3 class="font-red-haze">
											<span id="TOTAL" data-value="0">0</span>
										</h3>
										<small>TOTAL</small>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="dashboard-stat2 bordered">
								<div class="display">
									<div class="number" style="margin-left: 50%">
										<h3 class="font-blue-sharp">
											<span id="IMAC" data-value="0">0</span>
										</h3>
										<small>IMAC</small>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="dashboard-stat2 bordered">
								<div class="display">
									<div class="number" style="margin-left: 50%">
										<h3 class="font-green-sharp">
											<span id="SLA_MCO" data-value="0">0%</span>
										</h3>
										<small>SLA MCO</small>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style"display: none"></div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="dashboard-stat2 bordered">
								<div class="display">
									<div class="number" style="margin-left: 50%">
										<h3 class="font-blue-sharp">
											<span id="SLA_IMAC" data-value="0">0%</span>
										</h3>
										<small>SLA IMAC</small>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<!-- Graph MCO -->
						<div id="AM1" class="col-lg-6 col-xs-12 col-sm-12">
							<div class="portlet light bordered">
								<div class="portlet-title">
									<div class="caption">
										<span class="caption-subject bold uppercase font-dark">Interventions MCO</span>
										<span class="caption-helper"></span>
									</div>
									<div class="actions">
										<select class="select_mco graph btn btn-circle green btn-outline"></select>
										<a class="btn btn-circle green btn-outline btn-icon-only btn-default fullscreen" href="#"> </a>
										<a href="#" class="btn btn-circle green btn-outline">
											<i class="fa fa-pencil"></i> Export
										</a>
									</div>
								</div>
								<div class="portlet-body">
									<div id="graph_mco" style="height: 600px"></div>
								</div>
							</div>
						</div>
						<!-- Graph IMAC -->
						<div id="AM2" class="col-lg-6 col-xs-12 col-sm-12">
							<div class="portlet light bordered">
								<div class="portlet-title">
									<div class="caption ">
										<span class="caption-subject font-dark bold uppercase">Interventions IMAC</span>
										<span class="caption-helper"></span>
									</div>
									<div class="actions">
										<select class="select_imac graph btn btn-circle green btn-outline"></select>
										<a class="btn btn-circle green btn-outline btn-icon-only btn-default fullscreen" href="#"> </a>
										<a href="#" class="btn btn-circle green btn-outline">
											<i class="fa fa-pencil"></i> Export
										</a>
									</div>
								</div>
								<div class="portlet-body">
									<div id="graph_imac" style="height: 600px"></div>
								</div>
							</div>
						</div>
						</div>
					<div class="row">
						<!-- Pie MCO -->
						<div id="AM3" class="col-lg-6 col-xs-12 col-sm-12">
							<div class="portlet light bordered">
								<div class="portlet-title">
									<div class="caption ">
										<span class="caption-subject font-dark bold uppercase">Status MCO</span>
										<span class="caption-helper"></span>
									</div>
									<div class="actions">
										<select class="select_mco camembert btn btn-circle green btn-outline"></select>
										<a class="btn btn-circle green btn-outline btn-icon-only btn-default fullscreen" href="#"> </a>
										<a href="#" class="btn btn-circle green btn-outline">
											<i class="fa fa-pencil"></i> Export
										</a>
									</div>
								</div>
								<div class="portlet-body">
									<div id="pie_mco" style="height: 600px"></div>
								</div>
							</div>
						</div>
						<!-- Pie IMAC -->
						<div id="AM4" class="col-lg-6 col-xs-12 col-sm-12">
							<div class="portlet light bordered">
								<div class="portlet-title">
									<div class="caption ">
										<span class="caption-subject font-dark bold uppercase">Status IMAC</span>
										<span class="caption-helper"></span>
									</div>
									<div class="actions">
										<select class="select_imac camembert btn btn-circle green btn-outline"></select>
										<a class="btn btn-circle green btn-outline btn-icon-only btn-default fullscreen" href="#"> </a>
										<a href="#" class="btn btn-circle green btn-outline">
											<i class="fa fa-pencil"></i> Export
										</a>
									</div>
								</div>
								<div class="portlet-body">
									<div id="pie_imac" style="height: 600px"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div id="AM5" class="col-lg-6 col-xs-12 col-sm-12">
							<div class="portlet light bordered">
								<div class="portlet-title">
									<div class="caption">
										<span class="caption-subject bold uppercase font-dark">Géolocalisation MCO</span>
										<span class="caption-helper"></span>
									</div>
									<div class="actions">
										<select class="select_mco map btn btn-circle green btn-outline"></select>
										<a class="btn btn-circle green btn-outline btn-icon-only btn-default fullscreen" href="#"> </a>
									</div>
								</div>
								<div class="portlet-body">
									<div id="map_mco" style="height: 600px"></div>
								</div>
							</div>
						</div>
						<div id="AM6" class="col-lg-6 col-xs-12 col-sm-12">
							<div class="portlet light bordered">
								<div class="portlet-title">
									<div class="caption">
										<span class="caption-subject bold uppercase font-dark">Géolocalisation IMAC</span>
										<span class="caption-helper"></span>
									</div>
									<div class="actions">
										<select class="select_imac map btn btn-circle green btn-outline"></select>
										<a class="btn btn-circle green btn-outline btn-icon-only btn-default fullscreen" href="#"> </a>
									</div>
								</div>
								<div class="portlet-body">
									<div id="map_imac" style="height: 600px"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
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
											<div id="dashboard_amchart_1" style="height: 600px"></div>
										</div>
									</div>
								</div>
					</div>
				<!-- END CONTENT BODY -->
				</div>
			<!-- END CONTENT -->
			</div>
			<!-- END CONTAINER -->
			<!-- BEGIN FOOTER -->
			<div class="page-footer">
				<div class="page-footer-inner"> 2016 &copy; Mikado Labs</div>
				<div class="scroll-to-top"><i class="icon-arrow-up"></i></div>
			</div>
			<!-- END FOOTER -->
		</div>
		<!-- END CONTAINER -->
		<!DOCTYPE html>
<!--[if lt IE 9]>
	<script src="/securinfor/public/assets/global/plugins/respond.js"></script>
	<script src="/securinfor/public/assets/global/plugins/excanvas.js"></script>
	<script src="/securinfor/public/assets/global/plugins/ie8.fix.js"></script>
<![endif]-->
<!-- BEGIN CORE PLUGINS -->
<script src="/securinfor/public/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/bootstrap/js/bootstrap.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="/securinfor/public/assets/global/plugins/moment.min.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/morris/morris.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/morris/raphael-min.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/counterup/jquery.waypoints.min.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/counterup/jquery.counterup.min.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/amcharts/amcharts/amcharts.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/amcharts/amcharts/serial.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/amcharts/amcharts/pie.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/amcharts/amcharts/radar.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/amcharts/amcharts/themes/light.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/amcharts/amcharts/themes/patterns.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/amcharts/amcharts/themes/chalk.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/amcharts/ammap/ammap.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/amcharts/ammap/maps/js/worldLow.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/amcharts/amstockcharts/amstock.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/fullcalendar/fullcalendar.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/horizontal-timeline/horizontal-timeline.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/flot/jquery.flot.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/flot/jquery.flot.resize.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/flot/jquery.flot.categories.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/jquery-easypiechart/jquery.easypiechart.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="/securinfor/public/assets/global/scripts/app.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="/securinfor/public/assets/layouts/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/layouts/layout4/scripts/demo.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/layouts/global/scripts/quick-sidebar.js" type="text/javascript"></script>
<script src="/securinfor/public/assets/layouts/global/scripts/quick-nav.js" type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->
<script src="/securinfor/public/js/functionJS.js" type="text/javascript"></script>

		<!-- BEGIN PAGE LEVEL SCRIPTS -->
		<script src="/securinfor/public/js/graphs.js" type="text/javascript"></script>
		<script src="/securinfor/public/js/dashboard/updateGraphs.js" type="text/javascript"></script>
		<script src="/securinfor/public/js/dashboard/formatData.js" type="text/javascript"></script>
		<script src="/securinfor/public/js/dashboard/init.js" type="text/javascript"></script>
		<script src="/securinfor/public/js/daterangepicker.js" type="text/javascript"></script>
		<script src="/securinfor/public/js/dashboard/initDashboard.js" type="text/javascript"></script>
		<script src="/securinfor/public/js/dashboard/dashboard.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/pages/scripts/dashboard.js" type="text/javascript"></script>
		<!-- END PAGE LEVEL SCRIPTS -->
	</body>
</html>