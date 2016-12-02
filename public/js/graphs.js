function initAmChartGraph(graphName)
{
	graph = AmCharts.makeChart(graphName, {
		"type": "serial",
		"addClassNames": true,
		"theme": "light",
		"autoMargins": false,
		"marginLeft": 40,
		"marginRight": 8,
		"marginTop": 10,
		"marginBottom": 80,
		"balloon": {
			"adjustBorderColor": false,
			"horizontalPadding": 10,
			"verticalPadding": 10,
			"color": "#ffffff"
		},
		"dataProvider": {},
		"startDuration": 0.3,
		"graphs": [{
			"id": "graph1",
			"balloonText": "<span style='font-size:12px;'>[[title]] le [[category]]<br><span style='font-size:20px;'>[[value]]</span> [[additional]]</span>",
			"bullet": "round",
			"lineThickness": 3,
			"bulletSize": 7,
			"bulletBorderAlpha": 1,
			"bulletColor": "#ffffff",
			"useLineColorForBulletBorder": true,
			"bulletBorderThickness": 3,
			"fillAlphas": 0,
			"lineAlpha": 1,
			"title": "Tous",
			"valueField": "Tous",
		}],
		"colors": [
			"#ff4242", "#42aaf1",
		],
		"categoryField": "date",
		"categoryAxis": {
			"gridPosition": "start",
			"axisAlpha": 0,
			"tickLength": 10,
			"labelRotation": 60
		},
		"export": {
			"enabled": true
		},
		"legend": {
			bulletType: "round",
			useGraphSettings: true,
		},
	});
	return (graph);
}

function initAmChartPie(pieName)
{
	pie = AmCharts.makeChart(pieName,
	{
		"type": "pie",
		"theme": "light",
		"dataProvider": {},
		"valueField": "value",
		"titleField": "status",
		"startDuration": 0.3,
		"outlineAlpha": 0.4,
		"depth3D": 15,
		"balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
		"angle": 20,
		"export": {
			"enabled": true
		},
		"legend": {
			bulletType: "round",
		}
	});
	return (pie);
}

function initAmChartMap(mapName)
{
	map = AmCharts.makeChart(mapName, {
		"type": "map",
		"theme": "light",
		"dataProvider": {
			"mapURL": "/securinfor/public/assets/global/plugins/amcharts/ammap/maps/svg/franceLow.svg",
			"getAreasFromMap": true,
			"zoomLevel": 0.9,
			"areas": [],
			"images": {},
		},
		"areasSettings": {
			"autoZoom": true,
			"balloonText": "[[title]]: <strong>[[value]]</strong>",
		},
		"zoomControl": {
			"minZoomLevel": 0.9
		},
	});
	return (map);
}
