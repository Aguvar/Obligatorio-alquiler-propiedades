<?php

require_once './config.php';
require_once './include/smarty/libs/Smarty.class.php';

$privateSmarty->template_dir = 'templates';
$privateSmarty->compile_dir = 'templates_c';

$mySmart = new Smarty();

if (isset($_COOKIE["loggedUser"])) {
    $log = true;
    $name = $_COOKIE["loggedUser"];
    $mySmart->assign("nombre", $name);
} else {
    $log = false;
}

$mySmart->assign("log", $log);

$mySmart->display("checkout.tpl");
?>