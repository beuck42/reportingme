<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<html lang="en">
	<head>
		{% include "includes/head.volt" %}
		<!-- <link href="/securinfor/public/assets/DataTables/datatables.min.css" rel="stylesheet" type="text/css" /> -->
		<link href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
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
								<small>statistiques des techniciens</small>
							</h1>
						</div>
						<!-- END PAGE TITLE -->
						{% include "includes/toolbarDateRange.volt" %}
					</div>
					<!-- END PAGE HEAD-->
					<!-- BEGIN PAGE BASE CONTENT -->
					<div class="row">
						<table id="technicien" class="display" cellspacing="0" width="100%">
						</table>
					</div>
					<div class="row">
						<div id="AM1" class="col-lg-6 col-xs-12 col-sm-12">
							<div class="portlet light bordered">
								<div class="portlet-title">
									<div class="caption">
										<span class="caption-subject bold uppercase font-dark">Interventions</span>
										<span class="caption-helper"></span>
									</div>
									<div class="actions">
										<select class="select graph btn btn-circle green btn-outline"></select>
										<a class="btn btn-circle green btn-outline btn-icon-only btn-default fullscreen" href="#"> </a>
										<a href="#" class="btn btn-circle green btn-outline">
											<i class="fa fa-pencil"></i> Export
										</a>
									</div>
								</div>
								<div class="portlet-body">
									<div id="graph" style="height: 600px"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
					</div>
					<div class="row">
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
		<!-- <script src="/securinfor/public/assets/DataTables/datatables.min.js" type="text/javascript"></script> -->
		<script src="/securinfor/public/js/graphs.js" type="text/javascript"></script>
		<script src="/securinfor/public/js/technicien/formatData.js" type="text/javascript"></script>
		<script src="/securinfor/public/js/technicien/init.js" type="text/javascript"></script>
		<script src="/securinfor/public/js/daterangepicker.js" type="text/javascript"></script>
		<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/js/technicien/dataTable.js" type="text/javascript"></script>
		<!-- END PAGE LEVEL SCRIPTS -->
	</body>
</html>
