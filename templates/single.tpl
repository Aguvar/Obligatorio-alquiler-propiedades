<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Mattress A Ecommerce Category Flat Bootstrap Responsive Website Template | single :: w3layouts</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
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
                <h2>Single</h2>
            </div>
        </div>
        <!-- grow -->
        <div class="product">
            <div class="container">

                <div class="product-price1">
                    <div class="top-sing">
                        <div class="col-md-7 single-top">	
                            <div class="flexslider">
                                <ul class="slides">
                                    <li data-thumb="images/si.jpg">
                                        <div class="thumb-image"> <img src="images/si.jpg" data-imagezoom="true" class="img-responsive"> </div>
                                    </li>
                                    <li data-thumb="images/si1.jpg">
                                        <div class="thumb-image"> <img src="images/si1.jpg" data-imagezoom="true" class="img-responsive"> </div>
                                    </li>
                                    <li data-thumb="images/si2.jpg">
                                        <div class="thumb-image"> <img src="images/si2.jpg" data-imagezoom="true" class="img-responsive"> </div>
                                    </li> 
                                    <li data-thumb="images/si3.jpg">
                                        <div class="thumb-image"> <img src="images/si3.jpg" data-imagezoom="true" class="img-responsive"> </div>
                                    </li>
                                </ul>
                            </div>

                            <div class="clearfix"> </div>
                            <!-- slide -->


                            <!-- FlexSlider -->
                            <script defer src="js/jquery.flexslider.js"></script>
                            <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

                            <script>
                // Can also be used with $(document).ready()
                $(window).load(function () {
                    $('.flexslider').flexslider({
                        animation: "slide",
                        controlNav: "thumbnails"
                    });
                });
                            </script>







                        </div>	
                        <div class="col-md-5 single-top-in simpleCart_shelfItem">
                            <div class="single-para ">
                                <h4>{$info.0.titulo}</h4>
                                <div class="star-on">

                                    <div class="review">
                                        <a href="#"> 1 customer review </a>

                                    </div>
                                    <div class="clearfix"> </div>
                                </div>

                                <h5 class="item_price">$ {$info.0.precio}</h5>
                                <p>Ubicacion: {$info.0.barrio}</p>
                                <p>{$info.0.texto}</p>
                                <p>Viene con {$info.0.habitaciones} {if $info.0.habitaciones == 1} habitacion {else} habitaciones{/if} y {$info.0.banios} {if $info.0.banios == 1} baño {else} baños{/if}</p>

                                <p>Precio por metro cuadrado: ${$promedioCasa} / m<sup>2</sup>	</p>	
                                <p>Precio por metro cuadrado de propiedades en el mismo barrio: ${$promedioBarrio} / m<sup>2</sup>	</p>
                                <p>
                                    {if $promedioCasa < $promedioBarrio}
                                        Esta casa es mas barata que propiedades similares en el mismo barrio.
                                    {else}
                                        Esta casa es mas cara que propiedades similares en el mismo barrio.
                                    {/if}
                                </p>
                                <a href="exportPDF.php?id={$idCasa}" class="add-cart item_add">EXPORTAR A PDF</a>

                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>

                    <div class="col-md-12 contact-in">
                        <div class="address-more">
                            <h4>Preguntas acerca de la propiedad</h4>	                           
                            <br>
                            {foreach from=$preguntas item=pregunta}
                                <p>{$pregunta.texto} <h5>Respuesta:</h5>{$pregunta.respuesta}</p> <br>
                            {/foreach}
                        </div>
                        <form action="procesoPregunta.php" method="POST">
                            <a href="#" class="add-cart item_add">PREGUNTAR</a>
                            <input type="text" placeholder="Realice su pregunta" name="txtPregunta">
                            <input type="submit" value="Enviar">
                            <input type="hidden" name="idCasa" value="{$idCasa}">
                        </form>
                    </div>
                    <div class="clearfix"> </div>
                    <div class=" bottom-product">
                        <div class="col-md-4 bottom-cd simpleCart_shelfItem">
                            <div class="product-at ">
                                <a href="#"><img class="img-responsive" src="images/pi3.jpg" alt="">
                                    <div class="pro-grid">
                                        <span class="buy-in">Buy Now</span>
                                    </div>
                                </a>	
                            </div>
                            <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                            <div class="ca-rt">
                                <a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>						
                            </div>						
                        </div>
                        <div class="col-md-4 bottom-cd simpleCart_shelfItem">
                            <div class="product-at ">
                                <a href="#"><img class="img-responsive" src="images/pi1.jpg" alt="">
                                    <div class="pro-grid">
                                        <span class="buy-in">Buy Now</span>
                                    </div>
                                </a>	
                            </div>
                            <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                            <div class="ca-rt">
                                <a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>						
                            </div>					</div>
                        <div class="col-md-4 bottom-cd simpleCart_shelfItem">
                            <div class="product-at ">
                                <a href="#"><img class="img-responsive" src="images/pi4.jpg" alt="">
                                    <div class="pro-grid">
                                        <span class="buy-in">Buy Now</span>
                                    </div>
                                </a>	
                            </div>
                            <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                            <div class="ca-rt">
                                <a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>						
                            </div>					</div>
                        <div class="clearfix"> </div>
                    </div>
                </div>

                <div class="clearfix"> </div>
            </div>
        </div>
        <!--//content-->
        {include 'footer.tpl'}
    </body>
</html>
