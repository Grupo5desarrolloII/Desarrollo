<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crearsilabo.aspx.cs" Inherits="websilabo.crearsilabo" %>

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
                      <li><a href="#">Crear Silabo</a></li>
                      <li><a href="actualizarsilabo.aspx">Actualizar Silabo</a></li>
                      <li><a href="eliminarsilabo.aspx">Eliminar Silabo</a></li>
                      <li><a href="buscarsilabo.aspx">Buscar Silabo</a></li>
                      <li><a href="verestadosilabo.aspx">Ver Estado Silabo</a></li>
                      <li><a href="asignaturadocente.aspx">Crear Asignatura</a></li>
                      <li><a href="buscarporasignatura.aspx">Buscar por Asignatura</a></li>
                      <li><a href="buscarpordocente.aspx">Buscar por Docente</a></li>
                      <li><a href="buscarporsemestreacademico.aspx">Buscar por Semestre</a></li>
                      <li><a href="buscarpornumerocreditos.aspx">Buscar por Creditos</a></li>
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
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">Facultad: </label>
                        <div class="col-md-4 col-sm-4 ">
                          <asp:DropDownList class="form-control" ID="cboFacultad" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboFacultad_SelectedIndexChanged">
                              <asp:ListItem>Ciencias Economicas Administrativas y Contables</asp:ListItem>
                              <asp:ListItem>Ciencias y Humanidades</asp:ListItem>
                              <asp:ListItem>Derecho y Ciencia Politica</asp:ListItem>
                              <asp:ListItem>Ingenieria y Arquitectura</asp:ListItem>
                              <asp:ListItem>Ciencias de la Salud</asp:ListItem>
                          </asp:DropDownList>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">Asignatura: </label>
                        <div class="col-md-4 col-sm-4 ">
                          <asp:DropDownList class="form-control" ID="cboAsigntura" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboAsigntura_SelectedIndexChanged">

                          </asp:DropDownList>
                            <script> $('#<%=cboAsigntura.ClientID%>').chosen();</script>
                        </div>
                      </div>
                      <!-- inicio  -->
                      <asp:HiddenField ID="HiddenField1" runat="server" />
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.1 Escuela Profesional</label>
                        <div class="col-md-4 col-sm-4 ">
                          <asp:DropDownList class="form-control" ID="cboEscuelaProfesional" runat="server" OnSelectedIndexChanged="cboEscuelaProfesional_SelectedIndexChanged" AutoPostBack="True">
                            </asp:DropDownList>
                        </div>
                      </div>
                      <!-- fin  -->
                        <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.2 Plan de Estudios</label>
                        <div class="col-md-4 col-sm-4 ">
                          <asp:DropDownList class="form-control" ID="cboPlanEstudios" runat="server" DataSourceID="SqlDataSourceWebSilabo" DataTextField="PlanEstudios" DataValueField="PlanEstudios">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceWebSilabo" runat="server" ConnectionString="<%$ ConnectionStrings:websilabo_dbConnectionString %>" SelectCommand="SELECT DISTINCT [PlanEstudios] FROM [tplanestudios]"></asp:SqlDataSource>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.3 Semestre Academico</label>
                        <div class="col-md-4 col-sm-4 ">
                            <asp:DropDownList ID="cboSemestreAcademico" runat="server" Width="150" DataSourceID="semestreDatos" DataTextField="NombreSemestre" DataValueField="NombreSemestre">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="semestreDatos" runat="server" ConnectionString="<%$ ConnectionStrings:websilabo_dbConnectionString %>" SelectCommand="SELECT DISTINCT [NombreSemestre] FROM [tsemestreacademico]"></asp:SqlDataSource>
                            <script> $('#<%=cboSemestreAcademico.ClientID%>').chosen();</script>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.4 Ciclo de Estudios</label>
                        <div class="col-md-1 col-sm-4 ">
                            <asp:TextBox class="form-control" ID="txtCicloEstudios" runat="server" TextMode="Number" min="1" max="15" step="1"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.5 Area Curricular</label>
                        <div class="col-md-4 col-sm-4 ">
                          <asp:DropDownList class="form-control" ID="cboAreaCurricular" runat="server" DataSourceID="areaCurricularDatos" DataTextField="Column1" DataValueField="Column1">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="areaCurricularDatos" runat="server" ConnectionString="<%$ ConnectionStrings:websilabo_dbConnectionString %>" SelectCommand="SELECT CONCAT_WS(' ',[SiglasCurricular],'-', [NombreArea]) FROM [tareacurricular]"></asp:SqlDataSource>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.6 Codigo de la Asignatura</label>
                        <div class="col-md-4 col-sm-4 ">
                          <asp:TextBox class="form-control" disabled="disabled" ID="txtAsignatura" runat="server" ></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.7 Numero de Creditos
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtNumeroCreditos" runat="server" TextMode="Number" min="1" max="20" step="1"></asp:TextBox>
                        </div>
                      </div>
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.8 Pre Requisitos</label>
                        <div class="col-md-4 col-sm-4 ">
                          <asp:DropDownList class="form-control" ID="cboPreRequsitos" runat="server">
                              <asp:ListItem>Ninguno</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>
                      <!-- fin  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.9 Numero de Horas Teoricas Practicas </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtHorasPractica" runat="server" TextMode="Number" min="1" max="40" step="1"></asp:TextBox>
                        </div>
                      </div>
                       <!-- inicio  -->
                       <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.10 Modalidad</label>
                        <div class="col-md-4 col-sm-4 ">
                          <asp:DropDownList class="form-control" ID="cboModalidad" runat="server">
                              <asp:ListItem>Presencial</asp:ListItem>
                              <asp:ListItem>No Presencial</asp:ListItem>
                            </asp:DropDownList>
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
                          <asp:TextBox class="form-control" ID="txtDuracionSemanal" runat="server" TextMode="Number" min="1" max="40" step="1"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                        <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.12 Aula</label>
                        <div class="col-md-4 col-sm-4 ">
                            <asp:DropDownList class="form-control" ID="cboAula" runat="server" DataSourceID="aulaDatos" DataTextField="Column1" DataValueField="Column1"></asp:DropDownList>
                            <asp:SqlDataSource runat="server" ID="aulaDatos" ConnectionString='<%$ ConnectionStrings:websilabo_dbConnectionString %>' SelectCommand="SELECT CONCAT_WS(' ',[NumeroAula],'-', [TipoAula]) FROM [taula]"></asp:SqlDataSource>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.13 Horario</label>
                          <div class="col-md-1 col-sm-4 ">
                            <asp:TextBox class="form-control" ID="txtGrupo" runat="server"></asp:TextBox>
                          </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.14 Grupo</label>
                          <div class="col-md-1 col-sm-4 ">
                            <asp:TextBox class="form-control" ID="txtHorario" runat="server" TextMode="Number" min="0" max="20" step="1"></asp:TextBox>
                          </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.15 Inicio y Finalización del Semestre</label>
                        <div class="col-md-2 col-sm-2 ">
                            <asp:TextBox ID="dtpFechaInicio" runat="server" TextMode="Date" ></asp:TextBox>
                            <asp:TextBox ID="dtpFechaFin" runat="server" TextMode="Date" ></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.16 Docente Responsable (Email) </label>
                        <div class="col-md-4 col-sm-4 ">
                            <asp:DropDownList class="form-control" disabled="disabled" ID="cboDocenteResponsable" runat="server" DataSourceID="docenteResposableConcat" DataTextField="Column1" DataValueField="Column1" Enabled="False"></asp:DropDownList>
                            <asp:SqlDataSource ID="docenteResposableConcat" runat="server" ConnectionString="<%$ ConnectionStrings:websilabo_dbConnectionString %>" SelectCommand="SELECT [Nombres]+' '+[Apellidos]+' - '+[Correo]   FROM [tusuarioactivo]"></asp:SqlDataSource>
                            <asp:SqlDataSource runat="server" ID="DocentesData" ConnectionString='<%$ ConnectionStrings:websilabo_dbConnectionString %>' SelectCommand="SELECT [Correo] FROM [tusuario] where [ComiteRevision] = 1"></asp:SqlDataSource>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.17 Objetivos Educacionales
                        </label>
                        <div class="col-md-4 col-sm-4 ">
                            <asp:DropDownList class="form-control" ID="cboObjetivoEduacional" runat="server" DataSourceID="objetivoEducacionalData" DataTextField="NombreObjetivo" DataValueField="NombreObjetivo" AutoPostBack="True" OnSelectedIndexChanged="cboObjetivoEduacional_SelectedIndexChanged1">
                                <%--<asp:ListItem>--SELECT YOUR DEPARTMENT-- </asp:ListItem>--%>
                            </asp:DropDownList>
                            <asp:DropDownList class="form-control" ID="cboObjetivoEducacional2" runat="server" DataSourceID="objetivoEducacionalData" DataTextField="NombreObjetivo" DataValueField="NombreObjetivo" AutoPostBack="True" OnSelectedIndexChanged="cboObjetivoEducacional2_SelectedIndexChanged"></asp:DropDownList>
                            <asp:DropDownList class="form-control" ID="cboObjetivoEducacional3" runat="server" DataSourceID="objetivoEducacionalData" DataTextField="NombreObjetivo" DataValueField="NombreObjetivo" AutoPostBack="True" OnSelectedIndexChanged="cboObjetivoEducacional3_SelectedIndexChanged"></asp:DropDownList>
                            
                            <asp:SqlDataSource runat="server" ID="objetivoEducacionalData" ConnectionString='<%$ ConnectionStrings:websilabo_dbConnectionString %>' SelectCommand="SELECT [NombreObjetivo] FROM [tobjetivoeducacional]"></asp:SqlDataSource>
                        </div>
                      </div>
                      <!-- fin  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.18 Resultados del Estudiante
                        </label>
                        <div class="col-md-4 col-sm-4 ">
                            <asp:DropDownList class="form-control" ID="cboResultadoEstudent" runat="server" DataSourceID="resultadoEstData" DataTextField="SiglasResultado" DataValueField="SiglasResultado" AutoPostBack="True" OnSelectedIndexChanged="cboResultadoEstudent_SelectedIndexChanged"></asp:DropDownList>
                            <asp:DropDownList class="form-control" ID="cboResultadoEstudent2" runat="server" DataSourceID="resultadoEstData" DataTextField="SiglasResultado" DataValueField="SiglasResultado" AutoPostBack="True" OnSelectedIndexChanged="cboResultadoEstudent2_SelectedIndexChanged"></asp:DropDownList>
                            <asp:DropDownList class="form-control" ID="cboResultadoEstudent3" runat="server" DataSourceID="resultadoEstData" DataTextField="SiglasResultado" DataValueField="SiglasResultado" AutoPostBack="True" OnSelectedIndexChanged="cboResultadoEstudent3_SelectedIndexChanged"></asp:DropDownList>
                            <asp:DropDownList class="form-control" ID="cboResultadoEstudent4" runat="server" DataSourceID="resultadoEstData" DataTextField="SiglasResultado" DataValueField="SiglasResultado" AutoPostBack="True" OnSelectedIndexChanged="cboResultadoEstudent4_SelectedIndexChanged"></asp:DropDownList>                           
                            <asp:SqlDataSource runat="server" ID="resultadoEstData" ConnectionString='<%$ ConnectionStrings:websilabo_dbConnectionString %>' SelectCommand="SELECT [SiglasResultado] FROM [trestultadoestudiante]"></asp:SqlDataSource>
                        </div>
                      </div>
                      <!-- inicio  -->
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align ">1.19 Indicadores de Desempeño</label>
                        <div class="col-md-4 col-sm-4 ">
                            <asp:DropDownList class="form-control" ID="cboIndiDesempeno" runat="server" DataSourceID="indicadorDesemData" DataTextField="SiglaIndicador" DataValueField="SiglaIndicador" AutoPostBack="True" OnSelectedIndexChanged="cboIndiDesempeno_SelectedIndexChanged"></asp:DropDownList>
                            <asp:DropDownList class="form-control" ID="cboIndiDesempeno2" runat="server" DataSourceID="indicadorDesemData" DataTextField="SiglaIndicador" DataValueField="SiglaIndicador" AutoPostBack="True" OnSelectedIndexChanged="cboIndiDesempeno2_SelectedIndexChanged"></asp:DropDownList>
                            <asp:DropDownList class="form-control" ID="cboIndiDesempeno3" runat="server" DataSourceID="indicadorDesemData" DataTextField="SiglaIndicador" DataValueField="SiglaIndicador" AutoPostBack="True" OnSelectedIndexChanged="cboIndiDesempeno3_SelectedIndexChanged"></asp:DropDownList>
                            <asp:DropDownList class="form-control" ID="cboIndiDesempeno4" runat="server" DataSourceID="indicadorDesemData" DataTextField="SiglaIndicador" DataValueField="SiglaIndicador" AutoPostBack="True" OnSelectedIndexChanged="cboIndiDesempeno4_SelectedIndexChanged"></asp:DropDownList>
                            
                            <asp:SqlDataSource runat="server" ID="indicadorDesemData" ConnectionString='<%$ ConnectionStrings:websilabo_dbConnectionString %>' SelectCommand="SELECT [SiglaIndicador] FROM [tindicadoresdesempeno]"></asp:SqlDataSource>
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
                          <asp:TextBox class="form-control" ID="txtSumilla" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.2 Valores y Principios éticos Profesionales
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtValoresyPrincipios" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                          <asp:TextBox class="form-control" ID="txtCompetencias" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Competencias2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtCompetencias2" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Competencias3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtCompetencias3" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>

                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.2 Desempeño
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtDesempenio" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> Desempeño 2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtDesempenio2" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group"> 
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Desempeño 3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtDesempenio3" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> Desempeño 4
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtDesempenio4" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.3 Resultados
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtResultado" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                       <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> Resultado 2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtResultado2" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                       <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> Resultado 3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtResultado3" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                       <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> Resultado 4
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtResultado4" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                          <asp:TextBox class="form-control" ID="txtConte11" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.1.1
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte111" runat="server"></asp:TextBox>
                        </div>
                      </div>

                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividad
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActi1" runat="server"></asp:TextBox>
                        </div>
                      </div>

                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtDuracion1" runat="server" TextMode="Number" min="1" max="40" step="1"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte12" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.1.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte112" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActi2" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtDuracion2" runat="server" TextMode="Number" min="1" max="40" step="1"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte13" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.3.1
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte131" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.3.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte132" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.3.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte133" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividades
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActi3" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración Semanas :
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtDuracion3" runat="server" TextMode="Number" min="1" max="40" step="1"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1.5
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte15" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Requerimientos
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtRequi1" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividades
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActi4" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración Semanas:
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtDuracion4" runat="server" TextMode="Number" min="1" max="40" step="1"></asp:TextBox>
                        </div>
                      </div>    
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Bibliografia 
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtBibliografia1" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>  
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Fecha del Aporte
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtFecha1" runat="server"></asp:TextBox>
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
                          <asp:TextBox class="form-control" ID="txtConte21" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.1.1
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte211" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.1.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte212" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.1.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte213" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.1.4
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte214" runat="server"></asp:TextBox>
                        </div>
                      </div>

                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividad
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActivi1" runat="server"></asp:TextBox>
                        </div>
                      </div>

                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtDuracion12" runat="server" TextMode="Number" min="1" max="40" step="1"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte22" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.2.1
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte221" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.2.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte222" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.2.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte223" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividad
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActivi2" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtDuracion22" runat="server" TextMode="Number" min="1" max="40" step="1"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte23" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.3.1
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte231" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.3.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte232" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.3.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte233" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividades
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActi1111" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración Semanas :
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtDuracion23" runat="server" TextMode="Number" min="1" max="40" step="1"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2.4
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte24" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Requerimientos
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtReque24" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividades
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActivi4" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración Semanas:
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtDuracion24" runat="server" TextMode="Number" min="1" max="40" step="1"></asp:TextBox>
                        </div>
                      </div>    
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Bibliografia 
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtBiblio1" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>  
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Fecha del Aporte
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtFecha11" runat="server"></asp:TextBox>
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
                          <asp:TextBox class="form-control" ID="txtConte31" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.1.1
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte311" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.1.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte312" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.1.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte313" runat="server"></asp:TextBox>
                        </div>
                      </div>

                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividad
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActivi31" runat="server"></asp:TextBox>
                        </div>
                      </div>

                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtDuracion31" runat="server" TextMode="Number" min="1" max="40" step="1"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte32" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.2.1
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte321" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.2.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte322" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.2.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte323" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividad
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActividad32" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtDuracion32" runat="server" TextMode="Number" min="1" max="40" step="1"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte33" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.3.1
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte331" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.3.2
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte332" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.3.3
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte333" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.3.4
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte334" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividades
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActivi33" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración Semanas :
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtDuracion33" runat="server" TextMode="Number" min="1" max="40" step="1"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3.4
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtConte34" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Requerimientos
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtRequeri34" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Actividades
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActivi34" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Duración Semanas:
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtDuracion34" runat="server" TextMode="Number" min="1" max="40" step="1"></asp:TextBox>
                        </div>
                      </div>    
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Bibliografia 
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtBibliografia34" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>  
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Fecha del Aporte
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtFecha34" runat="server"></asp:TextBox>
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
                          <asp:TextBox class="form-control" ID="txtEstrategias" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> b. Recursos, Materiales educativos y tecnológicos
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtRecursos" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->

                  </div>
                </div>
              </div>
                 <!-- /aqui terminar colapse content -->

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
                          <asp:TextBox class="form-control" ID="txtResultadosAprendizaje1" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1ra Unidad Actividades de Evaluar
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActiEvaluar1" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 1ra unidad Peso
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtPeso1" runat="server" TextMode="Number" min="1" max="20" step="1"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 1ra Unidad Resultados de Aprendizaje
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtResultadosAprendizaje11" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">1ra Unidad Actividades de Evaluar
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActiEvaluar11" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 1ra unidad Peso IF
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtPeso11" runat="server" TextMode="Number" min="1" max="20" step="1"></asp:TextBox>
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
                          <asp:TextBox class="form-control" ID="txtResultadosAprendizaje112" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2da Unidad Actividades de Evaluar
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActiEvaluar112" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 2da unidad Peso
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtPeso21" runat="server" TextMode="Number" min="1" max="20" step="1"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 2da Unidad Resultados de Aprendizaje
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtResultadosAprendizaje113" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2daa Unidad Actividades de Evaluar
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActiEvaluar122" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 2da unidad Peso IF
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtPeso22" runat="server" TextMode="Number" min="1" max="20" step="1"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 2da Unidad Resultados de Aprendizaje
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtResultadosAprendizaje114" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">2daa Unidad Actividades de Evaluar
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActiEvaluar114" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 2da unidad Peso RS
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtPeso23" runat="server" TextMode="Number" min="1" max="20" step="1"></asp:TextBox>
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
                          <asp:TextBox class="form-control" ID="txtResultadosAprendizaje31" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3ra Unidad Actividades de Evaluar
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActiEvaluar31" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 3ra unidad Peso
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtPeso31" runat="server" TextMode="Number" min="1" max="20" step="1"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 3ra Unidad Resultados de Aprendizaje
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtResultadosAprendizaje32" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3ra Unidad Actividades de Evaluar
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActiEvaluar32" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 3ra unidad Peso IF
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtPeso32" runat="server" TextMode="Number" min="1" max="20" step="1"></asp:TextBox>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 3ra Unidad Resultados de Aprendizaje
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtResultadosAprendizaje33" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">3ra Unidad Actividades de Evaluar
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtActiEvaluar33" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <!-- fin  -->
                      <!-- inicio  -->
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> 3ra unidad Peso RS
                        </label>
                        <div class="col-md-1 col-sm-6 ">
                          <asp:TextBox class="form-control" ID="txtPeso33" runat="server" TextMode="Number" min="1" max="20" step="1"></asp:TextBox>
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
                          <asp:TextBox class="form-control" ID="txtRefBibliografica" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                      </div>
                        <asp:TextBox ID="txtFechaActual" runat="server" ReadOnly="True" TextMode="Date" Visible="False"></asp:TextBox>
                      <div class="ln_solid"></div>
                          <div class="item form-group">
                            <div class="col-md-4 col-sm-6 offset-md-3">
                                <asp:Button class="btn btn-success" ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Guardar" />
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
