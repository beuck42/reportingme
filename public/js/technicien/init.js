function updateGraph(data, filtre, display)
{
	if (typeof(AmCharts) === 'undefined' || $('.select').size() === 0)
		return;
	graph = initAmChartGraph("graph");
	if (!data || !data[0])
		return ;
	graph.dataProvider = data;
	graph.graphs[0] = {
		"id": "graph1",
		"balloonText": "<span style='font-size:12px;'>[[title]] par " + filtre + " le [[category]]<br><span style='font-size:20px;'>[[value]]</span> [[additional]]</span>",
		"fillAlphas": 1,
		"title": "MCO",
		"type": "column",
		"valueField": filtre + "_mco",
	};
	graph.graphs[1] = {
		"id": "graph2",
		"balloonText": "<span style='font-size:12px;'>[[title]] par " + filtre + " le [[category]]<br><span style='font-size:20px;'>[[value]]</span> [[additional]]</span>",
		"fillAlphas": 1,
		"title": "IMAC",
		"type": "column",
		"valueField": filtre + "_imac",
	};
	graph.validateData();
}

function initFilter(data)
{
	var i = -1;
	var select = $(".select");

	$(".opt").remove();
	if (data == undefined)
		return ;
	data["filtre"].sort();
	select.append("<option class='opt' value='Tous'>Tous</option>");
	while (data["filtre"] && data["filtre"][++i])
		select.append("<option class='opt btn btn-circle green btn-outlin' value='" + data["filtre"][i] + "'>"
						+ data["filtre"][i]
				+ "</option>");
	$(".select").change(function ()
	{
		updateGraph(data["optitime"], $(this).val(), "AM1");
	});
}

function initDataTable(start, end, label)
{
	$.ajax({
		url: "technicien/getData",
		type: "POST",
		data: "start=" + start + "&end=" + end,
		dataType: "json",
		success: function(json)
		{
			/* si la requete réussi on initialise toutes les données */
			formatData(json);
			initFilter(dataFormated);
			dataTable.fnClearTable();
			if (dataFormated["kizeo"].length)
				dataTable.fnAddData(dataFormated["kizeo"]);
			updateGraph(dataFormated["optitime"], "Tous", "AM1")
		},
		error: function(jqXHR, textStatus, errorThrown)
		{
			console.log(textStatus);
			console.log(errorThrown);
		},
	});
}
