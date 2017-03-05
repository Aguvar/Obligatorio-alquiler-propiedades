<?php

include_once 'include/smarty/libs/Smarty.class.php';
//require_once 'include/class.Conexion.BD.php';
require_once 'config.php';



$mySmart = new Smarty();

$mySmart->template_dir = 'templates';
$mySmart->compile_dir = 'templates_c';

if (isset($_COOKIE["loggedUser"])) {
    $log = true;
    $name = $_COOKIE["loggedUser"];
    $mySmart->assign("nombre", $name);
} else {
    $log = false;
}

$mySmart->assign("log", $log);


$mySmart->display('templates/index.tpl');
?>