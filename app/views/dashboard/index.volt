<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<html lang="en">
	<head>
		{% include "includes/head.volt" %}
	</head>
	<body class="page-container-bg-solid page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed">
		{% include "includes/pageHeader.volt" %}
		<!-- BEGIN CONTAINER -->
		<div class="page-container">
			{% include "includes/sidebar.volt" %}
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
						{% include "includes/toolbarDateRange.volt" %}
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
		{% include "includes/scriptJS.volt" %}
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
