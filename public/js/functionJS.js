function formatDataTable(data, keys)
{
	var i = -1;
	dataFormated = [];

	while (data[++i])
	{
		dataFormated[i] = {};
		j = -1;
		while (keys[++j])
		{
			if (data[i][keys[j]])
				dataFormated[i][keys[j]] = data[i][keys[j]];
			else
				dataFormated[i][keys[j]] = "";
		}
	}
}

function diffDate(start, end)
{
	var start = moment(start, "YYYYMMDDHH").format("YYYYMMDD");
	var end = moment(end, "YYYYMMDDHH").format("YYYYMMDD");
	var day = 0;
	var d = 0;

	while (start < end)
	{
		d = moment(start, "YYYYMMDD").format("e");
		start = moment(start, "YYYYMMDD").add(1, "d").format("YYYYMMDD");
		if (d == 5 || d == 6)
			continue ;
		day++;
	}
	return (day)
}

function getIteFormat(data)
{
	if (!data || !data[0])
		return (0);
	var ifmt = 0;
	var nbDay;

	nbDay = diffDate(data[0]["start"], data[data.length - 1]["start"]);
	ifmt += nbDay > 5;
	ifmt += nbDay > 40;
	ifmt += nbDay > 250;
	return (ifmt);
}

function strncmp(str1, str2, lgth)
{
	var s1 = str1.substr(0, lgth);
	var s2 = str2.substr(0, lgth);
	if (s1 == s2)
		return (0);
	return (s1 > s2 ? 1 : -1);
}
