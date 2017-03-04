<?php

require_once './config.php';
require_once './include/smarty/libs/Smarty.class.php';

$mySmart = new Smarty();

$mySmart->template_dir = 'templates';
$mySmart->compile_dir = 'templates_c';


$mySmart->display("contact.tpl");
?>
