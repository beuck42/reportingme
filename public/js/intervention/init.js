function format(data)
{
	return '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">' +
		'<tr>' +
			'<td>Description complète:</td>' +
			'<td>' + data.BD_DESCRIPTION + '</td>' +
		'</tr>' +
		'<tr>' +
			'<td>Commentaire du technicien:</td>'+
			'<td>' + data.BD_COMMENTAIRE_TECH + '</td>' +
		'</tr>' +
	'</table>';
}

function initDataTable(start, end, label)
{
	$.ajax({
		url: "intervention/getData",
		type: "POST",
		data: "start=" + start + "&end=" + end,
		dataType: "json",
		success: function(json)
		{
			/* si la requete réussi on initialise toutes les données */
			keys = [
				"ID_JOB",
				"IDENTIFIANT",
				"STATUS",
				"NOM_CLIENT",
				"NOM_TICKET",
				"DATE_CREATION",
				"VILLE",
				"CODE_POSTAL",
				"NOM_MODEL",
				"TECHNICIEN",
				"BD_RDV",
				"BD_LOGISTIQUE",
				"BD_DESCRIPTION",
				"BD_COMMENTAIRE_TECH",
				"BD_STATUT_INTERVENTION",
			];
			formatDataTable(json, keys);
			dataTable.clear();
			dataTable.rows.add(dataFormated).draw();
			dataTable.on('click', 'td.details-control', function ()
			{
				var tr = $(this).closest('tr');
				var row = dataTable.row( tr );

				if (row.child.isShown())
				{
					// This row is already open - close it
					row.child.hide();
					tr.removeClass('shown');
				}
				else
				{
					// Open this row
					row.child(format(row.data())).show();
					tr.addClass('shown');
				}
			});
		},
		error: function(jqXHR, textStatus, errorThrown)
		{
			console.log(textStatus);
			console.log(errorThrown);
		},
	});
}
