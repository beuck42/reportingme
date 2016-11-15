<?php

use Phalcon\Mvc\Model;

class Membres extends Model
{
	public $id;
	public $pseudoOrEmail;
	public $mdp;
	public $entreprise;
	public $admin;
}

?>
