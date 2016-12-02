function initDashboard(start, end, label)
{
	initCaption(start, end, label);
	$.ajax(
	{
		url: "dashboard/getData",
		type: "POST",
		data: "start=" + start + "&end=" + end,
		dataType: "json",
		success: function(json)
		{
			/* si la requete réussi on initialise toutes les données */
			formatData(json);
			initStat(dataFormated["stat"]);
			initSLA(dataFormated, "Tous", "Tous");
			initFilter(dataFormated);
			updateGraph(dataFormated["graph_mco"], "Tous", "mco", "AM1");
			updateGraph(dataFormated["graph_imac"], "Tous", "imac", "AM2");
			updatePie(dataFormated["pie_mco"], "Tous", "mco", "AM3");
			updatePie(dataFormated["pie_imac"], "Tous", "imac", "AM4");
			updateMap(dataFormated["map_mco"], "Tous", "mco", "AM5");
			updateMap(dataFormated["map_imac"], "Tous", "imac", "AM6");
		},
		error: function(jqXHR, textStatus, errorThrown)
		{
			console.log(textStatus);
			console.log(errorThrown);
			var dataFormated = {};
			resetFilter();
			initStat(dataFormated["stat"]);
			initSLA(dataFormated, "Tous", "Tous");
			initFilter();
			updateGraph(dataFormated["graph_mco"], "Tous", "mco", "AM1");
			updateGraph(dataFormated["graph_imac"], "Tous", "imac", "AM2");
			updatePie(dataFormated["pie_mco"], "Tous", "mco", "AM3");
			updatePie(dataFormated["pie_imac"], "Tous", "imac", "AM4");
		},
	});
}
