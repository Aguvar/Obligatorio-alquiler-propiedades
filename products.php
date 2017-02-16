<?php

include_once 'include/smarty/libs/Smarty.class.php';
require_once 'include/class.Conexion.BD.php';
require_once 'config.php';

$mySmart = new Smarty();

$mySmart->template_dir = 'templates';
$mySmart->compile_dir = 'templates_c';


$conn = new ConexionBD('mysql', SERVER, BD_INMOBILIARIA, USUARIO_BD, CLAVE_BD);

if ($conn) {
    $conn->conectar();
    
    $sql = 'SELECT barrio_id, precio, titulo FROM propiedades';
    $sql .= ' WHERE eliminado != 0';
    

    if ($conn->consulta($sql)) {
        echo 'consulta ok';
    } else {
        echo 'consulta not ok';
    }
} else {
    echo 'Not ok';
}

$mySmart->display('templates/products.tpl');
?>