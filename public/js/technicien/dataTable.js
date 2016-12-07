(function ()
{
	dataTable = $('#technicien').dataTable({
		"columns": [
			{"title": "Nom"},
			{"title" : "Prenom"},
			{"title" : "Email"},
			{"title" : "Moyenne des notes"},
			{"title" : "Nombre d'interventions"},
		],
	});
	initDRP("technicien");
	dayDate = moment().subtract("days", 6).format('YYYY-MM-DD');
	last7Days = moment().format('YYYY-MM-DD');
	initDataTable(dayDate, last7Days, "7 derniers jours");
}());
