<?php

require_once 'include/class.Conexion.BD.php';
require_once 'config.php';
require_once './include/fpdf/fpdf.php';

$idCasa = $_GET['id'];
$promedioBarrio = $_GET['promedioBarrio'];
$promedioCasa = $_GET['promedioCasa'];

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

    $sqlPreguntas = "SELECT texto, respuesta FROM preguntas WHERE id_propiedad = " . $idCasa . " AND respuesta IS NOT NULL";

    if ($conn->consulta($sqlPreguntas)) {

        $preguntas = $conn->restantesRegistros();
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

    $fichaTecnica = "\n\n\n\nFICHA TECNICA: \n\nUbicacion: " . $infoCasa["nombre"];
    $fichaTecnica .= ("\nNumero de habitaciones: " . $infoCasa["habitaciones"]);
    $fichaTecnica .= ("\nNumero de baños: " . $infoCasa["banios"]);
    $fichaTecnica .= ("\nPrecio por metro cuadrado de propiedades en el mismo barrio: " . $promedioBarrio);
    if ($promedioBarrio < $promedioCasa) {
        $fichaTecnica .= ("\nEsta casa es mas cara que propiedades similares en el mismo barrio.");
    } else {
        $fichaTecnica .= ("\nEsta casa es mas barata que propiedades similares en el mismo barrio.");
    }

    $preguntasHechas = "\n\n\n\nPREGUNTAS REALIZADAS ACERCA DE LA PROPIEDAD: \n\n";
    foreach ($preguntas as $pregunta) {
        $preguntasHechas .= $pregunta["texto"];
        $preguntasHechas .= "\nRESPUESTA: ";
        $preguntasHechas .= $pregunta["respuesta"]."\n\n";
    }
    setlocale(LC_CTYPE, 'en_US');
    $preguntasHechas = iconv('UTF-8', 'ASCII//TRANSLIT', $preguntasHechas);

    $pdf = new FPDF();
    $pdf->AddPage();
    $pdf->SetFont('Arial', 'B', 16);
    $pdf->MultiCell(190, 15, utf8_decode($infoCasa["titulo"]), 1, "C");
    $pdf->Ln();
    // $pdf->Image('/images/cart.png');
    $pdf->Ln();
    $pdf->Ln();
    $pdf->SetFont('Times', 'B', 12);
    $pdf->Write(7, utf8_decode($infoCasa["texto"]));
    $pdf->SetFont('Courier', 'B', 12);
    $pdf->Write(5, utf8_decode($fichaTecnica));
    $pdf->SetFont('Times', 'B', 12);
    $pdf->Write(5, utf8_decode($preguntasHechas));
    $pdf->Output();
}  