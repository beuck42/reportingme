(function ()
{
	dataTable = $('#intervention').dataTable({
		"columns": [
			{"title": "ID"},
			{"title" : "Identifiant"},
			{"title" : "Status"},
			{"title" : "Nom du client"},
			{"title" : "Nom du ticket"},
			{"title" : "Date de création"},
			{"title" : "Ville"},
			{"title" : "Code postal"},
			{"title" : "Technicien"},
			{"title" : "Nom du model"},
			{"title" : "RDV"},
			{"title" : "Logistique"},
			{"title" : "Description"},
			{"title" : "Commentaire du technicien"},
			{"title" : "Statut de l'intervention"},
		],
	});
	initDRP("intervention");
	dayDate = moment().subtract("days", 6).format('YYYY-MM-DD');
	last7Days = moment().format('YYYY-MM-DD');
	initDataTable(dayDate, last7Days, "7 derniers jours");
}());
