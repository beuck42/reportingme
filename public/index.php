<?php

use Phalcon\Config\Adapter\Ini as ConfigIni;
use Phalcon\Loader;
use Phalcon\Di\FactoryDefault;
use Phalcon\Mvc\View;
use Phalcon\Mvc\Url as UrlProvider;
use Phalcon\Session\Adapter\Files as Session;
use Phalcon\Mvc\Application;
use Phalcon\Db\Adapter\Pdo\Mysql as DbAdapter;
use Phalcon\Mvc\Dispatcher;
use Phalcon\Events\Manager as EventsManager;

try
{
	$config = new ConfigIni("../app/config/config.ini");
	/*	On set l'autoloader */
	$loader = new Loader();
	$loader->registerDirs(
		[
			$config->application->controllersDir,
			$config->application->modelsDir,
			$config->application->pluginsDir,
		]
	);
	$loader->register();
	$di = new FactoryDefault();
	/* On set la db */
	$di->set("db", function () use ($config)
	{
		return (new DbAdapter
		(
			[
				"host"		=> $config->database->host,
				"username"	=> $config->database->username,
				"password"	=> $config->database->password,
				"dbname"	=> $config->database->name,
			]
		));
	});
	/*	On set le path des views */
	$di->set("view", function () use ($config)
	{
		$view = new View();
		$view->registerEngines([".volt" => "Phalcon\\Mvc\\View\\Engine\\Volt",]);
		$view->setViewsDir($config->application->viewsDir);
		return ($view);
	});
	/*	Set the base URI */
	$di->set("url", function () use ($config)
	{
		$url = new UrlProvider();
		$url->setBaseUri($config->application->baseUri);
		return ($url);
	});
	/* On lance la session */
	$di->setShared("session", function ()
	{
		$session = new Session();
		$session->start();
		return $session;
	});
	/* MVC dispatcher */
	$di->set("dispatcher", function ()
	{
		$eventsManager = new EventsManager();
		$eventsManager->attach("dispatch:beforeExecuteRoute", new SecurityPlugin());
		$eventsManager->attach("dispatch:beforeExecption", new NotFoundPlugin());
		$dispatcher = new Dispatcher();
		$dispatcher->setEventsManager($eventsManager);
		return ($dispatcher);
	});
	/* On prépare puis on lance l'application */
	$application = new Application($di);
	$response = $application->handle();
	$response->send();
}
catch (Exception $e)
{
	echo "Exception: ".$e->getMessage();
}

?>
