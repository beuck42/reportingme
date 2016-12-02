<?php

use Phalcon\Mvc\Controller;

class TechnicienController extends Controller
{
	public function indexAction()
	{
	}

	public function getDataAction()
	{
		if ($this->request->isPost())
		{
			$start = $this->request->getPost("start");
			$end = $this->request->getPost("end");
			$connexion = $this->di->get("db");
			// A FAIRE !!!!! Check la valeure input de start et end !!!!!
			$kizeo = new Kizeo;
			$optitime = new Optitime;
			$dataKizeo = $kizeo->initKizeo($start, $end, $connexion);
			$dataOptitime = $optitime->initTechnicien($start, $end, $connexion);
			$data = ["kizeo" => $dataKizeo, "optitime" => $dataOptitime];
			$this->response->setContent(json_encode($data, JSON_UNESCAPED_UNICODE));
			return ($this->response);
		}
	}
}

?>
