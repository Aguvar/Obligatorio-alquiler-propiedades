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
                <h2><span>Products</span></h2>                
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
                                    <option value="any" selected="selected">Ambas</option>
                                    <option value="V">Venta</option>
                                    <option value="A">Alquiler</option>
                                </select>                                
                            </div> 
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-perpage">Ciudad:</label>
                                <select id="pref-perpage" class="form-control" name="ciudad">
                                    <option selected="selected" value="any">Cualquiera</option>
                                    {foreach from=$ciudades item=ciudad}
                                    <option value="{$ciudad.id}">{$ciudad.nombre}</option>
                                    {/foreach}
                                </select>                                
                            </div> 
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-perpage">Barrio:</label>
                                <select id="pref-perpage" class="form-control" name="barrio">
                                    <option selected="selected" value="any">Cualquiera</option>
                                    {foreach from=$barrios item=barrio}
                                        <option value="{$barrio.id}">{$barrio.nombre}</option>
                                    {/foreach}                                   
                                </select>                                
                            </div> 
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-perpage">Propiedad:</label>
                                <select id="pref-perpage" class="form-control" name="tipo">
                                    <option selected="selected" value="any">Ambos</option>
                                    <option value="C">Casa</option>
                                    <option value="A">Apartamento</option>
                                </select>                                
                            </div> 
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-search">Habitaciones:</label>
                                <input type="text" class="form-control input-sm" id="pref-search" placeholder="#" name="habitaciones">
                            </div> 
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-search">Precio minimo:</label>
                                <input type="text" class="form-control input-sm" id="pref-search" placeholder="$0" name="pMin">
                            </div> 
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-search">Precio máximo:</label>
                                <input type="text" class="form-control input-sm" id="pref-search" placeholder="$8.500.000" name="pMax">
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
                <div class="col-md-12 product1">
                    {for $y = 0 to 2}
                        <div class=" bottom-product">
                            {for $x = 0 to 3}
                                {$numCasa = $x+$y*4}
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
                            {/for}
                            <div class="clearfix"> </div>
                        </div>
                    {/for}
                </div>
                <div class="clearfix"></div>
                <div>
                    <button class="btn btn-default filter-col" id="botonPagAnt" value="-1">Anterior</button>
                    <input type="hidden" id="pagActual" value="0"><span>Pagina 1</span>
                    <input type="hidden" id="actualQuery" value="{$sqlQuery}">
                    <button class="btn btn-default filter-col" id="botonPagSig" value="+1">Siguiente</button>
                </div>
            </div>
        </div>
        <!-- products -->
        <!-- footer -->
        {include "footer.tpl"}
    </body>
</html>