<?php

use Phalcon\Mvc\Model;

class Kizeo extends Model
{
	public function initKizeo($start, $end, $connexion)
	{
		$connexion->connect();
		$data = $connexion->fetchAll("SELECT nom_technicien, prenom_technicien,
						email_technicien, note
						FROM kizeo
						WHERE debut >= :start
						AND debut <= :end",
						Phalcon\Db::FETCH_ASSOC,
						array("start" => $start, "end" => $end));
		$i = 0;
		$ret = "";
		foreach ($data as $value)
		{
			$ret[$i]["name"] = utf8_encode($value["nom_technicien"]);
			$ret[$i]["firstname"] = utf8_encode($value["prenom_technicien"]);
			$ret[$i]["email"] = utf8_encode($value["email_technicien"]);
			$ret[$i]["note"] = utf8_encode($value["note"]);
			$i++;
		}
		return ($ret);
	}
}

?>
