function initDaterange(page)
{
	if (!jQuery().daterangepicker)
		return;

	$('#dashboard-report-range').daterangepicker({
		"ranges": {
			'Aujourd\'hui': [moment(), moment()],
			'Hier': [moment().subtract('days', 1), moment().subtract('days', 1)],
			'7 derniers jours': [moment().subtract('days', 6), moment()],
			'30 derniers jours': [moment().subtract('days', 29), moment()],
			'Mois actuel': [moment().startOf('month'), moment().endOf('month')],
			'Dernier mois': [moment().subtract('month', 1).startOf('month'), moment().subtract('month', 1).endOf('month')]
		},
		"locale": {
			"format": "MM/DD/YYYY",
			"separator": " - ",
			"applyLabel": "Appliquer",
			"cancelLabel": "Annuler",
			"fromLabel": "De",
			"toLabel": "à",
			"customRangeLabel": "Personnalisé",
			"daysOfWeek": [
				"Di",
				"Lu",
				"Ma",
				"Me",
				"Je",
				"Ve",
				"Sa"
			],
			"monthNames": [
				"Janvier",
				"Février",
				"Mars",
				"Avril",
				"Mai",
				"Juin",
				"Juillet",
				"Août",
				"Septembre",
				"Octobre",
				"Novembre",
				"Decembre"
			],
			"firstDay": 1
		},
		"startDate": moment().subtract("days", 6).format('MM/DD/YYYY'),
		"endDate": moment().format('MM/DD/YYYY'),
		opens: (App.isRTL() ? 'right' : 'left'),
	}, function(start, end, label) {
		if ($('#dashboard-report-range').attr('data-display-range') != '0') {
			$('#dashboard-report-range span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
		}
		/* lorsqu'une date est choisis on modifie la page */
		if (page == "dashboard")
			initDashboard(start.format('YYYY-MM-DD') + " 00:00:00", end.format('YYYY-MM-DD') + " 99:99:99", label);
		else
			initDataTable(start.format('YYYY-MM-DD') + " 00:00:00", end.format('YYYY-MM-DD') + " 99:99:99", label);
	});
	if ($('#dashboard-report-range').attr('data-display-range') != '0') {
		$('#dashboard-report-range span').html(moment().subtract('days', 29).format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));
	}
	$('#dashboard-report-range').show();
};

function initDRP(page)
{
	jQuery(document).ready(function()
	{
		initDaterange(page);
	});
}
