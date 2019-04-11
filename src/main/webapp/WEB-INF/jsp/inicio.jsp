<%-- 
    Document   : Inicio
    Created on : 21/02/2019, 11:50:41 AM
    Author     : deivi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" href="./complementos/css/pag.css">
        <link rel="icon" href="./complementos/images/ieclipse.png" width="10" height"10">
        <!--- links externos bootstrap<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>-->

        <script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>
        <link rel="stylesheet" href="./complementos/css/bootstrap.css">

        <!--chatbot--->

        <meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://fonts.googleapis.com/css?family=Karla" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="./complementos/css/chatbot.css">

        <!--chatbot fin-->

        <title>Eclipse</title>
    </head>
    
  <body>


<div id="particles-js"></div> <!-- particulas--->

<div class="particulas" >

<!---navbar inicio ---->

    <nav class="navbar navbar-expand-lg navbar-dark " style="z-index: 950; position: fixed; width: 100%;">

        <a class="navbar-brand" href="">
            <img src="./complementos/images/eclipse.svg" width="30" height="30"> Eclipse
        </a>

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

            <ul class="nav navbar-nav navbar-right ml-auto" style="margin-left: auto;">
            <li class="navbar-form-wrapper">
            </li>
            <li class="nav-item"><a href="https://www.facebook.com/eclipsetelecomunicaciones/" target=”_blank” class="nav-link"><i class="fa fa-facebook"></i></a></li>
            <li class="nav-item"><a href="https://www.linkedin.com/company/eclipse-mex-telecomunicaciones/?viewAsMember=true" target=”_blank” class="nav-link"><i class="fa fa-linkedin"></i></a></li>
            <li class="nav-item"><a href="https://www.youtube.com/channel/UCrtA_VD6IZ1hGQbk2QGFGcg?view_as=subscriber" target=”_blank” class="nav-link"><i class="fa fa-youtube"></i></a></li>
            <li class="nav-item"><a href="https://twitter.com/eclipsemex" target=”_blank” class="nav-link"><i class="fa fa-twitter"></i></a></li>
          </ul>

        </div>
    </nav>

<!---navbar fin---->


    <!--carousel inicio-->


    <div class="overlay">
      <div id="intro">
       <img src="./complementos/images/eclipse-logob.svg"  class="img-fluid" alt="Responsive image" width="500" height="500">
       <br>
       <br>
       <br>
       <p class="tinit">Alinear la tecnología con tu negocio,nuestra especialidad</p>
      </div>
    </div>


          <!--carousel fin-->


    </div>



    <!---llamando a chatbot


    <div id="menuoptions">
          <span id="closebutton">X</span>
          <div id="StartChat" class="StartChat" tabindex="1">
          <img src="https://philchallinor.co.uk/images/articles/chatbot.png" id="PersonIcon">

          <span id="Instruction">

            ¿En que puedo ayudarte?
          </span>

          </div>

          <div id="chatwindow"></div>
          <div id="usertextboxmessage">
            <span>
              <input id="UserInputBox" type="text">
              <img src="https://philchallinor.co.uk/images/articles/send.png" class="message">
            </span>
          </div>
        </div>

  -->








    <!--llamando a chatbot fin--->

<br>
<br>
<br>
    <div class="container">
      <div class="row">
        <div class="grupo">
          <h2>Grupo Eclipse</h2>
          <p align="justify">Grupo Eclipse somos una compañía dedicada al servicio, consultoría y mantenimiento de equipos de comunicaciones y Tecnologías de la Información (TI) tales como:  <b>Big Data</b>,  <b>Cloud Services</b>,<b>Redes</b>,  <b>Ciberseguridad</b>, <b>Data Center</b> y <b>Colaboración</b>; así como a la <b>Transformación Digital</b> a través de proyectos integradores de negocio soportados con <b>Inteligencia Artificial.</b></p>
        </div>

      </div>
    </div>

    <br>

    <div class="container-fluid" >

      <div class="row">
        <br>
            <div class="col-md-3" >


      <div class="hovereffect">
          <img class="" src="./complementos/images/services.png" height="250" width="350" >
              <div class="overlay">
                  <h2>Servicios</h2>
  				<p>
  					<a href="${pageContext.request.contextPath}/Inicio/servicios"> <img class="tarjeta" src="./complementos/images/servicio.svg" height="250" width="350"> </a>
  				</p>
              </div>
      </div>


            </div>



            <div class=" col-md-3" >

              <div class="hovereffect">
                  <img class="" src="./complementos/images/servicios.png"  height="250" width="350" alt="">
                      <div class="overlay">
                          <h2>Infraestructura</h2>
          				<p>
          					<a href="${pageContext.request.contextPath}/Inicio/infraestructura"><img  class="tarjeta" src="./complementos/images/solucion.svg"></a>
          				</p>
                      </div>
              </div>


            </div>

            <div class="clearfix visible-xs"></div>

            <div class=" col-md-3" >

              <div class="hovereffect">
                  <img class="" src="./complementos/images/certificaciones.png"  height="250" width="350" alt="">
                      <div class="overlay">
                          <h2>Certificaciones</h2>
                  <p>
                    <a href="${pageContext.request.contextPath}/Inicio/Certificaciones">   <img class="tarjeta" src="./complementos/images/certificado.svg" alt=""> </a>
                  </p>
                      </div>
              </div>
            </div>
            <div class="col-md-3" >

              <div class="hovereffect">
                  <img class="" src="./complementos/images/nosotros.png"  height="250" width="350" alt="">
                      <div class="overlay">
                          <h2>Nosotros</h2>
          				<p>
          					<a href="${pageContext.request.contextPath}/Inicio/nosotros"> <img class="tarjeta" src="./complementos/images/grupo.svg" alt=""> </a>
          				</p>
                      </div>
              </div>
            </div>





          </div>




</div>



<br>


    </div>

<!--footer-->

      <%@ include file = "./footer.jsp" %>
      <!--<div id="footer">

      </div> -->



  </body>
        <script src="./complementos/js/jquery.js" type="text/javascript"></script>
        <script type="text/javascript" src="./complementos/js/particles.js"></script>
        <script type="text/javascript" src="./complementos/js/app.js"></script>
        <script src="./complementos/js/bootstrap.js" type="text/javascript"></script>


        <script type="text/javascript">


          window.onscroll = function() {scrollFunction()};

          $(document).ready(function() {
              // Transition effect for navbar
              $(window).scroll(function() {
                // checks if window is scrolled more than 500px, adds/removes solid class
                if($(this).scrollTop() > 50) {
                    $('.navbar').addClass('solid');
                } else {
                    $('.navbar').removeClass('solid');
                }
              });
          });

        /*$(function(){
            $("#footer").load("footer.jsp");
            //$("#footer").load("footer.jsp");
        }); */


        </script>
</html>
