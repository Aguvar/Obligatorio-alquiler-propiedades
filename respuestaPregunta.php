<?php

require_once './include/smarty/libs/Smarty.class.php';

$mySmart = new Smarty();

if (isset($_COOKIE["loggedUser"])) {
    $log = true;
    $name = $_COOKIE["loggedUser"];
    $mySmart->assign("nombre", $name);
} else {
    $log = false;
}

$mySmart->assign("log", $log);

$id = $_GET["id"];
$texto = $_GET["texto"];

$mySmart->assign("id", $id);
$mySmart->assign("texto", $texto);

$mySmart->display("respuestaPregunta.tpl");
