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

if (isset($_COOKIE["loggedUser"])) {
    $log = true;
    $name = $_COOKIE["loggedUser"];
    $privateSmarty->assign("nombre", $name);
} else {
    $log = false;
}

$privateSmarty->assign("log", $log);

$privateSmarty->display("private.tpl");

?>

