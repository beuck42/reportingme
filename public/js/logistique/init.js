function formatData(data)
{
	var i = -1;
	dataFormated = [];
	keys = [
		"NOM_TICKET",
		"DATE_CREATION",
		"VILLE",
		"TECHNICIEN",
		"BD_DESCRIPTION",
	];

	while (data[++i])
	{
		dataFormated[i] = [];
		j = -1;
		while (keys[++j])
		{
			if (data[i][keys[j]])
				dataFormated[i][j] = data[i][keys[j]];
			else
				dataFormated[i][j] = "";
		}
	}
}

function initDataTable(start, end, label)
{
	$.ajax({
		url: "logistique/getData",
		type: "POST",
		data: "start=" + start + "&end=" + end,
		dataType: "json",
		success: function(json)
		{
			/* si la requete réussi on initialise toutes les données */
			formatData(json);
			dataTable.fnClearTable();
			if (dataFormated.length)
				dataTable.fnAddData(dataFormated);
		},
		error: function(jqXHR, textStatus, errorThrown)
		{
			console.log(textStatus);
			console.log(errorThrown);
		},
	});
}
