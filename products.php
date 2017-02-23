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

    $sql = 'SELECT barrios.nombre AS barrio, propiedades.precio, propiedades.titulo, propiedades.id
            FROM propiedades
            INNER JOIN barrios ON barrios.id = propiedades.barrio_id
            WHERE propiedades.precio >0
            AND propiedades.eliminado =0
            ORDER BY propiedades.precio
            LIMIT 0 , 12';

    $parametros = array();

    if ($conn->consulta($sql)) {
        
//        print_r($conn->restantesRegistros());
        $mySmart->assign('casas', $conn->restantesRegistros());
        
    } else {
        echo 'consulta not ok';
    }
} else {
    echo 'Not ok';
}

$mySmart->display('templates/products.tpl');
?>