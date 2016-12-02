function updateGraph(data, filtre, id, display)
{
	if (typeof(AmCharts) === 'undefined' || $('.select_' + id + '').size() === 0)
		return;
	graph = initAmChartGraph("graph_" + id);
	if (!data || !data[0])
		return ;
	graph.dataProvider = data;
	graph.graphs[1] = {
		"id": "graph2",
		"balloonText": "<span style='font-size:12px;'>[[title]] le [[category]]<br><span style='font-size:20px;'>[[value]]</span> [[additional]]</span>",
		"fillAlphas": 1,
		"title": filtre,
		"type": "column",
		"valueField": filtre,
	};
	graph.validateData();
}

function updatePie(data, filtre, id, display)
{
	if (typeof(AmCharts) === 'undefined' || $('.select_' + id + '').size() === 0)
		return;
	pie = initAmChartPie("pie_" + id);
	if (!data || !data[filtre])
		return ;
	pie.dataProvider = data[filtre];
	pie.validateData();
}

function updateMap(data, filtre, id, display)
{
	if (typeof(AmCharts) === 'undefined' || $('.select_' + id + '').size() === 0)
		return;
	map = initAmChartMap("map_" + id);
	if (!data || !data[filtre])
		return ;
	map.dataProvider.images = data[filtre];
	map.validateData();
}
