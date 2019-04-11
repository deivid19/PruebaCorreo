<%-- 
    Document   : equiposTodos
    Created on : 5/04/2019, 04:22:30 PM
    Author     : deivi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../complementos/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../complementos/assets/img/eclipse.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Eclipse
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <!-- CSS Files -->
  <link href="../complementos/assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../complementos/assets/demo/demo.css" rel="stylesheet" />

</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="rose" data-background-color="black" data-image="../complementos/assets/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo">
        <a href="http://www.creative-tim.com" class="simple-text logo-normal">
          <img src="../complementos/assets/img/eclipse.svg" style="width: 100px; height: 100px;" />
        </a>
      </div>
      <div class="sidebar-wrapper">
        <div class="user">
          <div class="photo">
            <img src="../complementos/assets/img/faces/avatar.jpg" />
          </div>
          <div class="user-info">
            <a data-toggle="collapse" href="#collapseExample" class="username">
              <span>
                Tania Andrew
                <b class="caret"></b>
              </span>
            </a>
            <div class="collapse" id="collapseExample">
              <ul class="nav">
                <!--<li class="nav-item">
                  <a class="nav-link" href="#">
                    <span class="sidebar-mini"> MP </span>
                    <span class="sidebar-normal"> Mi Perfil </span>
                  </a>
                </li>-->
                <li class="nav-item">
                  <a class="nav-link" href="../editar_perfil.html">
                    <span class="sidebar-mini"> EP </span>
                    <span class="sidebar-normal"> Editar Perfil </span>
                  </a>
                </li>
                <!--<li class="nav-item">
                  <a class="nav-link" href="#">
                    <span class="sidebar-mini"> C </span>
                    <span class="sidebar-normal"> Configuración </span>
                  </a>
                </li>-->
              </ul>
            </div>
          </div>
        </div>
        <ul class="nav">

          <li class="nav-item active ">
            <a class="nav-link" data-toggle="collapse" href="#tablesExamples" aria-expanded="true">
              <i class="material-icons">computer</i>
              <p> Equipos
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse show" id="tablesExamples">
              <ul class="nav">
                <li class="nav-item ">
                  <a class="nav-link" href="${pageContext.request.contextPath}/equipos/verTodos">
                    <i class="material-icons">visibility</i>
                    <span class="sidebar-normal"> Ver todos </span>
                  </a>
                </li>
                <li class="nav-item active ">
                  <a class="nav-link" href="${pageContext.request.contextPath}/equipos/nuevo">
                    <i class="material-icons">insert_drive_file</i>
                    <span class="sidebar-normal"> Nuevo </span>
                  </a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link" href="${pageContext.request.contextPath}/">
                    <i class="material-icons">person</i>
                    <span class="sidebar-normal"> Salir </span>
                  </a>
                </li>
              </ul>
            </div>
          </li>

        </ul>

      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-minimize">
              <button id="minimizeSidebar" class="btn btn-just-icon btn-white btn-fab btn-round">
                <i class="material-icons text_align-center visible-on-sidebar-regular">more_vert</i>
                <i class="material-icons design_bullet-list-67 visible-on-sidebar-mini">view_list</i>
              </button>
            </div>
            <a class="navbar-brand" href="#pablo">Ocultar</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            <form class="navbar-form">
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Buscar...">
                <button type="submit" class="btn btn-white btn-round btn-just-icon">
                  <i class="material-icons">search</i>
                  <div class="ripple-container"></div>
                </button>
              </div>
            </form>
            <ul class="navbar-nav">

              <li class="nav-item dropdown">
                <a class="nav-link" href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                  <a class="dropdown-item" href="../login.html">Salir</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
            <div class="row">
              <div class="col-md-12">
                <div class="card">
                  <div class="card-header card-header-primary card-header-icon">
                    <div class="card-icon">
                      <i class="material-icons">assignment</i>
                    </div>
                    <h4 class="card-title">Equipos</h4>
                  </div>
                  <div class="card-body">

                      <div class="toolbar">
                        <!--        Here you can write extra buttons/actions for the toolbar              -->
                      </div>

                      <div class="material-datatables">
                        <table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
                          <thead>
                            <tr>
                              <th>Id Equipo</th>
                              <th>Id Empleado</th>
                              <th>Empleado</th>
                              <th>Laptop</th>
                              <th>Id Celular</th>
                              <th>Celular</th>
                              <th>Acciones</th>
                            </tr>
                          </thead>
                          <tfoot>
                            <tr>
                              <th>Id Equipo</th>
                              <th>Id Empleado</th>
                              <th>Empleado</th>
                              <th>Laptop</th>
                              <th>Id Celular</th>
                              <th>Celular</th>
                              <th>Acciones</th>
                            </tr>
                          </tfoot>
                          <tbody>
                            <c:forEach var="equipo" items="${listaEquipos}">
                              <tr>
                                <td>${equipo[0]}</td>
                                <td>${equipo[1]}</td>                                          
                                <td>${equipo[2]}</td>  
                                <td>${equipo[3]}</td>
                                <td>${equipo[4]}</td>
                                <td>${equipo[5]}</td>
                                <td>
                                  <form action="${pageContext.request.contextPath}/tablas/modificaEquipos" method="POST" class="form-bottom">
                                    <input id="idEmpleado" name="idConcept" type="hidden" value="${equipo[0]}" />
                                    <input id="sendNombre" name="getNombre" type="hidden" value="${equipo[1]}" />
                                    <input id="sendNumSeguro" name="getNumSeguro" type="hidden" value ="${equipo[2]}" />
                                    <input id="sendUbicacion" name="getUbicacion" type="hidden" value ="${equipo[3]}" />
                                    <input id="sendPuesto" name="getPuesto" type="hidden" value ="${equipo[5]}" />
                                    <button class="btn btn-link btn-info btn-just-icon edit" type="submit"><i class="material-icons">input</i>
                                    </button>
                                  </form>
                                  <button data-toggle="modal" data-target="#exampleModal${equipo[0]}" class="btn btn-link btn-danger btn-just-icon remove"><i class="material-icons">highlight_off</i>
                                  </button>
                                </td>
                              </tr>
                              <!-- Modal -->
                              <div class="modal fade" id="exampleModal${equipo[0]}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                  <div class="modal-dialog" role="document">
                                      <div class="modal-content">
                                          <div class="modal-header">
                                              <h4 class="modal-title" id="exampleModalLabel"> Eliminar Empleado </h4>
                                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                  <span aria-hidden="true">&times;</span>
                                              </button>
                                          </div>
                                          <div class="modal-body">
                                              <center><i class="fas fa-exclamation-triangle text-danger hidden" id="i"></i><br></center>
                                              <h4>Estas seguro que quieres eliminar este Equipo?</h4>
                                              <p>Si lo haces, se eliminara permanentemente!</p>
                                          </div>
                                          <div class="modal-footer">
                                            
                                              <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                                  No
                                              </button>
                                              <form action="${pageContext.request.contextPath}/tablas/eliminaEquipo" method="POST">
                                                  <input id="idUsuario" name="idUsuario" type="hidden" value ="${equipo[0]}" />
                                                  <button type="submit" class="btn btn-primary">Si</button>
                                              </form>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                              <!-- Fin Modal -->
                            </c:forEach>
                            
                          </tbody>
                        </table>
                      </div>


                      <!--<div id="datatablestest">-->
                      <!--  <table id="example" class="table-condensed table-striped table-bordered  table-hover" cellspacing="0" style="width: 1200px!important;">
                          <thead>
                            <tr>

                              <th>Nombre</th>
                              <th>Empresa</th>
                              <th>Diagnostico</th>
                              <th>Acciones</th>
                            </tr>
                          </thead>

                         <tbody>
                            <tr>
                              <td>
                                <select id="nombre" name="nombre" class="selectpicker" data-style="select-with-transition" multiple title="Nombre" data-size="7">
                                  <option selected="true" value="1">Juan</option>
                                  <option value="2">Carlos</option>
                                  <option value="3">Andrés</option>
                                </select>
                              </td>
                              <td>Eclipse</td>
                              <td>juan@eclipsemex.com</td>
                              <td>
                                <a href="modificar.html" class="btn btn-link btn-info btn-just-icon edit"><i class="material-icons">input</i></a>
                                <a href="#" class="btn btn-link btn-danger btn-just-icon remove" onclick="demo.showSwal('warning-message-and-confirmation')"><i class="material-icons">highlight_off</i></a>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <select id="nombre" name="nombre" class="selectpicker" data-style="select-with-transition" multiple title="Nombre" data-size="7">
                                  <option value="1">Juan</option>
                                  <option selected="true" value="2">Carlos</option>
                                  <option value="3">Andrés</option>
                                </select>
                              </td>
                              <td>Cisco</td>
                              <td>carlos@cisco.com</td>
                              <td>
                                <a href="modificar.html" class="btn btn-link btn-info btn-just-icon edit"><i class="material-icons">input</i></a>
                                <a href="#" class="btn btn-link btn-danger btn-just-icon remove" onclick="demo.showSwal('warning-message-and-confirmation')"><i class="material-icons">highlight_off</i></a>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <select id="nombre" name="nombre" class="selectpicker" data-style="select-with-transition" multiple title="Nombre" data-size="7">
                                  <option value="1">Juan</option>
                                  <option value="2">Carlos</option>
                                  <option selected="true" value="3">Andrés</option>
                                </select>
                              </td>
                              <td>IBM</td>
                              <td>andres@ibm.com</td>
                              <td>
                                <a href="modificar.html" class="btn btn-link btn-info btn-just-icon edit"><i class="material-icons">input</i></a>
                                <a href="#" class="btn btn-link btn-danger btn-just-icon remove" onclick="demo.showSwal('warning-message-and-confirmation')"><i class="material-icons">highlight_off</i></a>
                              </td>
                            </tr>


                          </tbody>
                        </table>-->
                      <!-- </div> -->

                  </div>
                  <!-- end content-->
                </div>
                <!--  end card  -->
              </div>
              <!-- end col-md-12 -->
            </div>
            <!-- end row -->

        </div>
      </div>
      <footer class="footer">
        <div class="container-fluid">
          <div class="copyright float-right">
            &copy;
            <script>
              document.write(new Date().getFullYear())
            </script>
            Powered by <a href="http://www.eclipsemex.com" target="_blank">Eclipse Labs</a>
          </div>
        </div>
      </footer>
    </div>
  </div>

  <!--   Core JS Files   -->
  <script src="../complementos/assets/js/core/jquery.min.js"></script>
  <!--<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>-->
  <script src="../complementos/assets/js/core/popper.min.js"></script>
  <script src="../complementos/assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="../complementos/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Plugin for the momentJs  -->
  <script src="../complementos/assets/js/plugins/moment.min.js"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="../complementos/assets/js/plugins/sweetalert2.js"></script>
  <!-- Forms Validations Plugin -->
  <script src="../complementos/assets/js/plugins/jquery.validate.min.js"></script>
  <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
  <script src="../complementos/assets/js/plugins/jquery.bootstrap-wizard.js"></script>
  <!--  Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="../complementos/assets/js/plugins/bootstrap-selectpicker.js"></script>
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <script src="../complementos/assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
  <script src="../complementos/assets/js/plugins/jquery.dataTables.min.js"></script>
  <!--  Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
  <script src="../complementos/assets/js/plugins/bootstrap-tagsinput.js"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <!--<script src="../../assets/js/plugins/jasny-bootstrap.min.js"></script>-->
  <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
  <script src="../complementos/assets/js/plugins/fullcalendar.min.js"></script>

  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
  <!--<script src="../complementos/assets/js/plugins/jquery-jvectormap.js"></script>-->
  
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="../complementos/assets/js/plugins/nouislider.min.js"></script>
  <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
  <!-- Library for adding dinamically elements -->
  <script src="../complementos/assets/js/plugins/arrive.min.js"></script>

  <!--  Google Maps Plugin    -->
  <!--<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>-->
  
  <!-- Chartist JS -->
  <script src="../complementos/assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../complementos/assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../complementos/assets/js/material-dashboard.js?v=2.1.0" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="../complementos/assets/demo/demo.js"></script>

  <script>
    $(document).ready(function() {
      $().ready(function() {


        var myTable = $('#datatables').DataTable({
          "pagingType": "full_numbers",
          "lengthMenu": [
            [10, 25, 50, -1],
            [10, 25, 50, " todos"]
          ],
          responsive: true,
          language: {
            search: "_INPUT_",
            searchPlaceholder: "Buscar...",
          },
          "order": [[ 1, "asc" ]],
          columnDefs: [
            {
              "targets": [0,1,4],
              "visible": false,
              "searchable": false
            }
          ]
        });


        myTable.column(0).nodes().each(function(node,index,dt){
            var valId = myTable.cell(node).data();
            var truncId = valId.substring(0,13);
            //console.log("id: " + truncId);
            myTable.cell(node).data(truncId);

        });


        $sidebar = $('.sidebar');

        $sidebar_img_container = $sidebar.find('.sidebar-background');

        $full_page = $('.full-page');

        $sidebar_responsive = $('body > .navbar-collapse');

        window_width = $(window).width();

        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

        if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
          if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
            $('.fixed-plugin .dropdown').addClass('open');
          }

        }

        $('.fixed-plugin a').click(function(event) {
          // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });

        $('.fixed-plugin .active-color span').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-color', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data-color', new_color);
          }
        });

        $('.fixed-plugin .background-color .badge').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('background-color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-background-color', new_color);
          }
        });

        $('.fixed-plugin .img-holder').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).parent('li').siblings().removeClass('active');
          $(this).parent('li').addClass('active');


          var new_image = $(this).find("img").attr('src');

          if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            $sidebar_img_container.fadeOut('fast', function() {
              $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
              $sidebar_img_container.fadeIn('fast');
            });
          }

          if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $full_page_background.fadeOut('fast', function() {
              $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
              $full_page_background.fadeIn('fast');
            });
          }

          if ($('.switch-sidebar-image input:checked').length == 0) {
            var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
          }
        });

        $('.switch-sidebar-image input').change(function() {
          $full_page_background = $('.full-page-background');

          $input = $(this);

          if ($input.is(':checked')) {
            if ($sidebar_img_container.length != 0) {
              $sidebar_img_container.fadeIn('fast');
              $sidebar.attr('data-image', '#');
            }

            if ($full_page_background.length != 0) {
              $full_page_background.fadeIn('fast');
              $full_page.attr('data-image', '#');
            }

            background_image = true;
          } else {
            if ($sidebar_img_container.length != 0) {
              $sidebar.removeAttr('data-image');
              $sidebar_img_container.fadeOut('fast');
            }

            if ($full_page_background.length != 0) {
              $full_page.removeAttr('data-image', '#');
              $full_page_background.fadeOut('fast');
            }

            background_image = false;
          }
        });

        $('.switch-sidebar-mini input').change(function() {
          $body = $('body');

          $input = $(this);

          if (md.misc.sidebar_mini_active == true) {
            $('body').removeClass('sidebar-mini');
            md.misc.sidebar_mini_active = false;

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

          } else {

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

            setTimeout(function() {
              $('body').addClass('sidebar-mini');

              md.misc.sidebar_mini_active = true;
            }, 300);
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);

        });
      });
    });
  </script>
  
  <script>

    function getId(id){

      console.log(typeof id);

    }

  </script>




</body>

</html>
