function check_add_filtre(toCheck, filtreName)
{
	var i = 0;
	while (dataFormated[filtreName][i] && dataFormated[filtreName][i] != toCheck)
		i++;
	if (i == dataFormated[filtreName].length)
		dataFormated[filtreName][i] = toCheck;
}

function formatInterData(data, inter)
{
	var j = -1;
	var date = moment(data["start"], formatCalc[ifmt]).format(formatPrint[ifmt]);

	/* On parcourt le tableau existant pour mettre à jour les données pour 'date' */
	while (dataFormated["graph_" + inter][++j])
		if (dataFormated["graph_" + inter][j]["date"] == date)
		{
			/* Si on trouve la date on rajoute un au nombre d'intervention */
			if (dataFormated["graph_" + inter][j][data["model"]] == undefined)
				dataFormated["graph_" + inter][j][data["model"]] = 0;
			dataFormated["graph_" + inter][j][data["model"]]++;
			dataFormated["graph_" + inter][j]["Tous"]++;
			break ;
		}
	if (j == dataFormated["graph_" + inter].length)
	{
		/* Si on a pas trouvé 'date' dans le tableau existant, on le créer */
		dataFormated["graph_" + inter][j] = {"date": date, "Tous": 1};
		dataFormated["graph_" + inter][j][data["model"]] = 1;
	}
}

function formatPieData(data, inter, filtre)
{
	var j = -1;
	if (!dataFormated["pie_" + inter][filtre])
		dataFormated["pie_" + inter][filtre] = [];
	while (dataFormated["pie_" + inter][filtre][++j])
		if (dataFormated["pie_" + inter][filtre][j]["status"] == data["status"])
		{
			dataFormated["pie_" + inter][filtre][j]["value"]++;
			break ;
		}
	if (j == dataFormated["pie_" + inter][filtre].length)
		dataFormated["pie_" + inter][filtre][j] = {"status": data["status"], "value": 1};
}

function formatSLAData(data, inter, filtre)
{
	if (data["client"] == "" || !data["client"] || !data["end"])
		return ;
	if (dataFormated["stat_" + inter][filtre] == undefined)
		dataFormated["stat_" + inter][filtre] = {"ok": 0, "nok": 0};
	nbDay = diffDate(data["start"], moment(data["end"], "YYYY-MM-DD HH:mm").format("YYYYMMDDHH"));
	if (nbDay < 2 || nbDay < 6 && inter == "imac")
		dataFormated["stat_" + inter][filtre]["ok"]++;
	else
		dataFormated["stat_" + inter][filtre]["nok"]++;
}

function formatMapData(data, inter, filtre)
{
	var j = -1;
	if (!dataFormated["map_" + inter][filtre])
		dataFormated["map_" + inter][filtre] = [];
	while (dataFormated["map_" + inter][filtre][++j])
	{
		// if (dataFormated["map_" + inter][filtre][j]["latitude"] == data["latitude"]
		// && dataFormated["map_" + inter][filtre][j]["longitude"] == data["longitude"])
		// 	dataFormated["map_" + inter][filtre][j]["scale"]++;
		// if (dataFormated["map_" + inter][filtre][j]["scale"] > max)
		// 	max = dataFormated["map_" + inter][filtre][j]["scale"];
	}
	if (j == dataFormated["map_" + inter][filtre].length)
	{
		dataFormated["map_" + inter][filtre][j] = {};
		dataFormated["map_" + inter][filtre][j]["latitude"] = data["latitude"];
		dataFormated["map_" + inter][filtre][j]["longitude"] = data["longitude"];
		dataFormated["map_" + inter][filtre][j]["type"] = "circle";
		dataFormated["map_" + inter][filtre][j]["color"] = "#6c00ff";
		dataFormated["map_" + inter][filtre][j]["scale"] = 1;
		dataFormated["map_" + inter][filtre][j]["title"] = "Client: " + data["client"];
	}
}

function formatStatData(data)
{
	var j = -1;
	/* On différencies les mco et imac */
	while (mco[++j] || imac[j])
	{
		if (mco[j] && !strncmp(data["model"], mco[j][0], mco[j][1]))
		{
			dataFormated["stat"]["mcoNb"]++;
			/* On prépare le filtre du graphe mco */
			check_add_filtre(data["model"], "filtre_mco");
			/* fonction de formatage des données pour le graphe MCO */
			formatInterData(data, "mco");
			/* fonction de formatage des données pour la pie MCO */
			formatPieData(data, "mco", data["model"]);
			formatPieData(data, "mco", "Tous");
			formatSLAData(data, "mco", data["model"]);
			formatSLAData(data, "mco", "Tous");
			formatMapData(data, "mco", "Tous");
			formatMapData(data, "mco", data["model"]);
		}
		else if (imac[j] && !strncmp(data["model"], imac[j][0], imac[j][1]))
		{
			dataFormated["stat"]["imacNb"]++;
			/* On prépare le filtre du graphe imac */
			check_add_filtre(data["model"], "filtre_imac");
			/* fonction de formatage des données pour le graphe IMAC */
			formatInterData(data, "imac");
			/* fonction de formatage des données pour la pie IMAC */
			formatPieData(data, "imac", data["model"]);
			formatPieData(data, "imac", "Tous");
			formatSLAData(data, "imac", data["model"]);
			formatSLAData(data, "imac", "Tous");
			formatMapData(data, "imac", "Tous");
			formatMapData(data, "imac", data["model"]);
		}
	}
	dataFormated["stat"]["total"]++;
}

function formatData(data)
{
	var i = -1;
	dataFormated =
	{
		"graph_mco": [],
		"graph_imac": [],
		"pie_mco": {},
		"pie_imac": {},
		"map_mco": {},
		"map_imac": {},
		"filtre_mco": [],
		"filtre_imac": [],
		"stat_mco": {},
		"stat_imac": {},
		"stat": {
			"total": 0,
			"mcoNb": 0,
			"imacNb": 0,
		},
	};
	/*
	**	Gestion du format de date pour le tris des données ainsi
	**	que pour l'affichage sur le graphique
	*/
	ifmt = getIteFormat(data);
	formatCalc = [
		"YYYY-MM-DD HH",
		"YYYY-MM-DD",
		"YYYY-MM",
		"YYYY"
	];
	formatPrint = [
		"DD-MM-YY HH:",
		"DD-MM-YY",
		"MMM-YYYY",
		"YYYY"
	];
	/* liste des nom_model pour les interventions imac */
	mco = [
		["INCIDENT LCL", 8],
		["Intervention", 12],
	];
	/* liste des nom_model pour les interventions mco */
	imac = [
		["DEPLOIEMENT", 11],
		["Demande", 7],
	];
	/* On parcours toutes les interventions pour formatter nos graphes */
	while (data[++i])
	{
		formatStatData(data[i]);
	}
	console.log(dataFormated["graph_mco"]);
}
