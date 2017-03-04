<?php

include_once 'config.php';
include_once './include/smarty/libs/Smarty.class.php';

if (isset($_GET["err"])) {
    $error = $_GET["err"];
} else {
    $error = "0";
}

$loginSmarty = new Smarty();

$loginSmarty->template_dir = 'templates';
$loginSmarty->compile_dir = 'templates_c';

switch ($error) {
    case "0":
        $mensaje = "";
        break;
    case "1":
        $mensaje = "El nombre de usuario y la contraseña no coinciden";
        break;
    default:
        $mensaje = "";
        break;
}

$loginSmarty->assign("errMsg", $mensaje);

$loginSmarty->display("login.tpl");
?>