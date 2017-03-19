<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Panel de control</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery.min.js"></script>
        <script src="js/private.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/private.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/dataTablesBootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Mattress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'><!--//fonts-->
        <link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/memenu.js"></script>        
        {literal}
            <script>$(document).ready(function () {
                    $(".memenu").memenu();
                }
                );</script>
            {/literal}        
        <script src="js/simpleCart.min.js"></script>
        <script src="js/imagezoom.js"></script>
    </head>

    <body>
        <!--header-->
        {include 'chooseHeader.tpl'}
        <!-- grow -->
        <div class="grow">
            <div class="container">
                <h2>Bienvenido, {$nombre}</h2>
            </div>
        </div>
        <!-- grow -->
        <div class="tab">
            <button class="tablinks" onclick="openTab(event, 'Administracion')" id="defaultOpen">Administracion de Propiedades</button>
            <button class="tablinks" onclick="openTab(event, 'Preguntas')">Preguntas pendientes</button>

            <script>
                document.getElementById("defaultOpen").click();
            </script>
        </div>

        <div id="Administracion" class="tabcontent">
            <br>
            <div>
                <table>
                    <tr>
                        <th>#</th>
                        <th>Tipo</th>
                        <th>Operación</th>
                        <th>Ciudad</th>
                        <th>Barrio</th>
                        <th>Precio</th>
                        <th>Metros cuadrados</th>
                        <th>Número de habitaciones</th>
                        <th>Número de baños</th>
                        <th>Garage</th>
                        <th>Opciones</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Casa</td>
                        <td>Venta</td>
                        <td>Montevideo</td>
                        <td>Carrasco</td>
                        <td>U$S 2.500.000</td>
                        <td>500 mts<sup>2</sup></td>
                        <td>8</td>
                        <td>5</td>
                        <td>Sí</td>
                        <td>
                            <button class="button" onclick="location.href='formularioPropiedad.php';" style="vertical-align:middle"><span>Editar </span>
                            <button class="button" style="vertical-align:middle"><span>Eliminar </span>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        
        <div id="Preguntas" class="tabcontent">
            <br>
            <div>
                <table>
                    <tr>
                        <th>#</th>     
                        <th>Propiedad</th>                   
                        <th>Pregunta</th>
                        <th>Opciones</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Castillo Pitamiglio </td>
                        <td>Ta fachero? </td>
                        <td>
                            <button class="button" onclick="location.href='single.php';" style="vertical-align:middle"><span>Ver propiedad </span>
                            <br><button class="button" style="vertical-align:middle"><span>Responder </span>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <div id="Preguntas" class="tabcontent">
            <h3>Paris</h3>
            <p>Paris queda lejos de Hawayy y queda lejos de africa y queda lejos de Australia y queda cerca de Portugal y Holanda.</p> 
        </div>
        <!--//content-->
        {include 'footer.tpl'}
    </body>
</html>
