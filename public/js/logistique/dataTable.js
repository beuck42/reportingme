(function ()
{
	dataTable = $('#logistique').dataTable({
		"columns": [
			{"title": "Nom du ticket", "data": "NOM_TICKET"},
			{"title": "Date d'intervention", "data": "DATE_CREATION"},
			{"title": "Ville", "data": "VILLE"},
			{"title": "Technicien", "data": "TECHNICIEN"},
		],
	});
	initDRP("logistique");
	dayDate = moment().subtract("days", 6).format('YYYY-MM-DD');
	last7Days = moment().format('YYYY-MM-DD');
	initDataTable(dayDate, last7Days, "7 derniers jours");
}());
