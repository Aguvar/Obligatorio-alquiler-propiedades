<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Houser - Panel de control</title>
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
                    {foreach from=$datosCasas item=casa}                        
                        <tr>
                            <td>{$casa.id}</td>
                            <td>{if $casa.tipo == "C"}Casa{else}Apartamento{/if}</td>
                            <td>{if $casa.operacion == "A"}Alquiler{else}Venta{/if}</td>
                            <td>Montevideo</td>
                            <td>Carrasco</td>
                            <td>{if $casa.operacion == "A"}$UY{else}$USD{/if} {$casa.precio}</td>
                            <td>{$casa.mts2} mts<sup>2</sup></td>
                            <td>{$casa.habitaciones}</td>
                            <td>{$casa.banios}</td>
                            <td>{if $casa.garage == 1}Si{else}No{/if}</td>
                            <td>
                                <button class="button" onclick="location.href = 'formularioPropiedad.php?id={$casa.id}';" style="vertical-align:middle"><span>Editar </span></button>
                                <button class="button" onclick="location.href = 'eliminarPropiedad.php?id={$casa.id}';" style="vertical-align:middle"><span>Eliminar </span></button>
                            </td>
                        </tr>
                    {/foreach}
                </table>
            </div>
        </div>

        <div id="Preguntas" class="tabcontent">
            <br>
            <div>
                <table>
                    <tr>
                        <th>#ID Propiedad</th>     
                        <th>Fecha</th>                   
                        <th>Pregunta</th>
                        <th>Opciones</th>
                    </tr>
                    {foreach from=$preguntasSinResponder item=pregunta}
                        <tr>
                            <td>{$pregunta.id_propiedad}</td>
                            <td>{$pregunta.fecha}</td>
                            <td>{$pregunta.texto}</td>
                            <td>
                                <button class="button" onclick="location.href = 'single.php?id={$pregunta.id_propiedad}';" style="vertical-align:middle"><span>Ver propiedad </span></button>
                                <br><button class="button" onclick="location.href = 'respuestaPregunta.php?id={$pregunta.id}&texto={$pregunta.texto}';" style="vertical-align:middle"><span>Responder </span></button>
                            </td>
                        </tr>
                    {/foreach}
                </table>
            </div>
        </div>
        <!--//content-->
        {include 'footer.tpl'}
    </body>
</html>
