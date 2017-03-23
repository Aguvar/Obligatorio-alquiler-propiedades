<?php

    require_once './config.php';
    require_once './include/class.Conexion.BD.php';
    
    $idCasa = $_POST["idCasa"];
    $pregunta = $_POST["txtPregunta"];
    
    $conn = new ConexionBD("mysql", SERVER, BD_INMOBILIARIA, USUARIO_BD, CLAVE_BD);
    
    if ($conn) {
    $conn->conectar();
    
    $sql = "INSERT INTO preguntas(id_propiedad, texto) VALUES (:idCasa,:texto)";
    
    $parametros = array(
        array('idCasa', $idCasa, 'string', 0),
        //array('tiempoActual', $timestamp, 'int', 0),
        array('texto', $pregunta, 'string', 0)
    );
    
    if ($conn->consulta($sql, $parametros)) {
        header("Location: single.php?id=".$idCasa);
    } else {
        echo 'error';
    }
}

?>