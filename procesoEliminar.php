<?php

require_once './include/class.Conexion.BD.php';
require_once './config.php';

$id = $_POST["id"];
$motivo = $_POST["motivo"];

$conn = new ConexionBD("mysql", SERVER, BD_INMOBILIARIA, USUARIO_BD, CLAVE_BD);

if ($conn) {
    
    $conn->conectar();
    
    $sql = "UPDATE propiedades SET eliminado= 1 , motivo_baja_id = " . $motivo . " WHERE id = " . $id;
    
    $conn->consulta($sql);
    
    header("Location: private.php");
    
}