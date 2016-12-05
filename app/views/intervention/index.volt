<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<html lang="en">
	<head>
		{% include "includes/head.volt" %}
		<!-- <link href="/securinfor/public/assets/DataTables/datatables.min.css" rel="stylesheet" type="text/css" /> -->
		<link href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
		<link href="css/datatable.css" rel="stylesheet" type="text/css" />
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
								<small>informations des interventions</small>
							</h1>
						</div>
						<!-- END PAGE TITLE -->
						{% include "includes/toolbarDateRange.volt" %}
					</div>
					<!-- END PAGE HEAD-->
					<!-- BEGIN PAGE BASE CONTENT -->
					<div class="row">
						<table id="intervention" class="display" cellspacing="0" width="100%">
						</table>
					</div>
					<div class="row">
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
		<script src="/securinfor/public/js/functionJS.js" type="text/javascript"></script>
		<script src="/securinfor/public/js/intervention/init.js" type="text/javascript"></script>
		<script src="/securinfor/public/js/daterangepicker.js" type="text/javascript"></script>
		<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/js/intervention/dataTable.js" type="text/javascript"></script>
		<!-- END PAGE LEVEL SCRIPTS -->
	</body>
</html>
