<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
	<!--<![endif]-->
	<!-- BEGIN HEAD -->
	<head>
		<meta charset="utf-8" />
		<title>Mikado Labs - Reporting v1 | User Login </title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta content="width=device-width, initial-scale=1" name="viewport" />
		<meta content="Mikado Labs Reporting Login Page" name="description" />
		<meta content="Mikado Labs" name="author" />
		<!-- BEGIN GLOBAL MANDATORY STYLES -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
		<link href="/securinfor/public/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
		<link href="/securinfor/public/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
		<link href="/securinfor/public/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="/securinfor/public/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
		<!-- END GLOBAL MANDATORY STYLES -->
		<!-- BEGIN PAGE LEVEL PLUGINS -->
		<link href="/securinfor/public/assets/global/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
		<link href="/securinfor/public/assets/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />
		<!-- END PAGE LEVEL PLUGINS -->
		<!-- BEGIN THEME GLOBAL STYLES -->
		<link href="/securinfor/public/assets/global/css/components-rounded.min.css" rel="stylesheet" id="style_components" type="text/css" />
		<link href="/securinfor/public/assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
		<!-- END THEME GLOBAL STYLES -->
		<!-- BEGIN PAGE LEVEL STYLES -->
		<link href="/securinfor/public/assets/pages/css/login.min.css" rel="stylesheet" type="text/css" />
		<link href="/securinfor/public/assets/pages/css/login-5.min.css" rel="stylesheet" type="text/css" />
		<!-- END PAGE LEVEL STYLES -->
		<!-- BEGIN THEME LAYOUT STYLES -->
		<!-- END THEME LAYOUT STYLES -->
		<link rel="shortcut icon" href="/securinfor/public/img/favicon.ico" />

	</head>
	<!-- END HEAD -->
<div class="user-login-5">
	<body class="login">
	  <div class="col-md-6 bs-reset">

		<!-- BEGIN LOGO -->
		<div class="logo">
			{{ linkTo("index/index", "<img src='/securinfor/public/img/logo_trans.png' alt='' />") }}
			{{ linkTo("index/index", "<img src='/securinfor/public/img/logo_securinfor_small.png' alt='' />") }}
			<!-- <a href="index.html"> -->
				<!-- <img src="/securinfor/public/img/logo_trans.png" alt="" /> </a> -->
		</div>
		<!-- END LOGO -->
		<!-- BEGIN LOGIN -->

		<div class="content">
			<!-- BEGIN LOGIN FORM -->
			{{ form("forgetPassword/savePassword", "method": "post", "class": "resetPassword-form") }}
			<!-- <form class="login-form" action="connexion/connect" method="post"> -->
				<h3 class="form-title font-green">Modification du mot de passe</h3>
				<div class="form-group">
					<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
					<label class="control-label visible-ie8 visible-ie9">Nouveau mot de passe</label>
					<input class="form-control form-control-solid placeholder-no-fix" type="password" autocomplete="off" placeholder="Nouveau mot de passe" name="newPassword" />
				</div>
				<div class="form-group">
					<label class="control-label visible-ie8 visible-ie9">Confirmation mot de Passe</label>
					<input class="form-control form-control-solid placeholder-no-fix" type="password" autocomplete="off" placeholder="Confirmation mot de Passe" name="confirmPassword" />
				</div>
				<div class="form-group">
					<label class="control-label visible-ie8 visible-ie9">Token</label>
					<input class="form-control form-control-solid placeholder-no-fix" type="text" autocomplete="off" placeholder="Token" name="token" />
				</div>
				<div class="form-actions">
					<button type="submit" class="btn green uppercase">Modifier</button>
				</div>
			{{ end_form() }}
			<!-- END LOGIN FORM -->
		</div>
		<div class="copyright"> 2016 © Mikado Labs </div>

	</div>
	<div class="col-md-6 bs-reset">
		<div class="login-bg" style="height: 1000px"> </div>
	</div>
</div>
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
		<script src="/securinfor/public/assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/jquery-validation/js/additional-methods.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/global/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
		<!-- END PAGE LEVEL PLUGINS -->
		<!-- BEGIN THEME GLOBAL SCRIPTS -->
		<script src="/securinfor/public/assets/global/scripts/app.min.js" type="text/javascript"></script>
		<!-- END THEME GLOBAL SCRIPTS -->
		<!-- BEGIN PAGE LEVEL SCRIPTS -->
		<script src="/securinfor/public/assets/pages/scripts/login.min.js" type="text/javascript"></script>
		<script src="/securinfor/public/assets/pages/scripts/login-5.js" type="text/javascript"></script>
		<!-- END PAGE LEVEL SCRIPTS -->
		<!-- BEGIN THEME LAYOUT SCRIPTS -->
		<!-- END THEME LAYOUT SCRIPTS -->
	</body>

</html>
