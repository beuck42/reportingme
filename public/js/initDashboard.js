function strncmp(str1, str2, lgth)
{
	var s1 = str1.substr(0, lgth);
	var s2 = str2.substr(0, lgth);
	if (s1 == s2)
		return (0);
	return (s1 > s2 ? 1 : -1);
}

function getModelNb(data, nom_model)
{
	i = -1;
	nb = 0;
	while (data[++i])
	{
		j = -1;
		while (nom_model[++j])
			if (!strncmp(data[i][1], nom_model[j][0], nom_model[j][1]))
				nb++;
	}
	return (nb);
}

function initStat(data)
{
	mco = [
		["INCIDENT LCL", 8],
		["Intervention", 12],
	];
	imac = [
		["DEPLOIEMENT", 11],
		["Demande", 7],
	];
	mcoNb = getModelNb(data, mco);
	imacNb = getModelNb(data, imac);
	i = -1;
	number = $(".number span").each(function(i)
	{
		console.log(i);
		if (i == 1)
			$(this).html(data.length);
		else if (i == 0)
			$(this).html(mcoNb);
		else if (i == 2)
			$(this).html(imacNb);
	});
	return (1);
}

function initMCOPie(data)
{
	if (typeof(AmCharts) === 'undefined' || $('#dashboard_amchart_4').size() === 0)
		return ;
	i = -1;
	provider = [{}];
	while (data[++i])
	{
		j = -1;
		while (provider[++j])
		{
			if (provider[j]["status"] == data[i][2])
			{
				provider[j]["value"]++;
				break ;
			}
		}
		if (j == provider.length)
			provider[j] = {"status": data[i][2], "value": 1};
	}
	var chart = AmCharts.makeChart("dashboard_amchart_4", {
		"type": "pie",
		"theme": "light",
		// "path": "/securinfor/public/assets/global/plugins/amcharts/ammap/images/",
		"dataProvider": provider,
		// [{
		// 	"country": "Lithuania",
		// 	"value": 260
		// }, {
		// 	"country": "Ireland",
		// 	"value": 201
		// }, {
		// 	"country": "Germany",
		// 	"value": 65
		// }, {
		// 	"country": "Australia",
		// 	"value": 39
		// }, {
		// 	"country": "UK",
		// 	"value": 19
		// }, {
		// 	"country": "Latvia",
		// 	"value": 10
		// }],
		"valueField": "value",
		"titleField": "status",
		"outlineAlpha": 0.4,
		"depth3D": 15,
		"balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
		"angle": 20,
		"export": {
			"enabled": true
		}
	});
	jQuery('.chart-input').off().on('input change', function() {
		var property = jQuery(this).data('property');
		var target = chart;
		var value = Number(this.value);
		chart.startDuration = 0;

		if (property == 'innerRadius') {
			value += "%";
		}

		target[property] = value;
		chart.validateNow();
	});
}

