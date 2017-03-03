<?php

require_once './config.php';
require_once 'include/class.Conexion.BD.php';

$user = $_POST["user"];
$pass = $_POST["pass"];

echo $user;
echo $pass;

$conn = new ConexionBD("mysql", SERVER, BD_INMOBILIARIA, USUARIO_BD, CLAVE_BD);

if ($conn && $user != "" && $pass != "") {
    $conn->conectar();


    $sql = "SELECT  usuario, clave FROM usuarios WHERE usuario = ':userHere'";

    $parametros = array(
        array('userHere', $user, 'string', 30)
    );

    if ($conn->consulta($sql, $parametros)) {

        $credenciales = $conn->siguienteRegistro();

        array_filter($credenciales);
        
        if (!empty($credenciales) && $credenciales["clave"] === $pass) {
            //Iniciar sesion
            echo 'inicio de sesion correcto';
        } else {
            //Mandarlo al login con un mensaje de error
            echo 'La clave no esta bien';
        }
    } else {
        //Mandarlo al login con un mensaje de error
        echo 'El usuario no existe';
    }
} else {
    //Mandarlo al login con un mensaje de error
    echo 'Directamente no anduvo o no pusiste nada guacho';
}
?>

