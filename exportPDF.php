<?php

require_once 'include/class.Conexion.BD.php';
require_once 'config.php';
require_once './include/fpdf/fpdf.php';

$idCasa = $_GET['id'];

$conn = new ConexionBD('mysql', SERVER, BD_INMOBILIARIA, USUARIO_BD, CLAVE_BD);

if ($conn) {
    $conn->conectar();

    $sql = 'SELECT *
            FROM propiedades
            INNER JOIN barrios ON barrios.id = propiedades.barrio_id
            WHERE propiedades.id = :idCasa';

    $parametros = array(
        array('idCasa', $idCasa, 'int', 0)
    );

    if ($conn->consulta($sql, $parametros)) {

        $infoCasa = $conn->restantesRegistros();
    } else {
        echo 'consulta not ok';
    }

    $pdf = new FPDF();
    $pdf->AddPage();
    $pdf->SetFont('Arial', 'B', 16);
    $pdf->Cell(40, 10, 'Hello World!');
    $pdf->Output();
}
    