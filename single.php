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

    $sql = 'SELECT barrios.nombre AS barrio, propiedades.precio, propiedades.titulo, propiedades.mts2, propiedades.habitaciones, propiedades.banios, propiedades.garage, propiedades.texto, propiedades.barrio_id
            FROM propiedades
            INNER JOIN barrios ON barrios.id = propiedades.barrio_id
            WHERE propiedades.id = :idCasa';

    $parametros = array(
        array('idCasa', $idCasa, 'int', 0)
    );

    if ($conn->consulta($sql, $parametros)) {

        $infoCasa = $conn->restantesRegistros();

        $mts = $infoCasa[0]["mts2"];
        $precio = $infoCasa[0]["precio"];
        $barrio = $infoCasa[0]["barrio_id"];

        $mySmart->assign('info', $infoCasa);
    } else {
        echo 'consulta not ok';
    }

    //Precio/mts2
    $promedioCasa = $precio / $mts;

    $mySmart->assign("promedioCasa", (int)$promedioCasa);

    $sql = "SELECT AVG(precio)/AVG(mts2) AS promedio FROM `propiedades` WHERE precio != 0 AND barrio_id = :idBarrio";    
    
    $sqlPreguntas = "SELECT texto, respuesta FROM preguntas WHERE id_propiedad = " . $idCasa . " AND respuesta IS NOT NULL";

    $parametros = array(
        array('idBarrio', (int)$barrio, 'int', 0)
    );

    if ($conn->consulta($sql, $parametros)) {
    
        $promedioBarrio = $conn->siguienteRegistro();
        
        $mySmart->assign("promedioBarrio", (int)$promedioBarrio);
        
        
    } else {
        echo 'consulta not ok';
    }
    
     if ($conn->consulta($sqlPreguntas)) {
    
        $preguntas = $conn->restantesRegistros();
        
        $mySmart->assign("preguntas", $preguntas);
        
    } else {
        echo 'consulta not ok';
    }
} else {
    echo 'Not ok';
}

$mySmart->assign("idCasa", $idCasa);

$mySmart->display('templates/single.tpl');
?>