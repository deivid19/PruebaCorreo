<%-- 
    Document   : footer
    Created on : 21/02/2019, 12:12:46 PM
    Author     : deivi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
  <head>
    <title></title>

    <link rel="stylesheet" href="../complementos/css/pag.css" />
    <link rel="stylesheet" href="../complementos/css/footer.css"/>

<!--
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
-->

  </head>

    <footer id="myFooter">
        <div class="">
            <div class="row">


                <div class="col-sm-3 myCols" >
                  <h5>Servicios</h5>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/Servicios/Marketing_Digital_Cognitivo">Marketing Digital Cognitivo</a></li>
                        <li><a href="${pageContext.request.contextPath}/Servicios/Gestion_Documental">Gestión Documental</a></li>

                        <!--<li> <a href="${pageContext.request.contextPath}/Servicios/Integracion_de_Soluciones_de_Negocio">Integración de soluciones de negocio</a></li> -->
                    </ul>
                </div>

                <div class="col-sm-3 myCols">
                    <h5>Infraestructura</h5>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/Infraestructura/Big_Data">Big Data</a></li>
                        <li><a href="${pageContext.request.contextPath}/Infraestructura/Ciberseguridad">Ciberseguridad</a></li>
                        <li><a href="${pageContext.request.contextPath}/Infraestructura/Colaboracion">Colaboración</a></li>
                        <li><a href="${pageContext.request.contextPath}/Infraestructura/Data_Center_y_Cloud_Service">Data Center y Cloud Service</a></li>
                        <li><a href="${pageContext.request.contextPath}/Infraestructura/Inteligencia_Artificial">Inteligencia Artificial</a></li>
                        <li><a href="${pageContext.request.contextPath}/Infraestructura/Redes">Redes LAN - WAN</a></li>
                        <li><a href="${pageContext.request.contextPath}/Infraestructura/Wireless">Wireless (Redes Inalambricas)</a></li>
                    </ul>
                </div>

              <div class="col-sm-3 myCols" >
                    <h5>Certificaciones</h5>
                    <ul>
                      <li><a href="${pageContext.request.contextPath}/Certificaciones/cobit">COBIT (Gestión de Riesgos)</a></li>
                      <li><a href="${pageContext.request.contextPath}/Certificaciones/itil">ITIL (servicios)</a></li>
                      <li><a href="${pageContext.request.contextPath}/Certificaciones/iso">ISO 27000 (Seguridad)</a></li>

                    </ul>
                </div>


                <div class="col-sm-3 myCols" >
                    <h5>Contacto</h5>
                    <ul>
                        <li><i class="fa fa-phone" aria-hidden="true"></i> +52 55 3685.2090</li>
                        <li><i class="fa fa-phone" aria-hidden="true"></i> +52 55 5532.2480</li>
                        <li><i class="fa fa-envelope" aria-hidden="true"></i> contacto@eclipsemex.com</li>
                        <li><a href="${pageContext.request.contextPath}/Inicio/contacto">Comunicate con Nosotros</a></li>
                    </ul>
                </div>

            </div>
        </div>


        <div class="social-networks">
          <div class="barra-social">

            <ul>
                   <li><a href="https://www.facebook.com/eclipsetelecomunicaciones/" target=”_blank”><span></span></a></li>
                   <li><a href="https://www.linkedin.com/company/eclipse-mex-telecomunicaciones/?viewAsMember=true" target=”_blank”><span></span></a></li>
                   <li><a href="https://www.youtube.com/channel/UCrtA_VD6IZ1hGQbk2QGFGcg?view_as=subscriber"target=”_blank”><span></span></a></li>
                   <li><a href="https://twitter.com/eclipsemex"target=”_blank”><span></span></a></li>
               </ul>
          </div>

        </div>



  <!-- Call to action -->


  <div class="design2018 col-xs-12"  style="color:#a3a3a3; border-top:1px solid #a3a3a3a3; padding-top: 10px;
  font-size: 12px;
padding-bottom: 0px;" >
  <div class="row">
  <div class="col-md-4">
  <div class="">
  Eclipse Labs
  </div>
  </div>

  <div class="col-md-4" style="text-align:center;">
  Eclipse  Telecomunicaciones  S.A. de C.V. 2019
  </div>
  <div class="col-md-4">
  <a href="../complementos/docs/privacidad.pdf"  target=”_blank”>Aviso de Privacidad</a> | <a href="../complementos/docs/condiciones.pdf"  target=”_blank”>Terminos y Condiciones</a>

  <div class="col" style="text-align:right;">

  ver 1.5.0

  </div>
  </div>
  </div>



  </div>




    </footer>
</html>

