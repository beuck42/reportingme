function initSLA(data, filtre_mco, filtre_imac)
{
	var mcoOk = 0;
	var mcoNok = 0;
	var mco = Math.floor((Math.random() * 20) + 65);
	var imacOk = 0;
	var imacNok = 0;
	var imac = Math.floor((Math.random() * 20) + 65);

	if (data["stat_mco"] && data["stat_mco"][filtre_mco])
	{
		mcoOk = data["stat_mco"][filtre_mco]["ok"];
		mcoNok = data["stat_mco"][filtre_mco]["nok"];
		mco = mcoOk * 100 / (mcoOk + mcoNok)
	}
	if (data["stat_imac"] && data["stat_imac"][filtre_imac])
	{
		imacOk = data["stat_imac"][filtre_imac]["ok"];
		imacNok = data["stat_imac"][filtre_imac]["nok"];
		imac = imacOk * 100 / (imacOk + imacNok)
	}
	$("#SLA_MCO").html(mco + "%");
	$("#SLA_IMAC").html(imac + "%");
}

function initCaption(start, end, label)
{
	$(".caption-helper").each(function()
	{
		$(this).html("<br/ >" + label + "<br/ >" + moment(start, "YYYYMMDD").format("DD/MM/YYYY")
						+ " - " + moment(end, "YYYYMMDD").format("DD/MM/YYYY"));
	});
}

function initStat(data)
{
	if (data == undefined)
		return ;
	/* On assigne les data aux span des stats de app/views/dashboard/index.volt */
	$("#MCO").html(data["mcoNb"]);
	$("#TOTAL").html(data["total"]);
	$("#IMAC").html(data["imacNb"]);
}

function resetFilter()
{
	$(".optMco").remove();
	$(".optImac").remove();
}

function initFilter(data)
{
	var i = -1;
	var mco = $(".select_mco");
	var imac = $(".select_imac");

	$(".optMco").remove();
	$(".optImac").remove();
	if (data == undefined)
		return ;
	mco.append("<option class='optMco' value='Tous'>Tous</option>");
	while (data["filtre_mco"] && data["filtre_mco"][++i])
		mco.append("<option class='optMco btn btn-circle green btn-outlin' value='" + data["filtre_mco"][i] + "'>"
						+ data["filtre_mco"][i]
				+ "</option>");
	$(".select_mco").change(function ()
	{
		initSLA(data, $(this).val(), $(".select_imac.graph").val());
		updateGraph(data["graph_mco"], $(this).val(), "mco", "AM1");
		updatePie(data["pie_mco"], $(this).val(), "mco", "AM3");
		updateMap(data["map_mco"], $(this).val(), "mco", "AM5");
		$(".select_mco.graph").val($(this).val());
		$(".select_mco.camembert").val($(this).val());
		$(".select_mco.map").val($(this).val());
	});
	i = -1;
	imac.append("<option class='optImac' value='Tous'>Tous</option>");
	while (data["filtre_imac"] && data["filtre_imac"][++i])
		imac.append("<option class='optImac' value='" + data["filtre_imac"][i] + "'>"
						+ data["filtre_imac"][i]
				+ "</option>");
	$(".select_imac").change(function ()
	{
		initSLA(data, $(".select_mco.graph").val(), $(this).val());
		updateGraph(data["graph_imac"], $(this).val(), "imac", "AM2");
		updatePie(data["pie_imac"], $(this).val(), "imac", "AM4");
		updateMap(data["map_imac"], $(this).val(), "imac", "AM6");
		$(".select_imac.graph").val($(this).val());
		$(".select_imac.camembert").val($(this).val());
		$(".select_imac.map").val($(this).val());
	});
}
