<?php

include_once 'config.php';
include_once './include/smarty/libs/Smarty.class.php';

$loginSmarty = new Smarty();

$loginSmarty->template_dir = 'templates';
$loginSmarty->compile_dir = 'templates_c';

$loginSmarty->display("login.tpl");
?>