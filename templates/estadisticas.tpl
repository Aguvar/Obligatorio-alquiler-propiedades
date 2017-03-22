<!DOCTYPE html>
<html>
    <head>
        <title>Estadisticas</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery.min.js"></script>
        <script src="js/estadisticas.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />		
        <link href="css/fitler.css" rel="stylesheet" type="text/css" media="all" />
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
        {include 'chooseHeader.tpl'}        
        <div class="grow">
            <div class="container">
                <h2>Estadisticas</h2>
            </div>
        </div>        
        <div class="container" id="filterPanel">
            <div class="row">
                <!--<div id="filter-panel" class="collapse filter-panel">-->
                <div class="panel panel-default">
                    <div class="panel-body">
                        <form class="form-inline" action="estadisticas.php" method="GET" role="form">
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-perpage">Ciudad:</label>
                                <select id="pref-perpage" class="form-control" name="ciudad">
                                    <option {if !isset($smarty.get.ciudad) || $smarty.get.ciudad == "any"}selected="selected"{/if} value="any">Cualquiera</option>
                                    {foreach from=$ciudades item=ciudad}
                                        <option value="{$ciudad.id}" {if isset($smarty.get.ciudad) && $smarty.get.ciudad == $ciudad.id}selected="selected"{/if}>{$ciudad.nombre}</option>                                        
                                    {/foreach}
                                </select>                                
                            </div> 
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-perpage">Tipo de Operación:</label>
                                <select id="pref-perpage" class="form-control" name="operacion">
                                    <option {if !isset($smarty.get.operacion) || $smarty.get.operacion == "any"}selected="selected"{/if} value="any">Cualquiera</option>
                                    <option {if isset($smarty.get.operacion) && $smarty.get.operacion == "V"}selected="selected"{/if}value="V">Venta</option>
                                    <option {if isset($smarty.get.operacion) && $smarty.get.operacion == "A"}selected="selected"{/if}value="A">Alquiler</option>

                                </select>                                
                            </div>
                            <div class="form-group" id="filterForm">                                    
                                <button type="submit" class="btn btn-default filter-col">
                                    Buscar
                                </button>  
                            </div>
                        </form>
                    </div>
                </div>
            </div>    
        </div>

        <div>
            <table>
                <tr>
                    <th>Barrio</th>
                    <th>Numero de propiedades</th>
                    <th>Precio/m<sup>2</sup> (<strong>$UYU/m<sup>2</sup></strong>) </th>
                    <th>Buscar barrio</th>
                </tr>
                {if isset($datos)}
                    {foreach from=$datos item=barrio}
                        <tr>
                            <td>{$barrio.barrio}</td>
                            <td>{$barrio.casas}</td>
                            <td>{$barrio.promedio}</td>
                            <td>
                                <a class="material-icons button edit" href="products.php?operacion=any&ciudad=any&barrio={$barrio.id}&tipo=any&habitaciones=&pMin=&pMax=&search=yes">Ir</i>
                            </td>
                        </tr>
                    {/foreach}
                {else}
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>   
                {/if}
            </table>
        </div>
        <!--//content-->
        {include 'footer.tpl'}
    </body>
</html>
