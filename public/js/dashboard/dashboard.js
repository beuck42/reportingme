(function ()
{
	/* Debut style stat */
	dashboard_stats = document.getElementsByClassName("dashboard-stat2");
	i = -1;
	while (dashboard_stats[++i])
	{
		dashboard_stats[i].style.paddingBottom = "15px";
		stats = dashboard_stats[i].getElementsByClassName("display");
		j = -1;
		while (stats[++j])
		stats[j].style.marginBottom = "0px";
	}
	/* Fin style stat */
	/* On initialise le date range picker (voir daterangepicker.js) */
	initDRP("dashboard");
	/* On change les infos de de chaques graphiques avec les dates choisies */
	initCaption();
	/* On choisit par défault les 7 derniers jours */
	last7Days = moment().subtract("days", 6).format('YYYY-MM-DD') + " 00:00:00";
	dayDate = moment().format('YYYY-MM-DD') + " 99:99:99";
	initDashboard(last7Days, dayDate, "7 derniers jours");
}());
