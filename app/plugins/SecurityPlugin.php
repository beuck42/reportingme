<?php

use Phalcon\Acl;
use Phalcon\Events\Event;
use Phalcon\Mvc\User\Plugin;
use Phalcon\Mvc\Dispatcher;
use Phalcon\Acl\Role;
use Phalcon\Acl\Adapter\Memory as AclList;
use Phalcon\Acl\Resource;

class SecurityPlugin extends Plugin
{
	public function getAcl()
	{
		/* On prépare l'acl */
		$acl = new AclList();
		$acl->setDefaultAction(Acl::DENY);
		/* liste des roles de l'application */
		$roles = [
			"users" => new Role("Users"),
			"guests" => new Role("Guests"),
		];
		/* Ajout des roles dans l'acl */
		foreach ($roles as $role)
		{
			$acl->addRole($role);
		}
		/* liste des resources privées "controller" => ["action", "action"]*/
		$privateResources = [
			"connexion" => ["disconnect", "success"],
			"dashboard" => ["index", "getData"],
		];
		/* ajout des resources privées dans l'acl */
		foreach ($privateResources as $resourceName => $actions)
		{
			$acl->addResource(new Resource($resourceName), $actions);
		}
		/* liste des resources publiques "controller" => ["action", "action"]*/
		$publicResources = [
			"index" => ["index"],
			"connexion" => ["connect", "start", "mdpOublie", "fail"],
		];
		/* ajout des resources publiques dans l'acl */
		foreach ($publicResources as $resourceName => $actions)
		{
			$acl->addResource(new Resource($resourceName), $actions);
		}
		/* Autorisation des resources publiques */
		foreach ($roles as $role)
		{
			foreach ($publicResources as $resource => $actions)
			{
				$acl->allow($role->getName(), $resource, $actions);
			}
		}
		/* Autorisation des resources privées */
		foreach ($privateResources as $resource => $actions)
		{
			foreach ($actions as $action)
			{
				$acl->allow("Users", $resource, $action);
			}
			$this->persistent->acl = $acl;
		}
		return ($this->persistent->acl);
	}

	public function beforeExecuteRoute(Event $event, Dispatcher $dispatcher)
	{
		$auth = $this->session->get("auth");
		if ($auth)
			$role = "Users";
		else
			$role = "Guests";
		$controller = $dispatcher->getControllerName();
		$action = $dispatcher->getActionName();
		$acl = $this->getAcl();
		$allowed = $acl->isAllowed($role, $controller, $action);
		if (!$allowed)
		{
			$this->response->redirect("");
			return (false);
		}
	}
}

?>
