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
        $infoCasa = $conn->siguienteRegistro();
    } else {
        echo 'consulta not ok';
    }

    class PDF extends FPDF {

        function Header() {
            $this->SetFont('Arial', 'B', 15);
            $this->Cell(80);
            $this->Cell(30, 10, $infoCasa["titulo"], 1, 0, 'C');
            $this->Ln(20);
        }

        function Imagenes() {
            
        }

        function Preguntas() {
            $this->Cell(0, 5, 'Preguntas acerca de la propiedad: ');
            $this->Ln(20);
        }

    }

    $fichaTecnica = "\n\n\n\nFICHA TECNICA: \n\nUbicacion: " . $infoCasa["numbre"];
    $fichaTecnica .= ("\nNumero de habitaciones: " . $infoCasa["habitaciones"]);
    $fichaTecnica .= ("\nNumero de baños: " . $infoCasa["banios"]);
    $fichaTecnica .= ("\nPrecio por metro cuadrado de propiedades en el mismo barrio: " . "mucho");
    $fichaTecnica .= ("\nEsta casa (es o no es) mas barata que propiedades similares en el mismo barrio.");
    setlocale(LC_CTYPE, 'en_US');
    $fichaTecnica = iconv('UTF-8', 'ASCII//TRANSLIT', $fichaTecnica);

    $preguntasHechas = "\n\n\n\nPREGUNTAS REALIZADAS ACERCA DE LA PROPIEDAD: \n";
    for ($i = 1; $i <= 3; $i++) {
        $preguntasHechas .= "\nLa casa tiene " . $i . "  pisos?";
        $preguntasHechas .= "\nRESPUESTA:";
        $preguntasHechas .= "\nNo, tiene " . ($i + 1) . ".\n\n";
    }
    setlocale(LC_CTYPE, 'en_US');
    $preguntasHechas = iconv('UTF-8', 'ASCII//TRANSLIT', $preguntasHechas);

    $pdf = new FPDF();
    $pdf->AddPage();
    $pdf->SetFont('Arial', 'B', 16);
    $pdf->MultiCell(190, 15, $infoCasa["titulo"], 1, C);
    $pdf->Ln();
    // $pdf->Image('/images/cart.png');
    $pdf->Ln();
    $pdf->Ln();
    $pdf->SetFont('Times', 'B', 12);
    $pdf->Write(7, $infoCasa["texto"]);
    $pdf->SetFont('Courier', 'B', 12);
    $pdf->Write(5, $fichaTecnica);
    $pdf->SetFont('Times', 'B', 12);
    $pdf->Write(5, $preguntasHechas);
    $pdf->Output();
}  