<%-- 
    Document   : header
    Created on : 21/02/2019, 12:12:20 PM
    Author     : deivi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>

<!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
-->

<style media="screen">
.dropdown:hover>.dropdown-menu {
  display: block;
}
</style>

  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="${pageContext.request.contextPath}/" style="color:white;"> <img src="../complementos/images/eclipse.svg" width="30" height="30"> Eclipse</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">

          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               Servicios
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="${pageContext.request.contextPath}/Servicios/Marketing_Digital_Cognitivo">Marketing Digital Cognitivo</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/Servicios/Gestion_Documental">Gestión documental</a>

              <!-- <a class="dropdown-item" href="${pageContext.request.contextPath}/Servicios/Integracion_de_Soluciones_de_Negocio">Integración de Soluciones de Negocio</a> -->
            </div>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Infraestructura
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="${pageContext.request.contextPath}/Infraestructura/Big_Data">Big Data</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/Infraestructura/Ciberseguridad">Ciberseguridad</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/Infraestructura/Colaboracion">Colaboración</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/Infraestructura/Data_Center_y_Cloud_Service">Data Center y Cloud Service</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/Infraestructura/Inteligencia_Artificial">Inteligencia Artificial</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/Infraestructura/Redes">Redes LAN - WAN</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/Infraestructura/Wireless">Wireless (Redes Inalambricas)</a>
            </div>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     Certificaciones
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="${pageContext.request.contextPath}/Certificaciones/cobit">COBIT</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/Certificaciones/itil">ITIL</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/Certificaciones/iso">ISO 27000</a>
            </div>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/Inicio/nosotros">Nosotros</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/Inicio/contacto">Contacto</a>
          </li>

        </ul>

        <ul class="nav navbar-nav navbar-right ml-auto">
          <li class="navbar-form-wrapper">
          </li>
          <li class="nav-item"><a href="https://www.facebook.com/eclipsetelecomunicaciones/"target=”_blank” class="nav-link"><i class="fa fa-facebook"></i></a></li>
          <li class="nav-item"><a href="https://www.linkedin.com/company/eclipse-mex-telecomunicaciones/?viewAsMember=true" target=”_blank” class="nav-link"><i class="fa fa-linkedin"></i></a></li>
          <li class="nav-item"><a href="https://www.youtube.com/channel/UCrtA_VD6IZ1hGQbk2QGFGcg?view_as=subscriber" target=”_blank” class="nav-link"><i class="fa fa-youtube"></i></a></li>
          <li class="nav-item"><a href="https://twitter.com/eclipsemex" target=”_blank” class="nav-link"><i class="fa fa-twitter"></i></a></li>
        </ul>

      </div>
    </nav>
  </body>


</html>