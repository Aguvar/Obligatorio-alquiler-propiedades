<!--A Design by W3layouts 
   Author: W3layout
   Author URL: http://w3layouts.com
   License: Creative Commons Attribution 3.0 Unported
   License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Mattress A Ecommerce Category Flat Bootstrap Responsive Website Template | Products :: w3layouts</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Mattress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
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
        {include "header.tpl"}
        <!-- products -->
        <!-- grow -->
        <div class="grow">
            <div class="container">
                <h2>Products</h2>
                <div class="header-left">
                    <div class="search-box">
                        <div id="sb-search" class="sb-search">
                            <form action="#" method="post">
                                <input class="sb-search-input" placeholder="Enter your search term..." type="search"  id="search">
                                <input class="sb-search-submit" type="submit" value="">
                                <span class="sb-icon-search"> </span>
                            </form>
                        </div>
                    </div>
                    <!-- search-scripts -->
                    <script src="js/classie.js"></script>
                    <script src="js/uisearch.js"></script>
                    <script>
                new UISearch(document.getElementById('sb-search'));
                    </script>
                    <!-- //search-scripts -->
                </div>
            </div>
        </div>
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
                {*<div class="col-md-12 product1">
                <div class=" bottom-product">
                <div class="col-md-3 bottom-cd simpleCart_shelfItem">
                <div class="product-at ">
                <a href="single.php">
                <img class="img-responsive" src="images/pi3.jpg" alt="">
                <div class="pro-grid">
                <span class="buy-in">Buy Now</span>
                </div>
                </a>
                </div>
                <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                <div class="ca-rt">
                <a href="#" class="item_add">
                <p class="number item_price"><i> </i>$500.00</p>
                </a>
                </div>
                <div class="clearfix"></div>
                </div>
                <div class="col-md-3 bottom-cd simpleCart_shelfItem">
                <div class="product-at ">
                <a href="single.php">
                <img class="img-responsive" src="images/pi1.jpg" alt="">
                <div class="pro-grid">
                <span class="buy-in">Buy Now</span>
                </div>
                </a>
                </div>
                <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                <div class="ca-rt">
                <a href="#" class="item_add">
                <p class="number item_price"><i> </i>$500.00</p>
                </a>
                </div>
                <div class="clearfix"></div>
                </div>
                <div class="col-md-3 bottom-cd simpleCart_shelfItem">
                <div class="product-at ">
                <a href="single.php">
                <img class="img-responsive" src="images/pi3.jpg" alt="">
                <div class="pro-grid">
                <span class="buy-in">Buy Now</span>
                </div>
                </a>
                </div>
                <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                <div class="ca-rt">
                <a href="#" class="item_add">
                <p class="number item_price"><i> </i>$500.00</p>
                </a>
                </div>
                <div class="clearfix"></div>
                </div>
                <div class="col-md-3 bottom-cd simpleCart_shelfItem">
                <div class="product-at ">
                <a href="single.php">
                <img class="img-responsive" src="images/pi1.jpg" alt="">
                <div class="pro-grid">
                <span class="buy-in">Buy Now</span>
                </div>
                </a>
                </div>
                <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                <div class="ca-rt">
                <a href="#" class="item_add">
                <p class="number item_price"><i> </i>$500.00</p>
                </a>
                </div>
                <div class="clearfix"></div>
                </div>
                <div class="clearfix"> </div>
                </div>
                <div class=" bottom-product">
                <div class="col-md-3 bottom-cd simpleCart_shelfItem">
                <div class="product-at ">
                <a href="single.php">
                <img class="img-responsive" src="images/pi5.jpg" alt="">
                <div class="pro-grid">
                <span class="buy-in">Buy Now</span>
                </div>
                </a>
                </div>
                <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                <div class="ca-rt">
                <a href="#" class="item_add">
                <p class="number item_price"><i> </i>$500.00</p>
                </a>
                </div>
                <div class="clearfix"></div>
                </div>
                <div class="col-md-3 bottom-cd simpleCart_shelfItem">
                <div class="product-at ">
                <a href="single.php">
                <img class="img-responsive" src="images/pi.jpg" alt="">
                <div class="pro-grid">
                <span class="buy-in">Buy Now</span>
                </div>
                </a>
                </div>
                <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                <div class="ca-rt">
                <a href="#" class="item_add">
                <p class="number item_price"><i> </i>$500.00</p>
                </a>
                </div>
                <div class="clearfix"></div>
                </div>
                <div class="col-md-3 bottom-cd simpleCart_shelfItem">
                <div class="product-at ">
                <a href="single.php">
                <img class="img-responsive" src="images/pi5.jpg" alt="">
                <div class="pro-grid">
                <span class="buy-in">Buy Now</span>
                </div>
                </a>
                </div>
                <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                <div class="ca-rt">
                <a href="#" class="item_add">
                <p class="number item_price"><i> </i>$500.00</p>
                </a>
                </div>
                <div class="clearfix"></div>
                </div>
                <div class="col-md-3 bottom-cd simpleCart_shelfItem">
                <div class="product-at ">
                <a href="single.php">
                <img class="img-responsive" src="images/pi.jpg" alt="">
                <div class="pro-grid">
                <span class="buy-in">Buy Now</span>
                </div>
                </a>
                </div>
                <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                <div class="ca-rt">
                <a href="#" class="item_add">
                <p class="number item_price"><i> </i>$500.00</p>
                </a>
                </div>
                <div class="clearfix"></div>
                </div>
                <div class="clearfix"> </div>
                </div>
                <div class=" bottom-product">
                <div class="col-md-3 bottom-cd simpleCart_shelfItem">
                <div class="product-at ">
                <a href="single.php">
                <img class="img-responsive" src="images/pi5.jpg" alt="">
                <div class="pro-grid">
                <span class="buy-in">Buy Now</span>
                </div>
                </a>
                </div>
                <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                <div class="ca-rt">
                <a href="#" class="item_add">
                <p class="number item_price"><i> </i>$500.00</p>
                </a>
                </div>
                <div class="clearfix"></div>
                </div>
                <div class="col-md-3 bottom-cd simpleCart_shelfItem">
                <div class="product-at ">
                <a href="single.php">
                <img class="img-responsive" src="images/pi.jpg" alt="">
                <div class="pro-grid">
                <span class="buy-in">Buy Now</span>
                </div>
                </a>
                </div>
                <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                <div class="ca-rt">
                <a href="#" class="item_add">
                <p class="number item_price"><i> </i>$500.00</p>
                </a>
                </div>
                <div class="clearfix"></div>
                </div>
                <div class="col-md-3 bottom-cd simpleCart_shelfItem">
                <div class="product-at ">
                <a href="single.php">
                <img class="img-responsive" src="images/pi5.jpg" alt="">
                <div class="pro-grid">
                <span class="buy-in">Buy Now</span>
                </div>
                </a>
                </div>
                <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                <div class="ca-rt">
                <a href="#" class="item_add">
                <p class="number item_price"><i> </i>$500.00</p>
                </a>
                </div>
                <div class="clearfix"></div>
                </div>
                <div class="col-md-3 bottom-cd simpleCart_shelfItem">
                <div class="product-at ">
                <a href="single.php">
                <img class="img-responsive" src="images/pi.jpg" alt="">
                <div class="pro-grid">
                <span class="buy-in">Buy Now</span>
                </div>
                </a>
                </div>
                <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                <div class="ca-rt">
                <a href="#" class="item_add">
                <p class="number item_price"><i> </i>$500.00</p>
                </a>
                </div>
                <div class="clearfix"></div>
                </div>
                <div class="clearfix"> </div>
                </div>
                </div>*}
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- products -->
        <!-- footer -->
        {include "footer.tpl"}
    </body>
</html>