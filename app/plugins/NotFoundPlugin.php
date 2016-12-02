<?php

use Phalcon\Events\Event;
use Phalcon\Mvc\User\Plugin;
use Phalcon\Mvc\Dispatcher;

class NotFoundPlugin extends Plugin
{
	public function beforeException(Event $event, Dispatcher $dispatcher)
	{
	/* Si une exception survient on redirige vers la page de connection */
		$this->response->redirect("");
		return (false);
	}
}

?>
