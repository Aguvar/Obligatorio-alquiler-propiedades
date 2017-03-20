<!DOCTYPE html>
<html>
    <head>
        <title>Información de la propiedad</title>
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
                    <h2>Aca va el nombre de la propiedad</h2>
                </div>
            </div>
            <!-- grow -->
            <!--content-->
            <div class="contact">
                <div class="container">
                    <div class="contact-form">
                        <div class="col-md-8 contact-grid">
                            <form name="propiedad" action="#" method="post">
                                {literal}
                                    <select name="tipoPropiedad" class="formPropiedad" form="propiedad">
                                        <option value="default">Seleccione el tipo de propiedad</option>
                                        <option value="Casa">Casa</option>
                                        <option value="Apartamento">Apartamento</option>
                                    </select>
                                    <select name="operacion" class="formPropiedad" form="propiedad">                                        
                                        <option value="default">Venta o alquiler</option>
                                        <option value="Casa">Venta</option>
                                        <option value="Apartamento">Alquiler</option>
                                    </select>
                                    <select name="ciudad" class="formPropiedad" form="propiedad">
                                        <option value="default">Seleccione una ciudad</option>
                                        <option value="volvo">Montevideo</option>
                                        <option value="saab">Punta del Este</option>
                                    </select>                                    
                                    <select name="barrio" class="formPropiedad" form="propiedad">
                                        <option value="default">Seleccione un barrio</option>
                                        <option value="a">a</option>
                                        <option value="b">be</option>
                                        <option value="c">ce</option>
                                    </select>
                                    <input type="text" value="Precio" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Precio';
                                            }">
                                    <input type="text" value="Metros cuadrados" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Metros cuadrados';
                                            }">
                                    <input type="text" value="Cantiad de habitaciones" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Cantiad de habitaciones';
                                            }">
                                    <input type="text" value="Cantiad de baños" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Cantiad de baños';
                                            }">
                                    <input type="text" value="Cantiad de baños" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Cantiad de baños';
                                            }">
                                    Tiene garage: <input type="checkbox" name="Garage" value="Tiene garage"><br>   
                                    <input type="text" value="Titulo" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Título del anuncio';
                                            }">
                                    <textarea cols="77" rows="6" value="Descripcion" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Descripción de la propiedad';
                                            }">Message</textarea>
                                {/literal}
                                <!--
                                tipo (casa o apartamento), la operación que se ofrece (venta o alquiler),
                                la ciudad y el barrio (seleccionadas de listas pre-existentes), el precio (se asume en dólares si es una
                                venta y en pesos si es un alquiler), los metros cuadrados totales, la cantidad de habitaciones, de baños,
                                y si tiene garaje o no. Además de estos datos, se debe poder asociar un título general y un texto con una
                                descripción detallada de la oferta. Para ofrecer una mejor experiencia a los clientes, cada propiedad
                                puede tener asociada una cantidad no predefinida de fotos, 
                                -->
                                <div class="send">
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
