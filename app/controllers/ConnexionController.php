<?php

use Phalcon\Mvc\Controller;

class ConnexionController extends Controller
{
	private function _registerSession(Membres $user)
	{
		$this->session->set("auth", array("id" => $user->id, "name" => $user->pseudo));
	}

	public function connectAction()
	{
		if ($this->session->get("auth"))
			return ($this->response->redirect("connexion/success"));
	}

	public function startAction()
	{
		if ($this->request->isPost())
		{
			$pseudoOrEmail = $this->request->getPost("email");
			$password = $this->request->getPost("password");
			$user = Membres::findFirst([
				"(email = :email: OR pseudo = :pseudo:) AND mdp = :password:",
				"bind" => ["email" => $pseudoOrEmail, "pseudo" => $pseudoOrEmail, "password" => hash("sha512", $password)]
			]);
			if ($user != false)
			{
				$this->_registerSession($user);
				return ($this->response->redirect("connexion/success"));
			}
		}
		return ($this->response->redirect("connexion/fail"));
	}

	public function disconnectAction()
	{
		$this->session->remove("auth");
		return ($this->response->redirect(""));
	}

	public function successAction()
	{
		return ($this->response->redirect("dashboard"));
	}

	public function failAction()
	{
		return ($this->response->redirect(""));
	}

	public function mdpOublieAction()
	{
		echo "Tu déconnes ...!";
	}
}

?>
