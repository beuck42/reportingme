<?php

use Phalcon\Mvc\Controller;

class IndexController extends Controller
{
	public function indexAction()
	{
	/*
	**	Si l'utilisateur est déjà connecté on le redirige vers le dashboard,
	**	sinon vers la page de connection
	*/
		if ($this->session->get("auth"))
			return ($this->response->redirect("connexion/success"));
		else
			return ($this->dispatcher->forward(array("controller" => "connexion", "action" => "connect")));
	}
}

?>
