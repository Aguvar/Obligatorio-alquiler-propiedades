<!DOCTYPE html>
<html>
    <head>
        <title>Houser - Responder Pregunta</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Mattress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'><!--//fonts-->
        <!-- start menu -->
        <link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/memenu.js"></script>
        {literal}<script>$(document).ready(function () {
                $(".memenu").memenu();
            });</script>{/literal}
            <script src="js/simpleCart.min.js"></script>
        </head>
        <body>
            <!--header-->
            {include "chooseHeader.tpl"}
            <!-- grow -->
            <div class="grow">
                <div class="container">
                    <h2>Responder Pregunta</h2>
                </div>
            </div>
            <!-- grow -->
            <!--content-->
            <div class="contact">
                <div class="container">
                    <h2>Pregunta: {$texto}</h2>
                    <div class="contact-form">
                        <div class="col-md-8 contact-grid">
                            <form name="pregunta" action="responderPregunta.php" method="POST">
                                {literal}
                                    <textarea cols="77" rows="6" name="respuesta" placeholder="Respuesta"></textarea>
                                {/literal}
                                <div class="send">
                                    <input type="hidden" value="{$id}" name="id">
                                    <input type="submit" value="Send">
                                </div>
                            </form>
                        </div>                        
                        <div class="clearfix"> </div>
                    </div>
                </div>

            </div>
            <!--//content-->
            {include "footer.tpl"}
        </body>
    </html>
