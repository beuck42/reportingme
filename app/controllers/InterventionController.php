<?php

use Phalcon\Mvc\Controller;

class InterventionController extends Controller
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
			$optitime = new Optitime;
			$data = $optitime->initInterventions($start, $end, $connexion);
			$this->response->setContent(json_encode($data, JSON_UNESCAPED_UNICODE));
			return ($this->response);
		}
	}
}

?>