function initAmChart3(data)
{
	if (typeof(AmCharts) === 'undefined' || $('#dashboard_amchart_3').size() === 0) {
		return;
	}
	i = -1;
	provider = [{}];
	while (data[++i])
	{
		j = -1;
		while (provider[++j])
		{
			if (provider[j]["status"] == data[i][2])
			{
				provider[j]["value"]++;
				break ;
			}
		}
		if (j == provider.length)
			provider[j] = {"status": data[i][2], "value": 1};
	}
	var chart = AmCharts.makeChart("dashboard_amchart_3", {
		"type": "serial",
		"addClassNames": true,
		"theme": "light",
		// "path": "../assets/global/plugins/amcharts/ammap/images/",
		"autoMargins": false,
		"marginLeft": 30,
		"marginRight": 8,
		"marginTop": 10,
		"marginBottom": 26,
		"balloon": {
			"adjustBorderColor": false,
			"horizontalPadding": 10,
			"verticalPadding": 10,
			"color": "#ffffff"
		},
		"dataProvider": [{
			"year": 2009,
			"income": 23.5,
			"expenses": 21.1
		}, {
			"year": 2010,
			"income": 26.2,
			"expenses": 30.5
		}, {
			"year": 2011,
			"income": 30.1,
			"expenses": 34.9
		}, {
			"year": 2012,
			"income": 29.5,
			"expenses": 31.1
		}, {
			"year": 2013,
			"income": 30.6,
			"expenses": 28.2,
		}, {
			"year": 2014,
			"income": 34.1,
			"expenses": 32.9,
			"dashLengthColumn": 50,
			"alpha": 0.2
		}],
		"valueAxes": [{
			"axisAlpha": 0,
			"position": "left"
		}],
		"startDuration": 1,
		"graphs": [{
			"balloonText": "<span style='font-size:12px;'>[[title]] in [[category]]:<br><span style='font-size:20px;'>[[value]]</span> [[additional]]</span>",
			"fillAlphas": 1,
			"title": "Income",
			"type": "column",
			"valueField": "income",
		}, {
			"id": "graph2",
			"balloonText": "<span style='font-size:12px;'>[[title]] in [[category]]:<br><span style='font-size:20px;'>[[value]]</span> [[additional]]</span>",
			"bullet": "round",
			"lineThickness": 3,
			"bulletSize": 7,
			"bulletBorderAlpha": 1,
			"bulletColor": "#FFFFFF",
			"useLineColorForBulletBorder": true,
			"bulletBorderThickness": 3,
			"fillAlphas": 0,
			"lineAlpha": 1,
			"title": "Expenses",
			"valueField": "expenses"
		}],
		"categoryField": "year",
		"categoryAxis": {
			"gridPosition": "start",
			"axisAlpha": 0,
			"tickLength": 0
		},
		"export": {
			"enabled": true
		}
	});
}

function initDashboard(start, end)
{
	if (start == 0 || end == 0)
	{
		start = moment().format('YYYYMMDD') + "00";
		end = moment().format('YYYYMMDD') + "00";
	}
	console.log("start = " + start + ", end = " + end);
	$.ajax(
	{
		url: "dashboard/getData",
		type: "POST",
		data: "start=" + start + "&end=" + end,
		dataType: "json",
		success: function(json)
		{
			initStat(json);
			initMCOPie(json);
			initAmChart3(json);
		},
		error: function(jqXHR, textStatus, errorThrown)
		{
			console.log(textStatus);
			console.log(errorThrown);
		},
	});
}

function initDashboardDaterange()
{
	if (!jQuery().daterangepicker)
		return;

	$('#dashboard-report-range').daterangepicker({
		"ranges": {
			'Today': [moment(), moment()],
			'Yesterday': [moment().subtract('days', 1), moment().subtract('days', 1)],
			'Last 7 Days': [moment().subtract('days', 6), moment()],
			'Last 30 Days': [moment().subtract('days', 29), moment()],
			'This Month': [moment().startOf('month'), moment().endOf('month')],
			'Last Month': [moment().subtract('month', 1).startOf('month'), moment().subtract('month', 1).endOf('month')]
		},
		"locale": {
			"format": "MM/DD/YYYY",
			"separator": " - ",
			"applyLabel": "Apply",
			"cancelLabel": "Cancel",
			"fromLabel": "From",
			"toLabel": "To",
			"customRangeLabel": "Custom",
			"daysOfWeek": [
				"Su",
				"Mo",
				"Tu",
				"We",
				"Th",
				"Fr",
				"Sa"
			],
			"monthNames": [
				"January",
				"February",
				"March",
				"April",
				"May",
				"June",
				"July",
				"August",
				"September",
				"October",
				"November",
				"December"
			],
			"firstDay": 1
		},
		//"startDate": "11/08/2015",
		//"endDate": "11/14/2015",
		opens: (App.isRTL() ? 'right' : 'left'),
	}, function(start, end, label) {
		if ($('#dashboard-report-range').attr('data-display-range') != '0') {
			$('#dashboard-report-range span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
		}
		initDashboard(start.format('YYYYMMDD') + "00", end.format('YYYYMMDD') + "00");
	});
	 if ($('#dashboard-report-range').attr('data-display-range') != '0') {
		$('#dashboard-report-range span').html(moment().subtract('days', 29).format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));
	}
	$('#dashboard-report-range').show();
};

function initDRP()
{
	jQuery(document).ready(function() {
		initDashboardDaterange();
	});
}
