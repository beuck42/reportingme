(function ()
{
	dataTable = $('#intervention').DataTable({
		"columns": [
			{
				"className":      'details-control',
				"orderable":      false,
				"data":           null,
				"defaultContent": ''
			},
			{"title": "ID", "data": "ID_JOB"},
			{"title" : "Identifiant", "data": "IDENTIFIANT"},
			{"title" : "Status", "data": "STATUS"},
			{"title" : "Nom du client", "data": "NOM_CLIENT"},
			{"title" : "Nom du ticket", "data": "NOM_TICKET"},
			{"title" : "Date de création", "data": "DATE_CREATION"},
			{"title" : "Ville", "data": "VILLE"},
			{"title" : "Code postal", "data": "CODE_POSTAL"},
			{"title" : "Technicien", "data": "NOM_MODEL"},
			{"title" : "Nom du model", "data": "TECHNICIEN"},
			{"title" : "RDV", "data": "BD_RDV"},
			{"title" : "Logistique", "data": "BD_LOGISTIQUE"},
			{"title" : "Statut de l'intervention", "data": "BD_STATUT_INTERVENTION"},
		],
		"order": [[1, 'asc']]
	});
	initDRP("intervention");
	dayDate = moment().subtract("days", 6).format('YYYY-MM-DD');
	last7Days = moment().format('YYYY-MM-DD');
	initDataTable(dayDate, last7Days, "7 derniers jours");
}());
