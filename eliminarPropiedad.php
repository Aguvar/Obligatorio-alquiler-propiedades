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

$mySmart->display("eliminarPropiedad.tpl");
