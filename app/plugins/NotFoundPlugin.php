<?php

use Phalcon\Events\Event;
use Phalcon\Mvc\User\Plugin;
use Phalcon\Mvc\Dispatcher;

class NotFoundPlugin extends Plugin
{
	public function beforeExecuteRoute(Event $event, Dispatcher $dispatcher)
	{
		$dispatcher->forward(array("controller" => "index", "action" => "index"));
		return (false);
	}
}

?>
