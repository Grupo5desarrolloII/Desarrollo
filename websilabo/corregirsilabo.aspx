<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="corregirsilabo.aspx.cs" Inherits="websilabo.corregirsilabo" %>

<!DOCTYPE html>
<html lang="es">
  <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="logouac.png" type="image/ico" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Crear Silabo | UAC</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.jquery.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.min.css" rel="stylesheet" />
    

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
    <form id="form1" runat="server">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="docente.aspx" class="site_title"><img src="logouac2.fw.png"><span>    UAC</span> </a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <asp:Image class="img-circle profile_img" ID="Image1" runat="server" Height="70px" ImageUrl="~/app/images/user.png" Width="65px" />
              </div>
              <div class="profile_info">
                <span>Bienvenido,</span>
                <h2>Docente</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a href="docente.aspx"><i class="fa fa-home"></i> Inicio </a>
                  </li>
                  <li><a><i class="fa fa-edit"></i> Gestionar Asignatura <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="evaluarsilabo.aspx">Evaluar Silabo</a></li>
                      <li><a href="#">Corregir Silabo</a></li>
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
                    <img src="/app/images/user.png" alt=""><asp:Label ID="lblUser" runat="server" Text="Usuario"></asp:Label>
                  </a>
                  <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item"  href="javascript:;"> Perfil</a>
                      <a class="dropdown-item"  href="javascript:;">
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
                <h3>Crear Silabo</h3>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <!-- aqui empezamos  -->              
                <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Formulario <small>Información General</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                      <!-- aqui empezamos  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">Seleccione Silabo a corregir: </label>
                        <div class="col-md-4 col-sm-4 ">
                            <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" DataSourceID="idDatos" DataTextField="idSilabo" DataValueField="idSilabo" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                             <asp:SqlDataSource runat="server" ID="idDatos" ConnectionString='<%$ ConnectionStrings:websilabo_dbConnectionString %>' SelectCommand="SELECT [idSilabo] FROM [tsilabo]"></asp:SqlDataSource>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">Facultad: </label>
                        <div class="col-md-4 col-sm-4 ">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                         </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">Asignatura: </label>
                        <div class="col-md-4 col-sm-4 ">
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- inicio  -->
                      <asp:HiddenField ID="HiddenField1" runat="server" />
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.1 Escuela Profesional</label>
                        <div class="col-md-4 col-sm-4 ">
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                        <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.2 Plan de Estudios</label>
                        <div class="col-md-4 col-sm-4 ">
                          <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox4" runat="server"></asp:TextBox>

                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.3 Semestre Academico</label>
                        <div class="col-md-4 col-sm-4 ">
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox5" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.4 Ciclo de Estudios</label>
                        <div class="col-md-1 col-sm-4 ">
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox6" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.5 Area Curricular</label>
                        <div class="col-md-4 col-sm-4 ">
                          <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox7" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.6 Codigo de la Asignatura</label>
                        <div class="col-md-4 col-sm-4 ">
                          <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox8" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.7 Numero de Creditos
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox9" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.8 Pre Requisitos</label>
                        <div class="col-md-4 col-sm-4 ">
                          <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox10" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.9 Numero de Horas Teoricas Practicas </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox11" runat="server"></asp:TextBox>
                        </div>
                      </div>
                       <!-- inicio  -->
                       <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.10 Modalidad</label>
                        <div class="col-md-4 col-sm-4 ">
                          <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox12" runat="server"></asp:TextBox>
                        </div>
                      </div>

                  </div>
                </div>
              </div>
                <!-- /aqui terminar colapse content -->
                <!-- /aqui terminar colapse content -->
                <!-- /aqui terminar colapse content -->
                 <!-- /aqui terminar colapse content -->
              <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Formulario <small>Información General</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                      <!-- aqui empezamos  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.11 Duración por Semana</label>
                        <div class="col-md-1 col-sm-4 ">
                          <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox13" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                        <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.12 Aula</label>
                        <div class="col-md-4 col-sm-4 ">
                            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox14" runat="server"></asp:TextBox>

                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.13 Horario</label>
                          <div class="col-md-1 col-sm-4 ">
                            <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox15" runat="server"></asp:TextBox>
                          </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.14 Grupo</label>
                          <div class="col-md-1 col-sm-4 ">
                            <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox16" runat="server"></asp:TextBox>
                          </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.15 Inicio y Finalización del Semestre</label>
                        <div class="col-md-2 col-sm-2 ">
                            <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox17" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.16 Docente Responsable (Email) </label>
                        <div class="col-md-4 col-sm-4 ">
                            <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox18" runat="server"></asp:TextBox>
                            </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.17 Objetivos Educacionales
                        </label>
                        <div class="col-md-4 col-sm-4 ">
                            <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox19" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.18 Resultados del Estudiante
                        </label>
                        <div class="col-md-4 col-sm-4 ">
                           <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox20" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.19 Indicadores de Desempeño</label>
                        <div class="col-md-4 col-sm-4 ">
                           <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox21" runat="server"></asp:TextBox>
                        </div>
                      </div>
                  </div>
                </div>
              </div>
                 <!-- /aqui terminar colapse content -->
        
                <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Formulario <small>Información General</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                      <!-- aqui empezamos  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">2.1 Sumilla</label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox22" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.2 Valores y Principios éticos Profesionales
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox23" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->

                  </div>
                </div>
              </div>
                 <!-- /aqui terminar colapse content -->

                <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Campo 3 <small>PERFIL DEL EGRESADO Y RESULTADO DE APRENDIZAJE</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <!-- aqui empezamos  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">3.1 Competencias</label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox24" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Competencias2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox25" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Competencias3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox26" runat="server"></asp:TextBox>
                        </div>
                      </div>

                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.2 Desempeño
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox27" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> Desempeño 2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox28" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group"> 
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Desempeño 3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label29" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox29" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> Desempeño 4
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label30" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox30" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.3 Resultados
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label31" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox31" runat="server"></asp:TextBox>
                        </div>
                      </div>
                       <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> Resultado 2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label32" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox32" runat="server"></asp:TextBox>
                        </div>
                      </div>
                       <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> Resultado 3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label33" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox33" runat="server"></asp:TextBox>
                        </div>
                      </div>
                       <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> Resultado 4
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label34" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox34" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->

                  </div>
                </div>
              </div>
                 <!-- /aqui terminar colapse content -->

                <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Unidad 1 <small>PROGRAMACIÓN DE UNIDADES DE APRENDIZAJE</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <!-- aqui empezamos  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Contenidos Teoricos 1.1</label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label35" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox35" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.1.1
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label36" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox36" runat="server"></asp:TextBox>
                        </div>
                      </div>

                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividad
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label37" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox37" runat="server"></asp:TextBox>
                        </div>
                      </div>

                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label38" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox38" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label39" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox39" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.1.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label40" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox40" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label41" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox41" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label42" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox42" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label43" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox43" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.3.1
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label44" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox44" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.3.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label45" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox45" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.3.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label46" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox46" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividades
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label47" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox47" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración Semanas :
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label48" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox48" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.5
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label49" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox49" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Requerimientos
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label50" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox50" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividades
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label51" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox51" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración Semanas:
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label52" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox52" runat="server"></asp:TextBox>
                        </div>
                      </div>    
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Bibliografia 
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label53" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox53" runat="server"></asp:TextBox>
                        </div>
                      </div>  
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Fecha del Aporte
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label54" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox54" runat="server"></asp:TextBox>
                        </div>
                      </div>  
                      <!-- fin  -->
                  </div>
                </div>
              </div>
               <!-- /aqui terminar colapse content -->

                <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Unidad 2 <small>PROGRAMACIÓN DE UNIDADES DE APRENDIZAJE</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <!-- aqui empezamos  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Contenidos Teoricos 2.1</label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label55" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox55" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.1.1
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label56" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox56" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.1.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label57" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox57" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.1.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label58" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox58" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.1.4
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label59" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox59" runat="server"></asp:TextBox>
                        </div>
                      </div>

                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividad
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label60" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox60" runat="server"></asp:TextBox>
                        </div>
                      </div>

                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label61" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox61" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label62" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox62" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.2.1
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                         <asp:Label ID="Label63" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox63" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.2.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label64" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox64" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.2.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label65" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox65" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividad
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label66" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox66" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label67" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox67" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label68" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox68" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.3.1
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label69" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox69" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.3.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label70" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox70" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.3.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label71" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox71" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividades
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label72" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox72" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración Semanas :
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label73" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox73" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.4
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label74" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox74" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Requerimientos
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label75" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox75" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividades
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label76" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox76" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración Semanas:
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label77" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox77" runat="server"></asp:TextBox>
                        </div>
                      </div>    
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Bibliografia 
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label78" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox78" runat="server"></asp:TextBox>
                        </div>
                      </div>  
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Fecha del Aporte
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label79" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox79" runat="server"></asp:TextBox>
                        </div>
                      </div>  
                      <!-- fin  -->
                  </div>
                </div>
              </div>
               <!-- /aqui terminar colapse content -->

                <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Unidad 3 <small>PROGRAMACIÓN DE UNIDADES DE APRENDIZAJE</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <!-- aqui empezamos  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Contenidos Teoricos 3.1</label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label80" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox80" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.1.1
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label81" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox81" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.1.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label82" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox82" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.1.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label83" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox83" runat="server"></asp:TextBox>
                        </div>
                      </div>

                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividad
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label84" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox84" runat="server"></asp:TextBox>
                        </div>
                      </div>

                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label85" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox85" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label86" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox86" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.2.1
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label87" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox87" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.2.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label88" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox88" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.2.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label89" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox89" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividad
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label90" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox90" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label91" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox91" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label92" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox92" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.3.1
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label93" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox93" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.3.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label94" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox94" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.3.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label95" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox95" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.3.4
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label96" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox96" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividades
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label97" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox97" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración Semanas :
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label98" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox98" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.4
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label99" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox99" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Requerimientos
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label100" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox100" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividades
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label101" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox101" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración Semanas:
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label102" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox102" runat="server"></asp:TextBox>
                        </div>
                      </div>    
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Bibliografia 
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label103" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox103" runat="server"></asp:TextBox>
                        </div>
                      </div>  
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Fecha del Aporte
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label104" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox104" runat="server"></asp:TextBox>
                        </div>
                      </div>  
                      <!-- fin  -->
                  </div>
                </div>
              </div>
               <!-- /aqui terminar colapse content -->

                <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>METODOLOGIA  <small> ESTRATEGIAS</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                      <!-- aqui empezamos  -->
                      <!-- inicio  -->
                      <%--<div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align "> Unidad de Aprendizaje I</label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtUaprendizaje1" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> Unidad de Aprendizaje II
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtUaprendizaje2" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> Unidad de Aprendizaje III
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtUaprendizaje3" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>--%>
                      <!-- inicio  -->
                      
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> a. Estrategias didacticas
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label105" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox105" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> b. Recursos, Materiales educativos y tecnológicos
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label106" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox106" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->

                  </div>
                </div>
              </div>
                 <!-- /aqui terminar colapse content -->

                <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>METODOLOGIA  <small> ESTRATEGIAS</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                      <!-- aqui empezamos  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> a. Estrategias didacticas
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label107" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox107" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> b. Recursos, Materiales educativos y tecnológicos
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label108" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox108" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->

                  </div>
                </div>
              </div>
                 <!-- /aqui terminar colapse content -->
                <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Tabla 2 <small> Evalucación de actividades según los resultados de aprendizaje (1ra unidad)</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                      <!-- aqui empezamos  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 1ra Unidad Resultados de Aprendizaje
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label109" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox109" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1ra Unidad Actividades de Evaluar
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label110" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox110" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 1ra unidad Peso
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label111" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox111" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 1ra Unidad Resultados de Aprendizaje
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label112" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox112" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1ra Unidad Actividades de Evaluar
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label113" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox113" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 1ra unidad Peso IF
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label114" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox114" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->

                  </div>
                </div>
              </div>
                 <!-- /aqui terminar colapse content -->
                <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Tabla 2 <small> Evalucación de actividades según los resultados de aprendizaje (Segunda unidad)</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                      <!-- aqui empezamos  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 2da Unidad Resultados de Aprendizaje
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label115" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox115" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2da Unidad Actividades de Evaluar
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label116" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox116" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 2da unidad Peso
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label117" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox117" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 2da Unidad Resultados de Aprendizaje
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label118" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox118" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2daa Unidad Actividades de Evaluar
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label119" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox119" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 2da unidad Peso IF
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label120" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox120" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 2da Unidad Resultados de Aprendizaje
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label121" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox121" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2daa Unidad Actividades de Evaluar
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label122" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox122" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 2da unidad Peso RS
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label123" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox123" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->

                  </div>
                </div>
              </div>
                 <!-- /aqui terminar colapse content -->
                <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Tabla 2 <small> Evalucación de actividades según los resultados de aprendizaje (Tercera Unidad)</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                      <!-- aqui empezamos  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 3ra Unidad Resultados de Aprendizaje
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label124" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox124" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3ra Unidad Actividades de Evaluar
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label125" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox125" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 3ra unidad Peso
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label126" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox126" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 3ra Unidad Resultados de Aprendizaje
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label127" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox127" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3ra Unidad Actividades de Evaluar
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label128" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox128" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 3ra unidad Peso IF
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label129" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox129" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 3ra Unidad Resultados de Aprendizaje
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label130" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox130" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3ra Unidad Actividades de Evaluar
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label131" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox131" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 3ra unidad Peso RS
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:Label ID="Label132" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox132" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->

                  </div>
                </div>
              </div>
                 <!-- /aqui terminar colapse content -->

                <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Campo 6 <small>PROGRAMACIÓN DE UNIDADES DE APRENDIZAJE</small></h2>
                    <ul class="nav navbar-right panel_toolbox">

                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                      <!-- aqui empezamos  -->
                      <!-- inicio  -->

                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> Referencias Bibliográficas
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:Label ID="Label133" runat="server" Text="Label"></asp:Label><asp:TextBox class="form-control" ID="TextBox133" runat="server"></asp:TextBox>
                        </div>
                      </div>
                        <asp:TextBox ID="txtFechaActual" runat="server" ReadOnly="True" TextMode="Date" Visible="False"></asp:TextBox>
                      <div class="ln_solid"></div>
                          <div class="item form-group">
                            <div class="col-md-4 col-sm-6 offset-md-3">
                                <asp:Button class="btn btn-success" ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Enviar para corregir" />
                                <asp:Button class="btn btn-danger" ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" />
                                <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
                            </div>                             
                          </div>               
                </div>
                      <!-- fin  -->


                  </div>
                </div>
              </div>
                 <!-- /aqui terminar colapse content -->
                <!-- aqui empezamos  -->
                

            </div>
          </div>
        </div>
        <!-- /page content -->


        <!-- footer content -->
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
