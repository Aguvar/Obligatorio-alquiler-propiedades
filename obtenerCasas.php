<?php

require_once 'include/class.Conexion.BD.php';
require_once 'config.php';

$conn = new ConexionBD('mysql', SERVER, BD_INMOBILIARIA, USUARIO_BD, CLAVE_BD);

if ($conn) {

    $conn->conectar();

    $sql = $_POST["sql"];

    if ($conn->consulta($sql)) {

        $json = json_encode($conn->restantesRegistros());

        echo $json;
    }
}
