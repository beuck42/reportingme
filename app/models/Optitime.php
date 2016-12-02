<?php

use Phalcon\Mvc\Model;

class Optitime extends Model
{
	public function initOptitime($start, $end, $connexion)
	{
		$connexion->connect();
		$data = $connexion->fetchAll("SELECT DATE_CREATION, NOM_MODEL, STATUS,
						LONGITUDE, LATITUDE, NOM_CLIENT
						-- , kizeo.FIN
						FROM optitime
						-- LEFT JOIN kizeo ON optitime2.NOM_TICKET = kizeo.NUM_TICKET
						WHERE DATE_CREATION >= :start
						AND DATE_CREATION <= :end
						AND BD_RDV = 'NON'
						ORDER BY DATE_CREATION",
						Phalcon\Db::FETCH_ASSOC,
						array("start" => $start, "end" => $end));
		$i = 0;
		$ret = "";
		foreach ($data as $value)
		{
			$ret[$i]["client"] = utf8_encode($value["NOM_CLIENT"]);
			$ret[$i]["model"] = utf8_encode($value["NOM_MODEL"]);
			$ret[$i]["status"] = utf8_encode($value["STATUS"]);
			$ret[$i]["start"] = utf8_encode($value["DATE_CREATION"]);
			// $ret[$i]["end"] = utf8_encode($value["FIN"]);
			$ret[$i]["longitude"] = utf8_encode($value["LONGITUDE"]);
			$ret[$i]["latitude"] = utf8_encode($value["LATITUDE"]);
			$i++;
		}
		return ($ret);
	}

	public function initInterventions($start, $end, $connexion)
	{
		$connexion->connect();
		$data = $connexion->fetchAll("SELECT ID_JOB, IDENTIFIANT, STATUS, NOM_CLIENT,
						NOM_TICKET, DATE_CREATION, VILLE, CODE_POSTAL,
						TECHNICIEN, NOM_MODEL, BD_RDV,
						BD_LOGISTIQUE, BD_DESCRIPTION,
						BD_COMMENTAIRE_TECH, BD_STATUT_INTERVENTION
						FROM optitime
						WHERE DATE_CREATION >= :start
						AND DATE_CREATION <= :end
						AND BD_RDV = 'NON'
						ORDER BY DATE_CREATION",
						Phalcon\Db::FETCH_ASSOC,
						array("start" => $start, "end" => $end));
		$i = 0;
		// return ($data);
		$ret = "";
		foreach ($data as $value)
		{
			$ret[$i]["ID_JOB"] = utf8_encode($value["ID_JOB"]);
			$ret[$i]["IDENTIFIANT"] = utf8_encode($value["IDENTIFIANT"]);
			$ret[$i]["STATUS"] = utf8_encode($value["STATUS"]);
			$ret[$i]["NOM_CLIENT"] = utf8_encode($value["NOM_CLIENT"]);
			$ret[$i]["NOM_TICKET"] = utf8_encode($value["NOM_TICKET"]);
			$ret[$i]["DATE_CREATION"] = utf8_encode($value["DATE_CREATION"]);
			$ret[$i]["VILLE"] = utf8_encode($value["VILLE"]);
			$ret[$i]["CODE_POSTAL"] = utf8_encode($value["CODE_POSTAL"]);
			$ret[$i]["TECHNICIEN"] = utf8_encode($value["TECHNICIEN"]);
			$ret[$i]["NOM_MODEL"] = utf8_encode($value["NOM_MODEL"]);
			$ret[$i]["BD_RDV"] = utf8_encode($value["BD_RDV"]);
			$ret[$i]["BD_LOGISTIQUE"] = utf8_encode($value["BD_LOGISTIQUE"]);
			$ret[$i]["BD_DESCRIPTION"] = utf8_encode($value["BD_DESCRIPTION"]);
			$ret[$i]["BD_COMMENTAIRE_TECH"] = utf8_encode($value["BD_COMMENTAIRE_TECH"]);
			$ret[$i]["BD_STATUT_INTERVENTION"] = utf8_encode($value["BD_STATUT_INTERVENTION"]);
			$i++;
		}
		return ($ret);
	}

	public function initLogistique($start, $end, $connexion)
	{
		$connexion->connect();
		$data = $connexion->fetchAll("SELECT NOM_TICKET, VILLE, TECHNICIEN,
						BD_DESCRIPTION, DATE_CREATION
						FROM optitime
						WHERE DATE_CREATION >= :start
						AND DATE_CREATION <= :end
						AND BD_LOGISTIQUE = :state
						ORDER BY DATE_CREATION",
						Phalcon\Db::FETCH_ASSOC,
						array("start" => $start, "end" => $end, "state" => utf8_decode('A préparer')));
		$i = 0;
		// return ($data);
		$ret = "";
		foreach ($data as $value)
		{
			$ret[$i]["NOM_TICKET"] = utf8_encode($value["NOM_TICKET"]);
			$ret[$i]["DATE_CREATION"] = utf8_encode($value["DATE_CREATION"]);
			$ret[$i]["VILLE"] = utf8_encode($value["VILLE"]);
			$ret[$i]["TECHNICIEN"] = utf8_encode($value["TECHNICIEN"]);
			$ret[$i]["BD_DESCRIPTION"] = utf8_encode($value["BD_DESCRIPTION"]);
			$i++;
		}
		return ($ret);
	}

	public function initTechnicien($start, $end, $connexion)
	{
		$connexion->connect();
		$data = $connexion->fetchAll("SELECT NOM_MODEL, TECHNICIEN, DATE_CREATION
						FROM optitime
						WHERE DATE_CREATION >= :start
						AND DATE_CREATION <= :end
						AND BD_RDV = 'NON'
						AND TECHNICIEN IS NOT NULL
						ORDER BY DATE_CREATION",
						Phalcon\Db::FETCH_ASSOC,
						array("start" => $start, "end" => $end));
		$i = 0;
		// return ($data);
		$ret = "";
		foreach ($data as $value)
		{
			$ret[$i]["model"] = utf8_encode($value["NOM_MODEL"]);
			$ret[$i]["start"] = utf8_encode($value["DATE_CREATION"]);
			$ret[$i]["technicien"] = utf8_encode($value["TECHNICIEN"]);
			$i++;
		}
		return ($ret);
	}
}

?>
