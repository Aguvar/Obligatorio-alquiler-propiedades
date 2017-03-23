<!DOCTYPE html>
<html>
    <head>
        <title>Houser - Contacto</title>
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
                <h2>Contacto</h2>
            </div>
        </div>
        <!-- grow -->
        <!--content-->
        <div class="contact">

            <div class="container">
                <div class="contact-form">

                    <div class="col-md-8 contact-grid">
                        <form action="#" method="post">
                            {literal}
                                <input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                            this.value = 'Name';
                                                        }">

                                <input type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                            this.value = 'Email';
                                                        }">
                                <input type="text" value="Subject" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                            this.value = 'Subject';
                                                        }">

                                <textarea cols="77" rows="6" value=" " onfocus="this.value = '';" onblur="if (this.value == '') {
                                                            this.value = 'Message';
                                                        }">Message</textarea>
                            {/literal}
                            <div class="send">
                                <input type="submit" value="Send">
                            </div>
                        </form>
                    </div>
                    <div class="col-md-4 contact-in">
                        <div class="address-more">
                            <h4>Address</h4>
                            <p>The company name,</p>
                            <p>Lorem ipsum dolor,</p>
                            <p>Glasglow Dr 40 Fe 72. </p>
                        </div>
                        <div class="address-more">
                            <h4>Address1</h4>
                            <p>Tel:1115550001</p>
                            <p>Fax:190-4509-494</p>
                            <p>Email:<a href="mailto:contact@example.com"> contact@example.com</a></p>
                        </div>					
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>

        </div>
        <!--//content-->
        {include "footer.tpl"}
    </body>
</html>
