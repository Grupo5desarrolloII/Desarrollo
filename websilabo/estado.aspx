﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="estado.aspx.cs" Inherits="websilabo.estado" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="logouac.png" type="image/ico" />

    <title>Reportes | UAC</title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
  </head>
  <body class="nav-md">
   <form id="form2" runat="server">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.aspx" class="site_title"><img src="logouac2.fw.png"><span>    UAC</span> </a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                
              </div>
              <div class="profile_info">
                <span>Bienvenido,</span>
                <h2>Administrador</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-sitemap"></i> Inicio <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="#">Gestionar Usuarios</a></li>
                      <li><a href="solicitudes.aspx">Ver Solicitudes</a></li>
                        <li><a href="reportes.aspx">Reportes</a></li>
                      <li><a href="estado.aspx">Estado</a></li>
                      <li><a href="areadestino.aspx">Area de Destino</a></li>
<%--                      <li><a href="semestreacademico.aspx">Gestionar </a></li>
                      <li><a href="plandeestudios.aspx">Gestionar Plan de Estudios</a></li>
                      <li><a href="asignatura.aspx">Gestionar Asignatura</a></li>--%>
                    </ul>
                  </li>
                </ul>
              </div>
              
            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="index.aspx">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>
              <nav class="nav navbar-nav">
              <ul class=" navbar-right">
                <li class="nav-item dropdown open" style="padding-left: 15px;">
                  <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                    <img src="/app/images/user.png" alt="">Usuario
                  </a>
                  <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item"  href="javascript:;"> Perfil</a>
                      <a class="dropdown-item"  href="javascript:;">
                        <!-- <span class="badge bg-red pull-right">50%</span> -->
                        <span>Configuración</span>
                      </a>
                  <a class="dropdown-item"  href="javascript:;">Ayuda</a>
                    <a class="dropdown-item"  href="index.aspx"><i class="fa fa-sign-out pull-right"></i>Cerrar Sesión</a>
                  </div>
                </li> 
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

          <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Reportes</h3>
              </div>

                    </div>
                    <div class="clearfix"></div>
                    <div class="row">
                      <div class="col-md-12 col-sm-12 ">
                        <div class="x_panel">
                          <div class="x_title">
                            <h2>Reporte de  <small>Solicitudes</small></h2>
                            <ul class="nav navbar-right panel_toolbox">
                              <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                              </li>
                              <li><a class="close-link"><i class="fa fa-close"></i></a>
                              </li>
                            </ul>
                            <div class="clearfix"></div>
                          </div>
                          <div class="x_content">                                                        
                      <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Filtrar por Tipo de Solicitud
                            </label>
                            <div class="col-md-4 col-sm-6 ">
                                <asp:DropDownList class="form-control"  ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                                    <asp:ListItem>Seleccione</asp:ListItem>
                                    <asp:ListItem>Aprobado</asp:ListItem>
                                    <asp:ListItem>Desaprobado</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Button class="btn btn-success" ID="btnImprimir" runat="server" Text="Imprimir / Descargar"/>
                            </div>
                      </div>
                       <%--<div class="ln_solid"></div>
                            <div class="item form-group">
                            <div class="col-md-4 col-sm-6 offset-md-3">
                                <asp:Button class="btn btn-success" ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
                                <asp:Button class="btn btn-danger" ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click"  />
                                <asp:Button class="btn btn-primary" ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click"  />
                                <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
                            </div>
                                
                       </div> --%> 

                       <div class="ln_solid"></div>    
                          <div class="item form-group">
                            <div class="col-md-12">
                                <asp:GridView class="table table-dark" ID="gvDatos" runat="server" ></asp:GridView>
                           </div>
                       </div>  
                     
                  </div>
                </div>
              </div>
            </div>
        <!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
          <div class="row" style="display: inline-block;" >
          <div class="tile_count">
            <div>
              
     
          
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Universidad Andina del Cusco    <!-- footer content -->
        <footer>
          <div class="pull-right">
            Universidad Andina del Cusco <a href="https://uandina.edu.pe">Visitar Web</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="../vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="../vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="../vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="../vendors/Flot/jquery.flot.js"></script>
    <script src="../vendors/Flot/jquery.flot.pie.js"></script>
    <script src="../vendors/Flot/jquery.flot.time.js"></script>
    <script src="../vendors/Flot/jquery.flot.stack.js"></script>
    <script src="../vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="../vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="../vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="../vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="../vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="../vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="../vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="../vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
   </form>
  </body>
</html>
