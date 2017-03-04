<?php

require_once './config.php';
require_once 'include/class.Conexion.BD.php';

$user = $_POST["user"];
$pass = $_POST["pass"];


$conn = new ConexionBD("mysql", SERVER, BD_INMOBILIARIA, USUARIO_BD, CLAVE_BD, true);

if ($conn && $user != "" && $pass != "") {
    $conn->conectar();


    $sql = "SELECT  usuario, clave FROM usuarios WHERE usuario = :userHere";

    $parametros = array(
        array('userHere', $user, 'string', 0)
    );



    if ($conn->consulta($sql, $parametros)) {

        $credenciales = $conn->restantesRegistros();
        $conn->desconectar();

        //print_r($credenciales);
        array_filter($credenciales);

        if (!empty($credenciales) && $credenciales[0]["clave"] === $pass) {
            //Iniciar sesion
            echo 'inicio de sesion correcto';
            header("Location: private.php");
        } else {
            //Mandarlo al login con un mensaje de error
            header("Location: login.php?err=1");
            exit();
        }
    } else {
        //Mandarlo al login con un mensaje de error
        header("Location: login.php?err=1");
        exit();
    }
} else {
    //Mandarlo al login con un mensaje de error
    header("Location: login.php?err=1");
    exit();
}
?>

