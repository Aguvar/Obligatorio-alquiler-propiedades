<!DOCTYPE html>
<html>
    <head>
        <title>Merkadolibre</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
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
                        <form class="form-inline" role="form">
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-perpage">Operación:</label>
                                <select id="pref-perpage" class="form-control">
                                    <option selected="selected" value="10">Venta</option>
                                    <option value="15">Alquiler</option>
                                    <option value="20">Ambas</option>
                                </select>                                
                            </div> 
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-perpage">Ciudad:</label>
                                <select id="pref-perpage" class="form-control">
                                    <option selected="selected" value="10">Cualquiera</option>
                                    <option value="15">Montevideo</option>
                                    <option value="20">Ciudad de la Costa</option>
                                    <option value="20">Punta del Este</option>
                                </select>                                
                            </div> 
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-perpage">Barrio:</label>
                                <select id="pref-perpage" class="form-control">
                                    <option selected="selected" value="10">Cualquiera</option>
                                    <option value="15">Hay muchos</option>
                                    <option value="20">Dependen de la ciudad</option>
                                    <option value="20">Harambe</option>
                                </select>                                
                            </div> 
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-perpage">Propiedad:</label>
                                <select id="pref-perpage" class="form-control">
                                    <option selected="selected" value="10">Casa</option>
                                    <option value="15">Apartamento</option>
                                    <option value="20">Ambos</option>
                                </select>                                
                            </div> 
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-search">Habitaciones:</label>
                                <input type="text" class="form-control input-sm" id="pref-search" placeholder="#">
                            </div> 
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-search">Precio minimo:</label>
                                <input type="text" class="form-control input-sm" id="pref-search" placeholder="$0">
                            </div> 
                            <div class="form-group" id="filterForm">
                                <label class="filter-col" style="margin-right:0;" for="pref-search">Precio máximo:</label>
                                <input type="text" class="form-control input-sm" id="pref-search" placeholder="$8.500.000">
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
                                            <img class="img-responsive" src="images/pi3.jpg" alt="">
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
            </div>
        </div>
        <!-- products -->
        <!-- footer -->
        {include "footer.tpl"}
    </body>
</html>