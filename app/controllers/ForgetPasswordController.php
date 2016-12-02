<?php

use Phalcon\Mvc\Controller;
use Phalcon\Config\Adapter\Ini as ConfigIni;

class forgetPasswordController extends Controller
{
	private function setMail($user)
	{
		include "../app/lib/class.phpmailer.php";
		$config = new ConfigIni("../app/config/config.ini");
		$mail = new PHPmailer();
		$mail->IsSMTP();
		$mail->IsHTML(true);
		$mail->Host = "smtp.gmail.com";
		$mail->From = "mikatest42@gmail.com";
		$mail->FromName = "MikadoLabs";
		$mail->AddAddress($user->email);
		$mail->AddReplyTo("mikatest42@gmail.com");
		$mail->SMTPAuth = "on";
		$mail->Port = 587;
		$mail->Username = $config->email->email;
		$mail->Password = $config->email->password;
		$mail->CharSet = "UTF-8";
		$mail->Subject = "Changement de mot de passe";
		$url = "http://securinfor.mikadolabs.com/securinfor/forgetPassword/selectPassword?token=".$user->token;
		$mail->Body = "
			Bonjour ".$user->pseudo.",<br/>
			pour modifier votre mot de passe merci de suivre
			<a href='".$url."'>ce lien <a/><br/>
			Token à copier dans le formulaire: ".$user->token;
	}

	public function indexAction()
	{
		if ($this->request->isPost())
		{
			$pseudoOrEmail = $this->request->getPost("email");
			$user = Membres::findFirst([
				"email = :email: OR pseudo = :pseudo:",
				"bind" => ["email" => $pseudoOrEmail, "pseudo" => $pseudoOrEmail]
			]);
			if ($user != false)
			{
				$user->token = md5(time() * rand(400, 1000));
				$user->valid = time();
				$mail = setMail($user);
				if (!$mail->send())
				{
					$mail->SmtpClose();
					return ($this->response->redirect(""));
				}
				$user->save();
				$mail->SmtpClose();
			}
		}
		return ($this->response->redirect(""));
	}

	public function selectPasswordAction()
	{
		if ($this->request->getQuery("token"))
		{
			$token = $this->request->getQuery("token");
			$user = Membres::findFirst([
				"token = :token:",
				"bind" => ["token" => $token]
			]);
			if ($user != false)
				return ;
		}
		return ($this->response->redirect(""));
	}

	public function savePasswordAction()
	{
		if ($this->request->isPost())
		{
			$token = $this->request->getPost("token");
			$newPassword = $this->request->getPost("newPassword");
			$confirmPassword = $this->request->getPost("confirmPassword");
			$user = Membres::findFirst([
				"token = :token:",
				"bind" => ["token" => $token]
			]);
			if ($user != false)
			{
				if ($newPassword != $confirmPassword)
					return ($this->response->redirect("forgetPassword/selectPassword&token=".$token));
				$user->mdp = hash("sha512", $newPassword);
				$user->token = NULL;
				$user->valid = 0;
				$user->save();
			}
		}
		return ($this->response->redirect(""));
	}
}

?>
