<?php

include_once 'include/smarty/libs/Smarty.class.php';
require_once 'include/class.Conexion.BD.php';
require_once 'config.php';

if (isset($_GET["search"])) {

    switch ($_GET["operacion"]) {
        case "A":
            $paramOperacion = 'propiedades.operacion = "A"';
            break;
        case "V":
            $paramOperacion = "propiedades.operacion = 'V'";
            break;
        default:
            $paramOperacion = "1";
            break;
    }
    switch ($_GET["ciudad"]) {
        case "any":
            $paramCiudad = '1';
            break;
        default:
            $paramCiudad = "barrios.ciudad_id = '".$_GET["ciudad"]."'";
            break;
    }
} else {
    $paramOperacion = "1";
    $paramCiudad = "1";
}

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


    
    $sql = "SELECT barrios.nombre AS barrio, barrios.ciudad_id AS ciudad, propiedades.precio, propiedades.titulo, propiedades.id, propiedades.portada
            FROM propiedades
            INNER JOIN barrios ON barrios.id = propiedades.barrio_id
            WHERE " . $paramOperacion . " AND " . $paramCiudad . "
            AND propiedades.eliminado = 0
            ORDER BY propiedades.precio
            LIMIT 0 , 12";
    
    echo $sql;
    
    $parametros = array(
        array('operacion', $paramOperacion, 'string', 300)
    );

    


    if ($conn->consulta($sql, $parametros)) {

        $datosCasas = $conn->restantesRegistros();
        
        $mySmart->assign('casas', $datosCasas);
        
        
    } else {
        echo 'consulta not ok';
    }

    $sql = "SELECT id, nombre FROM barrios";
    if ($conn->consulta($sql, $parametros)) {

        $barrios = $conn->restantesRegistros();

        $mySmart->assign('barrios', $barrios);
    } else {
        echo 'consulta not ok';
    }

    $sql = "SELECT id, nombre FROM ciudades";
    if ($conn->consulta($sql, $parametros)) {

        $ciudades = $conn->restantesRegistros();

        $mySmart->assign('ciudades', $ciudades);
    } else {
        echo 'consulta not ok';
    }
} else {
    echo 'Not ok';
}

$mySmart->display('templates/products.tpl');
?>