<?php

require_once './config.php';
require_once './include/class.Conexion.BD.php';

$respuesta = $_POST["respuesta"];
$id = $_POST["id"];
$fecha = time();

$conn = new ConexionBD('mysql', SERVER, BD_INMOBILIARIA, USUARIO_BD, CLAVE_BD);

if ($conn) {
    
    $conn->conectar();
    
    $sql = 'UPDATE preguntas SET respuesta="' . $respuesta .  '",fecha_respuesta=' . $fecha . ' WHERE id = ' . $id;
    
    $conn->consulta($sql);
    
    header("Location: private.php");
}

