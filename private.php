<?php

require_once './config.php';
require_once './include/smarty/libs/Smarty.class.php';



if (!isset($_COOKIE["loggedUser"])) {
    header("Location: index.php");
    exit();
}

$privateSmarty = new Smarty();

$privateSmarty->template_dir = 'templates';
$privateSmarty->compile_dir = 'templates_c';

$privateSmarty->assign("nombre", $_COOKIE["loggedUser"]);

$privateSmarty->display("private.tpl");

?>

