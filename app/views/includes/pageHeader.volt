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
						<li>{{ link_to("connexion/disconnect", "<i class='icon-key'></i> Log Out") }}</li>
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
