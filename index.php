
<!DOCTYPE html>
<html>
   <head>
      <title>MercadoLibre pero para tu kasa</title>
      <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src="js/jquery.min.js"></script>
      <!-- Custom Theme files -->
      <!--theme-style-->
      <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
      <!--//theme-style-->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <meta name="keywords" content="Casas" />
      <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
      <!--fonts-->
      <link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
      <link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
      <!--//fonts-->
      <!-- start menu -->
      <link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
      <script type="text/javascript" src="js/memenu.js"></script>
      <script>          $(document).ready(function () { $(".memenu").memenu(); });</script>
      <script src="js/simpleCart.min.js"> </script>
   </head>
   <body>
      <!--header-->
      <?php
         include "header.html";
         ?>
      <div class="banner">
         <div class="container">
            <script src="js/responsiveslides.min.js"></script>
            <script>
               $(function () {
                 $("#slider").responsiveSlides({
                 	auto: true,
                 	nav: true,
                 	speed: 500,
                   namespace: "callbacks",
                   pager: true,
                 });
               });
            </script>
            <div  id="top" class="callbacks_container">
               <ul class="rslides" id="slider">
                  <li>
                     <div class="banner-text">
                        <h3>Lorem Ipsum is   </h3>
                        <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.</p>
                     </div>
                  </li>
                  <li>
                     <div class="banner-text">
                        <h3>There are many  </h3>
                        <p>Popular belief Contrary to , Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.</p>
                     </div>
                  </li>
                  <li>
                     <div class="banner-text">
                        <h3>Sed ut perspiciatis</h3>
                        <p>Lorem Ipsum is not simply random text. Contrary to popular belief, It has roots in a piece of classical Latin literature from 45 BC.</p>
                     </div>
                  </li>
               </ul>
            </div>
         </div>
      </div>
      <!--content-->
      <div class="container">
         <div class="cont">
            <div class="content">
               <div class="content-top-bottom">
                  <h2>Apartamentos destacados</h2>
                  <div class="col-md-6 men">
                     <a href="single.php" class="b-link-stripe b-animate-go  thickbox">
                        <img class="img-responsive" src="images/t1.jpg" alt="">
                        <div class="b-wrapper">
                           <h3 class="b-animate b-from-top top-in   b-delay03 ">
                              <span>TRIBECA LIVING</span>	
                           </h3>
                        </div>
                     </a>
                  </div>
                  <div class="col-md-6">
                     <div class="col-md1 ">
                        <a href="single.php" class="b-link-stripe b-animate-go  thickbox">
                           <img class="img-responsive" src="images/t2.jpg" alt="">
                           <div class="b-wrapper">
                              <h3 class="b-animate b-from-top top-in1   b-delay03 ">
                                 <span>CLARISSA</span>	
                              </h3>
                           </div>
                        </a>
                     </div>
                     <div class="col-md2">
                        <div class="col-md-6 men1">
                           <a href="single.php" class="b-link-stripe b-animate-go  thickbox">
                              <img class="img-responsive" src="images/t3.jpg" alt="">
                              <div class="b-wrapper">
                                 <h3 class="b-animate b-from-top top-in2   b-delay03 ">
                                    <span>COLORMATE</span>	
                                 </h3>
                              </div>
                           </a>
                        </div>
                        <div class="col-md-6 men2">
                           <a href="single.php" class="b-link-stripe b-animate-go  thickbox">
                              <img class="img-responsive" src="images/t4.jpg" alt="">
                              <div class="b-wrapper">
                                 <h3 class="b-animate b-from-top top-in2   b-delay03 ">
                                    <span>HERLEQUIN</span>	
                                 </h3>
                              </div>
                           </a>
                        </div>
                        <div class="clearfix"> </div>
                     </div>
                  </div>
                  <div class="clearfix"> </div>
               </div>
               <div class="content-top">
                  <h1>NEW PRODUCTS</h1>
                  <div class="grid-in">
                     <div class="col-md-3 grid-top simpleCart_shelfItem">
                        <a href="single.php" class="b-link-stripe b-animate-go  thickbox">
                           <img class="img-responsive" src="images/pi.jpg" alt="">
                           <div class="b-wrapper">
                              <h3 class="b-animate b-from-left    b-delay03 ">
                                 <span>TRIBECA LIVING</span>
                              </h3>
                           </div>
                        </a>
                        <p><a href="single.php">TRIBECA LIVING</a></p>
                        <a href="#" class="item_add">
                           <p class="number item_price"><i> </i>$500.00</p>
                        </a>
                     </div>
                     <div class="col-md-3 grid-top simpleCart_shelfItem">
                        <a href="single.php" class="b-link-stripe b-animate-go  thickbox">
                           <img class="img-responsive" src="images/pi1.jpg" alt="">
                           <div class="b-wrapper">
                              <h3 class="b-animate b-from-left    b-delay03 ">
                                 <span>ESSENTIAL</span>	
                              </h3>
                           </div>
                        </a>
                        <p><a href="single.php">ESSENTIAL</a></p>
                        <a href="#" class="item_add">
                           <p class="number item_price"><i> </i>$500.00</p>
                        </a>
                     </div>
                     <div class="col-md-3 grid-top simpleCart_shelfItem">
                        <a href="single.php" class="b-link-stripe b-animate-go  thickbox">
                           <img class="img-responsive" src="images/pi2.jpg" alt="">
                           <div class="b-wrapper">
                              <h3 class="b-animate b-from-left    b-delay03 ">
                                 <span>CLARISSA</span>	
                              </h3>
                           </div>
                        </a>
                        <p><a href="single.php">CLARISSA</a></p>
                        <a href="#" class="item_add">
                           <p class="number item_price"><i> </i>$500.00</p>
                        </a>
                     </div>
                     <div class="col-md-3 grid-top">
                        <a href="single.php" class="b-link-stripe b-animate-go  thickbox">
                           <img class="img-responsive" src="images/pi4.jpg" alt="">
                           <div class="b-wrapper">
                              <h3 class="b-animate b-from-left    b-delay03 ">
                                 <span>LITTLE HOME</span>	
                              </h3>
                           </div>
                        </a>
                        <p><a href="single.php">LITTLE HOME</a></p>
                        <a href="#" class="item_add">
                           <p class="number item_price"><i> </i>$500.00</p>
                        </a>
                     </div>
                     <div class="clearfix"> </div>
                  </div>
               </div>
            </div>
            <!----->
         </div>
         <!---->
      </div>
      <?php
         include "footer.html";
         ?>		
   </body>
</html>