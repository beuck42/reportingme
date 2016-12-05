function format(data)
{
	return '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">' +
		'<tr>' +
			'<td>Description complète:</td>' +
			'<td>' + data.BD_DESCRIPTION + '</td>' +
		'</tr>' +
	'</table>';
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
			keys = [
				"NOM_TICKET",
				"DATE_CREATION",
				"VILLE",
				"TECHNICIEN",
				"BD_DESCRIPTION",
			];
			formatDataTable(json, keys);
			dataTable.clear();
			dataTable.rows.add(dataFormated).draw();
			dataTable.on('click', 'td.details-control', function ()
			{
				var tr = $(this).closest('tr');
				var row = dataTable.row(tr);

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
