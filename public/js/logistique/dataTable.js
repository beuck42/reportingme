(function ()
{
	dataTable = $('#logistique').dataTable({
		"columns": [
			{"title" : "Nom du ticket"},
			{"title" : "Date d'intervention"},
			{"title" : "Ville"},
			{"title" : "Technicien"},
			{"title" : "Description"},
		],
	});
	initDRP("logistique");
	dayDate = moment().subtract("days", 6).format('YYYY-MM-DD');
	last7Days = moment().format('YYYY-MM-DD');
	initDataTable(dayDate, last7Days, "7 derniers jours");
}());
