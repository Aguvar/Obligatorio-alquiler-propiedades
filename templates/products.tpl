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
        <ul class="nav nav-pills">
            <li class="active"><a href="#">Venta</a></li>
            <li class="active"><a href="#">Alquiler</a></li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Ciudad
                    <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Cualquiera</a></li>
                    <li><a href="#">Monteivdeo</a></li>
                    <li><a href="#">Ciudad de la Costa</a></li>
                    <li><a href="#">Punta del Este</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Barrio
                    <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <!-- Agregar en base a ciudad seleccionada-->
                    <li><a href="#">Cualquiera</a></li>
                    <li><a href="#">Pocitos</a></li>
                    <li><a href="#">Malvin</a></li>
                    <li><a href="#">Punta Carretas</a></li>
                    <li><a href="#">Buceo</a></li>
                </ul>
            </li>
            <li class="active"><a href="#">Casa</a></li>
            <li class="active"><a href="#">Apartamento</a></li>
            <input type="text" class="form-control col-lg-2" placeholder="Nro de habitaciones">
            <input type="text" class="form-control col-lg-2" placeholder="Precio mínimo">
            <input type="text" class="form-control col-lg-2" placeholder="Precio máximo">
            <li class="active"><a href="#">Con Garage</a></li>
        </ul>
        <!-- grow -->
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