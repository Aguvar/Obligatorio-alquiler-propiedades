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
            <button class="tablinks" onclick="openTab(event, 'Preguntas')">Preguntas de interesados</button>
            
            <script>
                document.getElementById("defaultOpen").click();
            </script>
        </div>

        <div id="Administracion" class="tabcontent">
            <div>
            <table>
                <tr>
                    <th># Casa</th>
                    <th>Titulo</th>
                    <th>Operacion</th>
                    <th>Precio</th>
                    <th>Ver propiedad</th>
                    <th>Eliminar propiedad</th>
                </tr>
                {foreach from=$datosCasas item=casa}
                <tr>
                    <td>{$casa.id}</td>
                    <td>{$casa.titulo}</td>
                    <td>{if $casa.operacion == "A"}Alquiler{else}Venta{/if}</td>
                    <td>{$casa.precio}</td>
                    <td>
                        <a class="material-icons button edit" href="single.php?id={$casa.id}">Ver propiedad</i>
                    </td>
                    <td>Boton para eliminar</td>
                </tr>
                {/foreach}
            </table>
        </div>
        </div>

        <div id="Preguntas" class="tabcontent">
           <div>
            <table>
                <tr>
                    <th># Propiedad</th>
                    <th>Fecha</th>
                    <th>Pregunta</th>
                    <th>Respuesta</th>
                    <th>Fecha respuesta</th>
                    <th>Ver propiedad</th>
                    <th>Responder pregunta</th>
                </tr>
                {foreach from=$preguntasSinResponder item=pregunta}
                <tr>
                    <td>{$pregunta.id_propiedad}</td>
                    <td>{$pregunta.fecha}</td>
                    <td>{$pregunta.texto}</td>
                    <td>{$pregunta.respuesta}</td>
                    <td>{$pregunta.fecha_respuesta}</td>
                    <td>
                        <a class="material-icons button edit" href="single.php?id={$pregunta.id_propiedad}">Ver propiedad asociada</i>
                    </td>
                    <td>Coso para responder aca</td>
                </tr>
                {/foreach}
            </table>
        </div>
        </div>

        <div id="Tokyo" class="tabcontent">
            <h3>Tokyo</h3>
            <p>Tokyo is the capital of Japan.</p>
        </div>
        <!--//content-->
        {include 'footer.tpl'}
    </body>
</html>
