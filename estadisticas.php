<?php

require_once './config.php';
require_once './include/smarty/libs/Smarty.class.php';
require_once './include/class.Conexion.BD.php';

$mySmart = new Smarty();

$mySmart->template_dir = 'templates';
$mySmart->compile_dir = 'templates_c';

$conn = new ConexionBD("mysql", SERVER, BD_INMOBILIARIA, USUARIO_BD, CLAVE_BD);
$conn->conectar();

//Logica para las estadisticas

$mySmart->display("estadisticas.tpl");
?>