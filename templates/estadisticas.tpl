<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Estadisticas</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/dataTablesBootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <script src="statistics.js"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <link href="css/fitler.css" rel="stylesheet" type="text/css" media="all" />	
        <link href="bootstrap/css/style.css" rel="stylesheet" type="text/css" media="all" />	
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
                <h2>Estadisticas</h2>
            </div>
        </div>
        <!-- grow -->
        
        <div class="container" id="filterPanel">
            <div class="row">
                <!--<div id="filter-panel" class="collapse filter-panel">-->
                <div class="panel panel-default">
                    <div class="panel-body">
                        <form class="form-inline" role="form">
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
                                <label class="filter-col" style="margin-right:0;" for="pref-perpage">Tipo de Operación:</label>
                                <select id="pref-perpage" class="form-control">
                                    <option selected="selected" value="10">Cualquiera</option>
                                    <option value="15">Venta</option>
                                    <option value="20">Alquiler</option>
                                </select>                                
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
            <!--</div>-->
        </div>

        <table>
            <thead>
                <tr>
                    <th>#</th>
                    <th colspan="2">Barrio</th>
                    <th colspan="3">Precio</th>
                    <th colspan="4">Área</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Carrasco</td>
                    <td>$1120000</td>
                    <td>500 mts<sup>2</sup></td>
                    <td>
                        <i class="material-icons button edit">Ver propiedad</i>
                    </td>
                </tr>
            </tbody>
        </table>

        <!--//content-->
        {include 'footer.tpl'}
    </body>
</html>
