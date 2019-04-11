<%-- 
    Document   : error500
    Created on : 08-oct-2016, 6:03:58
    Author     : luisitoxd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="icon" type="image/png" sizes="16x16" href="complementos/plugins/images/favicon.png">

    <title>NASCERE</title>

    <!-- Bootstrap Core CSS -->
        <link href="complementos/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        
        <!-- Menu CSS -->
        <link href="complementos/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
        
        <!-- morris CSS -->
        <link href="complementos/plugins/bower_components/morrisjs/morris.css" rel="stylesheet">
    
        <!-- animation CSS -->
        <link href="complementos/css/animate.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="complementos/css/style.css" rel="stylesheet">
        <!-- color CSS -->
        <!--<link href="complementos/css/colors/default.css" id="theme"  rel="stylesheet">-->
        
        <!-- color CSS -->
        <link href="complementos/css/colors/megna.css" id="theme" rel="stylesheet">
        
        
</head>

<body class="nav-md">
    <div class="container body">
        <div class="main_container">
            <!-- page content -->
            <div class="col-md-12">
                <div class="col-middle">
                    <div class="text-center">
                        <h1 class="error-number">500</h1>
                        <h2>Internal Server Error</h2>
                        <p>Realizamos un seguimiento automático de estos errores, pero si el problema persiste, no dude en ponerse en contacto con nosotros. <a href="mailto:contacto@nascere.com">contacto@nascere.com</a>
                        </p>
                        <p>
                            <br>
                            <br>
                            <a href="${pageContext.request.contextPath}/login" class="btn btn-success btn-lg">Ir a Login</a>
                        </p>
                    </div>
                </div>
            </div>
            <!-- /page content -->
        </div>
    </div>

    <!-- jQuery -->
        <script src="complementos/plugins/bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="complementos/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- Menu Plugin JavaScript -->
        <script src="complementos/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>

        <!--slimscroll JavaScript -->
        <script src="complementos/js/jquery.slimscroll.js"></script>
        <!--Wave Effects -->
        <script src="complementos/js/waves.js"></script>
        
        <!--Morris JavaScript -->
        <script src="complementos/plugins/bower_components/raphael/raphael-min.js"></script>
        <script src="complementos/plugins/bower_components/morrisjs/morris.js"></script>
        <!-- Sparkline chart JavaScript -->
        <script src="complementos/plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
        <!-- jQuery peity -->
        <script src="complementos/plugins/bower_components/peity/jquery.peity.min.js"></script>
        <script src="complementos/plugins/bower_components/peity/jquery.peity.init.js"></script>
    
        <!-- Custom Theme JavaScript -->
        <script src="complementos/js/custom.min.js"></script>
        <script src="complementos/js/dashboard1.js"></script>
        <!--Style Switcher -->
        <script src="complementos/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>

</body>

</html>
