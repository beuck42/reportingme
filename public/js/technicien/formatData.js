function formatKizeo(data)
{
	var i = -1;
	var j;

	while (data[++i])
	{
		j = -1;
		while (dataFormated["kizeo"][++j])
		{
			if (data[i]["name"] == dataFormated["kizeo"][j][0] &&
				data[i]["firstname"] == dataFormated["kizeo"][j][1] &&
			data[i]["email"] == dataFormated["kizeo"][j][2])
			{
				dataFormated["kizeo"][j][3] += parseInt(data[i]["note"]);
				dataFormated["kizeo"][j][4]++;
				break ;
			}
		}
		if (j == dataFormated["kizeo"].length)
		{
			dataFormated["kizeo"][j] = [];
			dataFormated["kizeo"][j][0] = data[i]["name"];
			dataFormated["kizeo"][j][1] = data[i]["firstname"];
			dataFormated["kizeo"][j][2] = data[i]["email"];
			dataFormated["kizeo"][j][3] = parseInt(data[i]["note"]);
			dataFormated["kizeo"][j][4] = 1;
		}
	}
	j = -1;
	while (dataFormated["kizeo"][++j])
		dataFormated["kizeo"][j][3] = (dataFormated["kizeo"][j][3] / dataFormated["kizeo"][j][4]).toFixed(2);
}

function check_add_filtre(toCheck)
{
	var i = 0;
	while (dataFormated["filtre"][i] && dataFormated["filtre"][i] != toCheck)
		i++;
	if (i == dataFormated["filtre"].length)
		dataFormated["filtre"][i] = toCheck;
}

function formatOptitime(data)
{
	var i = -1;
	var j, k, date, inter, filtre;
	var formatCalc = [
		"YYYY-MM-DD",
		"YYYY-MM-DD",
		"YYYY-MM",
		"YYYY"
	];
	/* liste des nom_model pour les interventions imac */
	var mco = [
		["INCIDENT LCL", 8],
		["Intervention", 12],
	];
	/* liste des nom_model pour les interventions mco */
	var imac = [
		["DEPLOIEMENT", 11],
		["Demande", 7],
	];

	ifmt = getIteFormat(data);
	while (data[++i])
	{
		j = -1;
		date = moment(data[i]["start"], formatCalc[ifmt]).format(formatCalc[ifmt]);
		check_add_filtre(data[i]["technicien"]);
		while (mco[++j] || imac[j])
		{
			if (mco[j] && !strncmp(data[i]["model"], mco[j][0], mco[j][1]))
				inter = "_mco";
			else if (imac[j] && !strncmp(data[i]["model"], imac[j][0], imac[j][1]))
				inter = "_imac";
		}
		filtre = data[i]["technicien"] + inter;
		console.log(filtre);
		k = -1;
		while (dataFormated["optitime"][++k])
			if (dataFormated["optitime"][k]["date"] == date)
			{
				if (dataFormated["optitime"][k][filtre] == undefined)
					dataFormated["optitime"][k][filtre] = 0;
				if (dataFormated["optitime"][k]["Tous" + inter] == undefined)
					dataFormated["optitime"][k]["Tous" + inter] = 0;
				dataFormated["optitime"][k]["Tous" + inter]++;
				dataFormated["optitime"][k][filtre]++;
				break ;
			}
		if (k == dataFormated["optitime"].length)
		{
			dataFormated["optitime"][k] = {};
			dataFormated["optitime"][k]["date"] = date;
			dataFormated["optitime"][k]["Tous" + inter] = 1;
			dataFormated["optitime"][k][filtre] = 1;
		}
	}
}

function formatData(data)
{
	dataFormated = {
		"kizeo": [],
		"optitime": [],
		"filtre": [],
	};
	formatKizeo(data["kizeo"]);
	formatOptitime(data["optitime"]);
}
