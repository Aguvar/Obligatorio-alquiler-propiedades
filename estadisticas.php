<?php

require_once './config.php';
require_once './include/smarty/libs/Smarty.class.php';
require_once './include/class.Conexion.BD.php';

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

$conn = new ConexionBD("mysql", SERVER, BD_INMOBILIARIA, USUARIO_BD, CLAVE_BD);
if ($conn->conectar()) {

    //Obtener valores de busqueda por un GET
    if (isset($_GET["ciudad"]) && isset($_GET["operacion"])) {

        switch ($_GET["ciudad"]) {
            case "any":
                $paramCiudad = '1';
                break;
            default:
                $paramCiudad = "barrios.ciudad_id = '" . $_GET["ciudad"] . "'";
                break;
        }
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

        $sql = 'SELECT COUNT(barrio_id) AS casas, barrios.nombre AS barrio, AVG(precio) / AVG(mts2) AS promedio, barrios.id FROM propiedades INNER JOIN barrios ON propiedades.barrio_id = barrios.id WHERE ' . $paramCiudad . ' AND ' . $paramOperacion . ' AND propiedades.precio > 0 GROUP BY barrio_id';


       /* $parametros = array(
            array('idCiudad', $idCiudad, 'int', 0),
            array('tipoOperacion', $tipoOperacion, 'string', 100)
        );*/

        if ($conn->consulta($sql)) {

            $mySmart->assign("datos", $conn->restantesRegistros());
        } else {
            
        }
    }

    $sql = "SELECT * FROM ciudades";

    if ($conn->consulta($sql)) {

        $mySmart->assign("ciudades", $conn->restantesRegistros());
    }
}



//Logica para las estadisticas


$mySmart->display("estadisticas.tpl");
?>
