<?php

include_once 'include/smarty/libs/Smarty.class.php';
require_once 'include/class.Conexion.BD.php';
require_once 'config.php';

$idCasa = $_GET['id'];

$mySmart = new Smarty();

$mySmart->template_dir = 'templates';
$mySmart->compile_dir = 'templates_c';

if (isset($_COOKIE["loggedUser"])) {
    $log = true;
    $name = $_COOKIE["loggedUser"];
    $mySmart->assign("nombre", $name);
} else {
    $log = false;
}

$mySmart->assign("log", $log);


$conn = new ConexionBD('mysql', SERVER, BD_INMOBILIARIA, USUARIO_BD, CLAVE_BD);

if ($conn) {
    $conn->conectar();
    
    $sql = 'SELECT barrios.nombre AS barrio, propiedades.precio, propiedades.titulo, propiedades.mts2, propiedades.habitaciones, propiedades.banios, propiedades.garage, propiedades.texto
            FROM propiedades
            INNER JOIN barrios ON barrios.id = propiedades.barrio_id
            WHERE propiedades.id = :idCasa';

    $parametros = array(
        array('idCasa',$idCasa,'int',0)
    );

    if ($conn->consulta($sql,$parametros)) {

//        print_r($conn->restantesRegistros());
        $mySmart->assign('info', $conn->restantesRegistros());
    } else {
        echo 'consulta not ok';
    }
} else {
    echo 'Not ok';
}

$mySmart->display('templates/single.tpl');
?>