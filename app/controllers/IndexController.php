<?php

use Phalcon\Mvc\Controller;

class IndexController extends Controller
{
	public function indexAction()
	{
		if ($this->session->get("auth"))
			return ($this->response->redirect("connexion/success"));
		else
			return ($this->dispatcher->forward(array("controller" => "connexion", "action" => "connect")));
	}
}

?>
