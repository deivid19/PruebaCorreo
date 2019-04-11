<%-- 
    Document   : error404
    Created on : 08-oct-2016, 6:03:38
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

    <title>NASCERE</title>

    <!-- Bootstrap -->
    <link href="complementos/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="complementos/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="complementos/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="https://colorlib.com/polygon/gentelella/css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="complementos/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
    <div class="container body">
        <div class="main_container">
            <!-- page content -->
            <div class="col-md-12">
                <div class="col-middle">
                    <div class="text-center text-center">
                        <h1 class="error-number">404</h1>
                        <h2>Lo sentimos, pero no podemos encontrar esta página</h2>
                        <p>La página que estás buscando no existe.</p>

                        <p>
                            <br>
                            <br>
                            <a href="${pageContext.request.contextPath}/login"  class="btn btn-success btn-lg">Ir a Login</a>
                        </p>
                    </div>
                </div>
            </div>
            <!-- /page content -->
        </div>
    </div>

    <!-- jQuery -->
    <script src="complementos/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="complementos/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="complementos/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="complementos/vendors/nprogress/nprogress.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="complementos/build/js/custom.min.js"></script>
</body>

</html>

