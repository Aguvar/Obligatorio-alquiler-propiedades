<?php

require_once './config.php';
require_once './include/smarty/libs/Smarty.class.php';
require_once './include/class.Conexion.BD.php';

$conn = new ConexionBD('mysql', SERVER, BD_INMOBILIARIA, USUARIO_BD, CLAVE_BD);

if (!isset($_COOKIE["loggedUser"])) {
    header("Location: index.php");
    exit();
}

if ($conn) {
    $conn->conectar();

    //Consultar por las casas sin un orden especifico
    $sql = "SELECT id, operacion, barrio_id, precio, titulo, mts2, habitaciones, banios, garage, tipo FROM propiedades WHERE eliminado = 0 LIMIT 0,100";

    if ($conn->consulta($sql)) {

        $datosCasas = $conn->restantesRegistros();
    } else {
        echo 'error de consulta';
    }

    $sql = "SELECT id, id_propiedad, fecha, texto, respuesta, fecha_respuesta FROM preguntas WHERE respuesta IS NULL";

    if ($conn->consulta($sql)) {

        $preguntasSinResponder = $conn->restantesRegistros();
    }
} else {
    echo 'ERROR DE SERVIDOR';
    die();
}

$privateSmarty = new Smarty();

$privateSmarty->template_dir = 'templates';
$privateSmarty->compile_dir = 'templates_c';

if (isset($_COOKIE["loggedUser"])) {
    $log = true;
    $name = $_COOKIE["loggedUser"];
    $privateSmarty->assign("nombre", $name);
} else {
    $log = false;
}

$privateSmarty->assign("datosCasas", $datosCasas);
$privateSmarty->assign("preguntasSinResponder", $preguntasSinResponder);

$privateSmarty->assign("log", $log);

$privateSmarty->display("private.tpl");
?>

