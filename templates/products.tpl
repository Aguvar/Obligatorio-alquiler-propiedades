<!DOCTYPE html>
<html>
    <head>
        <title>Merkadolibre</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
        <script type="text/javascript" src="js/products.js"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--fonts-->
        <link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
        <!--//fonts-->
        <!-- start menu -->
        <link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/memenu.js"></script>
        {literal}
            <script>$(document).ready(function () {
                    $(".memenu").memenu();
                });</script>
            {/literal}
        <script src="js/simpleCart.min.js"></script>
    </head>
    <body>
        <!--header-->
        {include "chooseHeader.tpl"}
        <!-- products -->
        <!-- grow -->
        <div class="grow">
            <div class="container" >
                <h2><span>Catalogo</span></h2>                
            </div>
        </div>

        <div class="container" id="filterPanel">
            <div class="row">
                <!--<div id="filter-panel" class="collapse filter-panel">-->
                <div class="panel panel-default">
                    <div class="panel-body">
                        <form class="form-inline" role="form" method="GET" action="products.php">
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-perpage">Operación:</label>
                                <select id="pref-perpage" class="form-control" name="operacion">
                                    <option value="any" {if !isset($smarty.get.operacion) || $smarty.get.operacion == "any"}selected="selected"{/if}>Ambas</option>
                                    <option value="V" {if isset($smarty.get.operacion) && $smarty.get.operacion == "V"}selected="selected"{/if}>Venta</option>
                                    <option value="A" {if isset($smarty.get.operacion) && $smarty.get.operacion == "A"}selected="selected"{/if}>Alquiler</option>
                                </select>                                
                            </div> 
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
                                <label class="filter-col" style="margin-right:0;" for="pref-perpage">Barrio:</label>
                                <select id="pref-perpage" class="form-control" name="barrio">
                                    <option {if !isset($smarty.get.barrio) || $smarty.get.barrio == "any"}selected="selected"{/if} value="any">Cualquiera</option>
                                    {foreach from=$barrios item=barrio}
                                        <option value="{$barrio.id}" {if isset($smarty.get.barrio) && $smarty.get.barrio == $barrio.id}selected="selected"{/if}>{$barrio.nombre}</option>
                                    {/foreach}                                   
                                </select>                                
                            </div> 
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-perpage">Propiedad:</label>
                                <select id="pref-perpage" class="form-control" name="tipo">
                                    <option {if !isset($smarty.get.tipo) || $smarty.get.tipo == "any"}selected="selected"{/if} value="any">Ambos</option>
                                    <option {if isset($smarty.get.tipo) && $smarty.get.tipo == "C"}selected="selected"{/if} value="C">Casa</option>
                                    <option {if isset($smarty.get.tipo) && $smarty.get.tipo == "A"}selected="selected"{/if} value="A">Apartamento</option>
                                </select>                                
                            </div> 
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-search">Habitaciones:</label>
                                <input type="text" class="form-control input-sm" id="pref-search" placeholder="#" {if isset($smarty.get.habitaciones)}value="{$smarty.get.habitaciones}"{/if} name="habitaciones">
                            </div> 
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-search">Precio minimo:</label>
                                <input type="text" class="form-control input-sm" id="pref-search" placeholder="$0" {if isset($smarty.get.pMin)}value="{$smarty.get.pMin}"{/if} name="pMin">
                            </div> 
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-search">Precio máximo:</label>
                                <input type="text" class="form-control input-sm" id="pref-search" placeholder="$8.500.000" {if isset($smarty.get.pMax)}value="{$smarty.get.pMax}"{/if} name="pMax">
                            </div> 
                            <div class="form-group" id="filterForm"> 
                                <input type="hidden" value="" name="search">
                                <button type="submit" class="btn btn-default filter-col" id="filtrar">
                                    Buscar
                                </button>  
                            </div>                            
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="pro-du">
            <div class="container">
                {if !empty($casas)}
                    <div class="col-md-12 product1">
                        {for $y = 0 to 2}
                            <div class=" bottom-product">
                                {for $x = 0 to 3}
                                    {$numCasa = $x+$y*4}
                                    {if !empty($casas.$numCasa)}
                                        <div class="col-md-3 bottom-cd simpleCart_shelfItem">
                                            <div class="product-at ">
                                                <a href="single.php?id={$casas.$numCasa.id}">
                                                    <img class="img-responsive" src="images/{$casas.$numCasa.portada}" alt="">
                                                    <div class="pro-grid">
                                                        <span class="buy-in">Buy Now</span>
                                                    </div>
                                                </a>
                                            </div>
                                            <p class="tun"><span>{$casas.$numCasa.titulo}</span><br>{$casas.$numCasa.barrio}</p>
                                            <div class="ca-rt">
                                                <a href="single.php?id={$casas.$numCasa.id}" class="item_add">
                                                    <p class="number item_price"><i> </i>${$casas.$numCasa.precio}</p>
                                                </a>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    {/if}
                                {/for}
                                <div class="clearfix"> </div>
                            </div>
                        {/for}
                    </div>
                {else}
                    <h1>No pudimos encontrar el terreno de tus sueños :(</h1>
                {/if}
                <div class="clearfix"></div>
            </div>
            <br>
            {if !empty($casas)}
                <div class="container">
                    <button class="btn btn-default filter-col" id="botonPagAnt" value="-1">Anterior</button>
                    <input type="hidden" id="pagActual" value="0"><span>Pagina 1</span>
                    <input type="hidden" id="actualQuery" value="{$sqlQuery}">
                    <button class="btn btn-default filter-col" id="botonPagSig" value="+1">Siguiente</button>
                </div>
            {/if}
        </div>
        <!-- products -->
        <!-- footer -->
        {include "footer.tpl"}
    </body>
</html>