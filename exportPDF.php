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

// Page header
        function Header() {
            // Logo
            //$this->Image('logo.png', 10, 6, 30);
            // Arial bold 15
            $this->SetFont('Arial', 'B', 20);
            // Move to the right
            $this->Cell(80);
            // Title
            $this->Cell(30, 10, $infoCasa["titulo"], 1, 0, 'C');
            // Line break
            $this->Ln(20);
        }

        function Imagenes() {
            
        }

        function Descripcion() {
            $this->MultiCell(0, 5, $infoCasa["texto"]);
            $this->Ln(20);
        }

        function FichaTecnica() {
            $this->MultiCell(0, 5, 'Ubicacion: '); // . $infoCasa["nombre"]);
            $this->MultiCell(0, 5, 'Número de habitaciones: ' . $infoCasa["habitaciones"]);
            $this->MultiCell(0, 5, 'Número de baños: ' . $infoCasa["banios"]);
            $this->MultiCell(0, 5, 'Precio por metro cuadrado de propiedades en el mismo barrio: ');
            $this->MultiCell(0, 5, 'Esta casa es mas barata que propiedades similares en el mismo barrio o no, falta magia if ' . $infoCasa["nombre"]);
            $this->Ln(20);
            $this->Ln(20);
        }

        function Preguntas() {
            $this->Cell(0, 5, 'Preguntas acerca de la propiedad: ');
            $this->Ln(20);
        }

    }

// Page footer
    /* function Footer() {
      // Position at 1.5 cm from bottom
      $this->SetY(-15);
      // Arial italic 8
      $this->SetFont('Arial', 'I', 8);
      // Page number
      $this->Cell(0, 10, 'Page ' . $this->PageNo() . '/{nb}', 0, 0, 'C');
      } */



    /* print_r($infoCasa["titulo"]);

      print_r($infoCasa["texto"]);

      print_r($infoCasa["nombre"]);

      print_r($infoCasa["habitaciones"]);

      print_r($infoCasa["banios"]);

      print_r($infoCasa); */


// Instanciation of inherited class

    $pdf = new FPDF();   
    $pdf->AddPage();
    $pdf->SetFont('Arial', 'B', 16);
    $pdf->Cell(40, 10, $infoCasa["titulo"]);
    $pdf->Cell(60,10,'Powered by FPDF.',0,1,'C');
    $pdf->Output();

    /* $pdf = new PDF();
      $pdf->AddPage();
      $pdf->SetFont('Times', '', 12);
      $pdf->Imagenes();
      $pdf->Descripcion();
      $pdf->FichaTecnica();
      $pdf->Preguntas();
      $pdf->Output(); */
}  