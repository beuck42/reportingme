<?php

use Phalcon\Mvc\Controller;
use Phalcon\Db\Adapter\Pdo\Mysql;
use Phalcon\Db\Column;

class DashboardController extends Controller
{
	public function indexAction()
	{
	}

	public function getDataAction()
	{
		// $this->response->setContent(["start" => "untruc", "end" => "autre truc"]);
		// return ($this->response);
		if ($this->request->isPost())
		{
			$start = $this->request->getPost("start");
			$end = $this->request->getPost("end");
			$connexion = new Mysql([
			'host'		=>	'securinfor.mikadolabs.com',
			'dbname'	=>	'datamart',
			'username'	=>	'guillaume',
			'password'	=>	'Mikado42',
			]);
			$connexion->connect();
			$data = $connexion->fetchAll("SELECT DATE_CREATION, NOM_MODEL, STATUS
							FROM optitime2
							WHERE DATE_CREATION >= :start
							AND DATE_CREATION <= :end",
							Phalcon\Db::FETCH_ASSOC,
							array("start" => $start, "end" => $end));
			if ($data != false)
			{
				$i = 0;
				$test = "";
				foreach ($data as $value)
				{
					$test[$i][0] = utf8_encode($value["DATE_CREATION"]);
					$test[$i][1] = utf8_encode($value["NOM_MODEL"]);
					$test[$i][2] = utf8_encode($value["STATUS"]);
					$i++;
				}
				$this->response->setContent(json_encode($test, JSON_UNESCAPED_UNICODE));
				return ($this->response);
			}
			$this->response->setContent(json_encode(""));
			return ($this->response);
		}
	}
}

?>
