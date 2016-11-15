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
initDRP();
initDashboard(0, 0);
