<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buscarsilabo.aspx.cs" Inherits="websilabo.buscarsilabo" %>

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
    <title>Buscar Silabo | UAC</title>

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
                      <li><a href="crearsilabo.aspx">Crear Silabo</a></li>
                      <li><a href="actualizarsilabo.aspx">Actualizar Silabo</a></li>
                      <li><a href="eliminarsilabo.aspx">Eliminar Silabo</a></li>
                      <li><a href="#">Buscar Silabo</a></li>
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
                <h3>Buscar Silabo</h3>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
                <!-- aqui empezamos  -->              
                <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Listado <small> de los silabos</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                      <!-- aqui empezamos  -->
                      <!-- inicio  -->
                      <asp:GridView class="table table-striped" ID="gvUsuarios" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" DataKeyNames="idSilabo" DataSourceID="datosSilaboEstado">
                          <Columns>
                              <asp:BoundField DataField="idSilabo" HeaderText="idSilabo" ReadOnly="True" InsertVisible="False" SortExpression="idSilabo"></asp:BoundField>
                              <asp:BoundField DataField="fechaRegistro" HeaderText="fechaRegistro" SortExpression="fechaRegistro" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
                              <asp:BoundField DataField="CodigodeAsignatura" HeaderText="CodigodeAsignatura" SortExpression="CodigodeAsignatura"></asp:BoundField>
                              <asp:BoundField DataField="DocenteResponsable" HeaderText="DocenteResponsable" SortExpression="DocenteResponsable"></asp:BoundField>
                              <asp:CheckBoxField DataField="Aprovado" HeaderText="Aprobado" SortExpression="Aprovado"></asp:CheckBoxField>
                          </Columns>

                          <Columns>
                          </Columns>
                          <FooterStyle BackColor="#CCCC99" ForeColor="Black"></FooterStyle>

                          <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White"></HeaderStyle>

                          <PagerStyle HorizontalAlign="Right" BackColor="White" ForeColor="Black"></PagerStyle>

                          <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                          <SortedAscendingCellStyle BackColor="#F7F7F7"></SortedAscendingCellStyle>

                          <SortedAscendingHeaderStyle BackColor="#4B4B4B"></SortedAscendingHeaderStyle>

                          <SortedDescendingCellStyle BackColor="#E5E5E5"></SortedDescendingCellStyle>

                          <SortedDescendingHeaderStyle BackColor="#242121"></SortedDescendingHeaderStyle>
                      </asp:GridView>

                      <br />
                      <br />
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idSilabo" DataSourceID="listaSilabo" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                          <Columns>
                              <asp:BoundField DataField="idSilabo" HeaderText="idSilabo" InsertVisible="False" ReadOnly="True" SortExpression="idSilabo" />
                              <asp:BoundField DataField="Facultad" HeaderText="Facultad" SortExpression="Facultad" />
                              <asp:BoundField DataField="Asignatura" HeaderText="Asignatura" SortExpression="Asignatura" />
                              <asp:BoundField DataField="EscuelaProfesional" HeaderText="EscuelaProfesional" SortExpression="EscuelaProfesional" />
                              <asp:BoundField DataField="PlanEstudios" HeaderText="PlanEstudios" SortExpression="PlanEstudios" />
                              <asp:BoundField DataField="SemestreAcademico" HeaderText="SemestreAcademico" SortExpression="SemestreAcademico" />
                              <asp:BoundField DataField="CiclodeEstudios" HeaderText="CiclodeEstudios" SortExpression="CiclodeEstudios" />
                              <asp:BoundField DataField="AreaCurricular" HeaderText="AreaCurricular" SortExpression="AreaCurricular" />
                              <asp:BoundField DataField="CodigodeAsignatura" HeaderText="CodigodeAsignatura" SortExpression="CodigodeAsignatura" />
                              <asp:BoundField DataField="NumeroCreditos" HeaderText="NumeroCreditos" SortExpression="NumeroCreditos" />
                              <asp:BoundField DataField="PreRequisitos" HeaderText="PreRequisitos" SortExpression="PreRequisitos" />
                              <asp:BoundField DataField="NumeroHorasPractica" HeaderText="NumeroHorasPractica" SortExpression="NumeroHorasPractica" />
                              <asp:BoundField DataField="Modalidad" HeaderText="Modalidad" SortExpression="Modalidad" />
                              <asp:BoundField DataField="DuracionSemanal" HeaderText="DuracionSemanal" SortExpression="DuracionSemanal" />
                              <asp:BoundField DataField="NumAula" HeaderText="NumAula" SortExpression="NumAula" />
                              <asp:BoundField DataField="Horario" HeaderText="Horario" SortExpression="Horario" />
                              <asp:BoundField DataField="Grupo" HeaderText="Grupo" SortExpression="Grupo" />
                              <asp:BoundField DataField="DuracionSemestre" HeaderText="DuracionSemestre" SortExpression="DuracionSemestre" />
                              <asp:BoundField DataField="DocenteResponsable" HeaderText="DocenteResponsable" SortExpression="DocenteResponsable" />
                              <asp:BoundField DataField="ObjetivosEducacionales" HeaderText="ObjetivosEducacionales" SortExpression="ObjetivosEducacionales" />
                              <asp:BoundField DataField="ResultadosEstudiante" HeaderText="ResultadosEstudiante" SortExpression="ResultadosEstudiante" />
                              <asp:BoundField DataField="IndicadoresDesempeno" HeaderText="IndicadoresDesempeno" SortExpression="IndicadoresDesempeno" />
                              <asp:BoundField DataField="Sumilla" HeaderText="Sumilla" SortExpression="Sumilla" />
                              <asp:BoundField DataField="ValoresProfesionales" HeaderText="ValoresProfesionales" SortExpression="ValoresProfesionales" />
                              <asp:BoundField DataField="pCompetencias1" HeaderText="pCompetencias1" SortExpression="pCompetencias1" />
                              <asp:BoundField DataField="pCompetencias2" HeaderText="pCompetencias2" SortExpression="pCompetencias2" />
                              <asp:BoundField DataField="pCompetencias3" HeaderText="pCompetencias3" SortExpression="pCompetencias3" />
                              <asp:BoundField DataField="pDesempeno1" HeaderText="pDesempeno1" SortExpression="pDesempeno1" />
                              <asp:BoundField DataField="pDesempeno2" HeaderText="pDesempeno2" SortExpression="pDesempeno2" />
                              <asp:BoundField DataField="pDesempeno3" HeaderText="pDesempeno3" SortExpression="pDesempeno3" />
                              <asp:BoundField DataField="pDesempeno4" HeaderText="pDesempeno4" SortExpression="pDesempeno4" />
                              <asp:BoundField DataField="pResultado1" HeaderText="pResultado1" SortExpression="pResultado1" />
                              <asp:BoundField DataField="pResultado2" HeaderText="pResultado2" SortExpression="pResultado2" />
                              <asp:BoundField DataField="pResultado3" HeaderText="pResultado3" SortExpression="pResultado3" />
                              <asp:BoundField DataField="pResultado4" HeaderText="pResultado4" SortExpression="pResultado4" />
                              <asp:BoundField DataField="uni1Conte11" HeaderText="uni1Conte11" SortExpression="uni1Conte11" />
                              <asp:BoundField DataField="uni1Conte111" HeaderText="uni1Conte111" SortExpression="uni1Conte111" />
                              <asp:BoundField DataField="uni1Acti1" HeaderText="uni1Acti1" SortExpression="uni1Acti1" />
                              <asp:BoundField DataField="uni1Duracion1" HeaderText="uni1Duracion1" SortExpression="uni1Duracion1" />
                              <asp:BoundField DataField="uni1Conte12" HeaderText="uni1Conte12" SortExpression="uni1Conte12" />
                              <asp:BoundField DataField="uni1Conte112" HeaderText="uni1Conte112" SortExpression="uni1Conte112" />
                              <asp:BoundField DataField="uni1Acti2" HeaderText="uni1Acti2" SortExpression="uni1Acti2" />
                              <asp:BoundField DataField="uni1Duracion2" HeaderText="uni1Duracion2" SortExpression="uni1Duracion2" />
                              <asp:BoundField DataField="uni1Conte13" HeaderText="uni1Conte13" SortExpression="uni1Conte13" />
                              <asp:BoundField DataField="uni1Conte131" HeaderText="uni1Conte131" SortExpression="uni1Conte131" />
                              <asp:BoundField DataField="uni1Conte132" HeaderText="uni1Conte132" SortExpression="uni1Conte132" />
                              <asp:BoundField DataField="uni1Conte133" HeaderText="uni1Conte133" SortExpression="uni1Conte133" />
                              <asp:BoundField DataField="uni1Acti31" HeaderText="uni1Acti31" SortExpression="uni1Acti31" />
                              <asp:BoundField DataField="uni1Duracion3" HeaderText="uni1Duracion3" SortExpression="uni1Duracion3" />
                              <asp:BoundField DataField="uni1Conte115" HeaderText="uni1Conte115" SortExpression="uni1Conte115" />
                              <asp:BoundField DataField="uni1Requi1" HeaderText="uni1Requi1" SortExpression="uni1Requi1" />
                              <asp:BoundField DataField="uni1Acti4" HeaderText="uni1Acti4" SortExpression="uni1Acti4" />
                              <asp:BoundField DataField="uni1Duracion4" HeaderText="uni1Duracion4" SortExpression="uni1Duracion4" />
                              <asp:BoundField DataField="uni1Biblio" HeaderText="uni1Biblio" SortExpression="uni1Biblio" />
                              <asp:BoundField DataField="uni1Fecha1" HeaderText="uni1Fecha1" SortExpression="uni1Fecha1" />
                              <asp:BoundField DataField="uni2Conte11" HeaderText="uni2Conte11" SortExpression="uni2Conte11" />
                              <asp:BoundField DataField="uni2Conte111" HeaderText="uni2Conte111" SortExpression="uni2Conte111" />
                              <asp:BoundField DataField="uni2Conte112" HeaderText="uni2Conte112" SortExpression="uni2Conte112" />
                              <asp:BoundField DataField="uni2Conte113" HeaderText="uni2Conte113" SortExpression="uni2Conte113" />
                              <asp:BoundField DataField="uni2Conte114" HeaderText="uni2Conte114" SortExpression="uni2Conte114" />
                              <asp:BoundField DataField="uni2Acti1" HeaderText="uni2Acti1" SortExpression="uni2Acti1" />
                              <asp:BoundField DataField="uni2Duracion1" HeaderText="uni2Duracion1" SortExpression="uni2Duracion1" />
                              <asp:BoundField DataField="uni2Conte22" HeaderText="uni2Conte22" SortExpression="uni2Conte22" />
                              <asp:BoundField DataField="uni2Conte221" HeaderText="uni2Conte221" SortExpression="uni2Conte221" />
                              <asp:BoundField DataField="uni2Conte222" HeaderText="uni2Conte222" SortExpression="uni2Conte222" />
                              <asp:BoundField DataField="uni2Conte223" HeaderText="uni2Conte223" SortExpression="uni2Conte223" />
                              <asp:BoundField DataField="uni2Acti2" HeaderText="uni2Acti2" SortExpression="uni2Acti2" />
                              <asp:BoundField DataField="uni2Duracion2" HeaderText="uni2Duracion2" SortExpression="uni2Duracion2" />
                              <asp:BoundField DataField="uni2Conte23" HeaderText="uni2Conte23" SortExpression="uni2Conte23" />
                              <asp:BoundField DataField="uni2Conte231" HeaderText="uni2Conte231" SortExpression="uni2Conte231" />
                              <asp:BoundField DataField="uni2Conte232" HeaderText="uni2Conte232" SortExpression="uni2Conte232" />
                              <asp:BoundField DataField="uni2Conte233" HeaderText="uni2Conte233" SortExpression="uni2Conte233" />
                              <asp:BoundField DataField="uni2Acti31" HeaderText="uni2Acti31" SortExpression="uni2Acti31" />
                              <asp:BoundField DataField="uni2Duracion3" HeaderText="uni2Duracion3" SortExpression="uni2Duracion3" />
                              <asp:BoundField DataField="uni2Conte24" HeaderText="uni2Conte24" SortExpression="uni2Conte24" />
                              <asp:BoundField DataField="uni2Requi1" HeaderText="uni2Requi1" SortExpression="uni2Requi1" />
                              <asp:BoundField DataField="uni2Acti4" HeaderText="uni2Acti4" SortExpression="uni2Acti4" />
                              <asp:BoundField DataField="uni2Duracion4" HeaderText="uni2Duracion4" SortExpression="uni2Duracion4" />
                              <asp:BoundField DataField="uni2Biblio" HeaderText="uni2Biblio" SortExpression="uni2Biblio" />
                              <asp:BoundField DataField="uni2Fecha1" HeaderText="uni2Fecha1" SortExpression="uni2Fecha1" />
                              <asp:BoundField DataField="uni3Conte31" HeaderText="uni3Conte31" SortExpression="uni3Conte31" />
                              <asp:BoundField DataField="uni3Conte311" HeaderText="uni3Conte311" SortExpression="uni3Conte311" />
                              <asp:BoundField DataField="uni3Conte312" HeaderText="uni3Conte312" SortExpression="uni3Conte312" />
                              <asp:BoundField DataField="uni3Conte313" HeaderText="uni3Conte313" SortExpression="uni3Conte313" />
                              <asp:BoundField DataField="uni3Acti1" HeaderText="uni3Acti1" SortExpression="uni3Acti1" />
                              <asp:BoundField DataField="uni3Duracion1" HeaderText="uni3Duracion1" SortExpression="uni3Duracion1" />
                              <asp:BoundField DataField="uni3Conte32" HeaderText="uni3Conte32" SortExpression="uni3Conte32" />
                              <asp:BoundField DataField="uni3Conte321" HeaderText="uni3Conte321" SortExpression="uni3Conte321" />
                              <asp:BoundField DataField="uni3Conte322" HeaderText="uni3Conte322" SortExpression="uni3Conte322" />
                              <asp:BoundField DataField="uni3Conte323" HeaderText="uni3Conte323" SortExpression="uni3Conte323" />
                              <asp:BoundField DataField="uni3Acti2" HeaderText="uni3Acti2" SortExpression="uni3Acti2" />
                              <asp:BoundField DataField="uni3Duracion2" HeaderText="uni3Duracion2" SortExpression="uni3Duracion2" />
                              <asp:BoundField DataField="uni3Conte33" HeaderText="uni3Conte33" SortExpression="uni3Conte33" />
                              <asp:BoundField DataField="uni3Conte331" HeaderText="uni3Conte331" SortExpression="uni3Conte331" />
                              <asp:BoundField DataField="uni3Conte332" HeaderText="uni3Conte332" SortExpression="uni3Conte332" />
                              <asp:BoundField DataField="uni3Conte333" HeaderText="uni3Conte333" SortExpression="uni3Conte333" />
                              <asp:BoundField DataField="uni3Conte334" HeaderText="uni3Conte334" SortExpression="uni3Conte334" />
                              <asp:BoundField DataField="uni3Acti31" HeaderText="uni3Acti31" SortExpression="uni3Acti31" />
                              <asp:BoundField DataField="uni32Duracion3" HeaderText="uni32Duracion3" SortExpression="uni32Duracion3" />
                              <asp:BoundField DataField="uni3Conte34" HeaderText="uni3Conte34" SortExpression="uni3Conte34" />
                              <asp:BoundField DataField="uni3Requi1" HeaderText="uni3Requi1" SortExpression="uni3Requi1" />
                              <asp:BoundField DataField="uni3Acti4" HeaderText="uni3Acti4" SortExpression="uni3Acti4" />
                              <asp:BoundField DataField="uni3Duracion4" HeaderText="uni3Duracion4" SortExpression="uni3Duracion4" />
                              <asp:BoundField DataField="uni3Biblio" HeaderText="uni3Biblio" SortExpression="uni3Biblio" />
                              <asp:BoundField DataField="uni3Fecha1" HeaderText="uni3Fecha1" SortExpression="uni3Fecha1" />
                              <asp:BoundField DataField="EstrategiasDidacticas" HeaderText="EstrategiasDidacticas" SortExpression="EstrategiasDidacticas" />
                              <asp:BoundField DataField="RecursosMateriales" HeaderText="RecursosMateriales" SortExpression="RecursosMateriales" />
                              <asp:BoundField DataField="uni1Result" HeaderText="uni1Result" SortExpression="uni1Result" />
                              <asp:BoundField DataField="uni1Eval" HeaderText="uni1Eval" SortExpression="uni1Eval" />
                              <asp:BoundField DataField="uni1Peso1" HeaderText="uni1Peso1" SortExpression="uni1Peso1" />
                              <asp:BoundField DataField="uni1UniAprendizaje" HeaderText="uni1UniAprendizaje" SortExpression="uni1UniAprendizaje" />
                              <asp:BoundField DataField="uni1UniActi" HeaderText="uni1UniActi" SortExpression="uni1UniActi" />
                              <asp:BoundField DataField="uni1PesoIF" HeaderText="uni1PesoIF" SortExpression="uni1PesoIF" />
                              <asp:BoundField DataField="uni2Result" HeaderText="uni2Result" SortExpression="uni2Result" />
                              <asp:BoundField DataField="uni2Eval" HeaderText="uni2Eval" SortExpression="uni2Eval" />
                              <asp:BoundField DataField="uni2Peso1" HeaderText="uni2Peso1" SortExpression="uni2Peso1" />
                              <asp:BoundField DataField="uni2UniAprendizaje" HeaderText="uni2UniAprendizaje" SortExpression="uni2UniAprendizaje" />
                              <asp:BoundField DataField="uni2Eval2" HeaderText="uni2Eval2" SortExpression="uni2Eval2" />
                              <asp:BoundField DataField="uni2PesoIF" HeaderText="uni2PesoIF" SortExpression="uni2PesoIF" />
                              <asp:BoundField DataField="uni2UniAprendizaje2" HeaderText="uni2UniAprendizaje2" SortExpression="uni2UniAprendizaje2" />
                              <asp:BoundField DataField="uni2UniActi2" HeaderText="uni2UniActi2" SortExpression="uni2UniActi2" />
                              <asp:BoundField DataField="uni2PesoRS" HeaderText="uni2PesoRS" SortExpression="uni2PesoRS" />
                              <asp:BoundField DataField="uni3Result" HeaderText="uni3Result" SortExpression="uni3Result" />
                              <asp:BoundField DataField="uni3Eval" HeaderText="uni3Eval" SortExpression="uni3Eval" />
                              <asp:BoundField DataField="uni3Peso1" HeaderText="uni3Peso1" SortExpression="uni3Peso1" />
                              <asp:BoundField DataField="uni3UniAprendizaje" HeaderText="uni3UniAprendizaje" SortExpression="uni3UniAprendizaje" />
                              <asp:BoundField DataField="uni3Eval2" HeaderText="uni3Eval2" SortExpression="uni3Eval2" />
                              <asp:BoundField DataField="uni3PesoIF" HeaderText="uni3PesoIF" SortExpression="uni3PesoIF" />
                              <asp:BoundField DataField="uni3UniAprendizaje2" HeaderText="uni3UniAprendizaje2" SortExpression="uni3UniAprendizaje2" />
                              <asp:BoundField DataField="uni3UniActi2" HeaderText="uni3UniActi2" SortExpression="uni3UniActi2" />
                              <asp:BoundField DataField="uni3PesoRS" HeaderText="uni3PesoRS" SortExpression="uni3PesoRS" />
                              <asp:BoundField DataField="ReferenciaBibliografica" HeaderText="ReferenciaBibliografica" SortExpression="ReferenciaBibliografica" />
                              <asp:BoundField DataField="fechaRegistro" HeaderText="fechaRegistro" SortExpression="fechaRegistro" />
                              <asp:CheckBoxField DataField="Aprovado" HeaderText="Aprobado" SortExpression="Aprovado" />
                              <asp:BoundField DataField="idObservacion" HeaderText="idObservacion" SortExpression="idObservacion" />
                          </Columns>
                      </asp:GridView>
                      <asp:SqlDataSource ID="listaCorrecciones" runat="server" ConnectionString="<%$ ConnectionStrings:websilabo_dbConnectionString %>" SelectCommand="SELECT * FROM [tobservaciones]"></asp:SqlDataSource>
                      <asp:SqlDataSource ID="listaSilabo" runat="server" ConnectionString="<%$ ConnectionStrings:websilabo_dbConnectionString %>" SelectCommand="SELECT * FROM [tsilabo]"></asp:SqlDataSource>
                      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="idObservaciones" DataSourceID="listaCorrecciones">
                          <Columns>
                              <asp:BoundField DataField="idObservaciones" HeaderText="idObservaciones" InsertVisible="False" ReadOnly="True" SortExpression="idObservaciones" />
                              <asp:BoundField DataField="Facultad" HeaderText="Facultad" SortExpression="Facultad" />
                              <asp:BoundField DataField="Asignatura" HeaderText="Asignatura" SortExpression="Asignatura" />
                              <asp:BoundField DataField="EscuelaProfesional" HeaderText="EscuelaProfesional" SortExpression="EscuelaProfesional" />
                              <asp:BoundField DataField="PlanEstudios" HeaderText="PlanEstudios" SortExpression="PlanEstudios" />
                              <asp:BoundField DataField="SemestreAcademico" HeaderText="SemestreAcademico" SortExpression="SemestreAcademico" />
                              <asp:BoundField DataField="CiclodeEstudios" HeaderText="CiclodeEstudios" SortExpression="CiclodeEstudios" />
                              <asp:BoundField DataField="AreaCurricular" HeaderText="AreaCurricular" SortExpression="AreaCurricular" />
                              <asp:BoundField DataField="CodigodeAsignatura" HeaderText="CodigodeAsignatura" SortExpression="CodigodeAsignatura" />
                              <asp:BoundField DataField="NumeroCreditos" HeaderText="NumeroCreditos" SortExpression="NumeroCreditos" />
                              <asp:BoundField DataField="PreRequisitos" HeaderText="PreRequisitos" SortExpression="PreRequisitos" />
                              <asp:BoundField DataField="NumeroHorasPractica" HeaderText="NumeroHorasPractica" SortExpression="NumeroHorasPractica" />
                              <asp:BoundField DataField="Modalidad" HeaderText="Modalidad" SortExpression="Modalidad" />
                              <asp:BoundField DataField="DuracionSemanal" HeaderText="DuracionSemanal" SortExpression="DuracionSemanal" />
                              <asp:BoundField DataField="NumAula" HeaderText="NumAula" SortExpression="NumAula" />
                              <asp:BoundField DataField="Horario" HeaderText="Horario" SortExpression="Horario" />
                              <asp:BoundField DataField="Grupo" HeaderText="Grupo" SortExpression="Grupo" />
                              <asp:BoundField DataField="DuracionSemestre" HeaderText="DuracionSemestre" SortExpression="DuracionSemestre" />
                              <asp:BoundField DataField="DocenteResponsable" HeaderText="DocenteResponsable" SortExpression="DocenteResponsable" />
                              <asp:BoundField DataField="ObjetivosEducacionales" HeaderText="ObjetivosEducacionales" SortExpression="ObjetivosEducacionales" />
                              <asp:BoundField DataField="ResultadosEstudiante" HeaderText="ResultadosEstudiante" SortExpression="ResultadosEstudiante" />
                              <asp:BoundField DataField="IndicadoresDesempeno" HeaderText="IndicadoresDesempeno" SortExpression="IndicadoresDesempeno" />
                              <asp:BoundField DataField="Sumilla" HeaderText="Sumilla" SortExpression="Sumilla" />
                              <asp:BoundField DataField="ValoresProfesionales" HeaderText="ValoresProfesionales" SortExpression="ValoresProfesionales" />
                              <asp:BoundField DataField="pCompetencias1" HeaderText="pCompetencias1" SortExpression="pCompetencias1" />
                              <asp:BoundField DataField="pCompetencias2" HeaderText="pCompetencias2" SortExpression="pCompetencias2" />
                              <asp:BoundField DataField="pCompetencias3" HeaderText="pCompetencias3" SortExpression="pCompetencias3" />
                              <asp:BoundField DataField="pDesempeno1" HeaderText="pDesempeno1" SortExpression="pDesempeno1" />
                              <asp:BoundField DataField="pDesempeno2" HeaderText="pDesempeno2" SortExpression="pDesempeno2" />
                              <asp:BoundField DataField="pDesempeno3" HeaderText="pDesempeno3" SortExpression="pDesempeno3" />
                              <asp:BoundField DataField="pDesempeno4" HeaderText="pDesempeno4" SortExpression="pDesempeno4" />
                              <asp:BoundField DataField="pResultado1" HeaderText="pResultado1" SortExpression="pResultado1" />
                              <asp:BoundField DataField="pResultado2" HeaderText="pResultado2" SortExpression="pResultado2" />
                              <asp:BoundField DataField="pResultado3" HeaderText="pResultado3" SortExpression="pResultado3" />
                              <asp:BoundField DataField="pResultado4" HeaderText="pResultado4" SortExpression="pResultado4" />
                              <asp:BoundField DataField="uni1Conte11" HeaderText="uni1Conte11" SortExpression="uni1Conte11" />
                              <asp:BoundField DataField="uni1Conte111" HeaderText="uni1Conte111" SortExpression="uni1Conte111" />
                              <asp:BoundField DataField="uni1Acti1" HeaderText="uni1Acti1" SortExpression="uni1Acti1" />
                              <asp:BoundField DataField="uni1Duracion1" HeaderText="uni1Duracion1" SortExpression="uni1Duracion1" />
                              <asp:BoundField DataField="uni1Conte12" HeaderText="uni1Conte12" SortExpression="uni1Conte12" />
                              <asp:BoundField DataField="uni1Conte112" HeaderText="uni1Conte112" SortExpression="uni1Conte112" />
                              <asp:BoundField DataField="uni1Acti2" HeaderText="uni1Acti2" SortExpression="uni1Acti2" />
                              <asp:BoundField DataField="uni1Duracion2" HeaderText="uni1Duracion2" SortExpression="uni1Duracion2" />
                              <asp:BoundField DataField="uni1Conte13" HeaderText="uni1Conte13" SortExpression="uni1Conte13" />
                              <asp:BoundField DataField="uni1Conte131" HeaderText="uni1Conte131" SortExpression="uni1Conte131" />
                              <asp:BoundField DataField="uni1Conte132" HeaderText="uni1Conte132" SortExpression="uni1Conte132" />
                              <asp:BoundField DataField="uni1Conte133" HeaderText="uni1Conte133" SortExpression="uni1Conte133" />
                              <asp:BoundField DataField="uni1Acti31" HeaderText="uni1Acti31" SortExpression="uni1Acti31" />
                              <asp:BoundField DataField="uni1Duracion3" HeaderText="uni1Duracion3" SortExpression="uni1Duracion3" />
                              <asp:BoundField DataField="uni1Conte115" HeaderText="uni1Conte115" SortExpression="uni1Conte115" />
                              <asp:BoundField DataField="uni1Requi1" HeaderText="uni1Requi1" SortExpression="uni1Requi1" />
                              <asp:BoundField DataField="uni1Acti4" HeaderText="uni1Acti4" SortExpression="uni1Acti4" />
                              <asp:BoundField DataField="uni1Duracion4" HeaderText="uni1Duracion4" SortExpression="uni1Duracion4" />
                              <asp:BoundField DataField="uni1Biblio" HeaderText="uni1Biblio" SortExpression="uni1Biblio" />
                              <asp:BoundField DataField="uni1Fecha1" HeaderText="uni1Fecha1" SortExpression="uni1Fecha1" />
                              <asp:BoundField DataField="uni2Conte11" HeaderText="uni2Conte11" SortExpression="uni2Conte11" />
                              <asp:BoundField DataField="uni2Conte111" HeaderText="uni2Conte111" SortExpression="uni2Conte111" />
                              <asp:BoundField DataField="uni2Conte112" HeaderText="uni2Conte112" SortExpression="uni2Conte112" />
                              <asp:BoundField DataField="uni2Conte113" HeaderText="uni2Conte113" SortExpression="uni2Conte113" />
                              <asp:BoundField DataField="uni2Conte114" HeaderText="uni2Conte114" SortExpression="uni2Conte114" />
                              <asp:BoundField DataField="uni2Acti1" HeaderText="uni2Acti1" SortExpression="uni2Acti1" />
                              <asp:BoundField DataField="uni2Duracion1" HeaderText="uni2Duracion1" SortExpression="uni2Duracion1" />
                              <asp:BoundField DataField="uni2Conte22" HeaderText="uni2Conte22" SortExpression="uni2Conte22" />
                              <asp:BoundField DataField="uni2Conte221" HeaderText="uni2Conte221" SortExpression="uni2Conte221" />
                              <asp:BoundField DataField="uni2Conte222" HeaderText="uni2Conte222" SortExpression="uni2Conte222" />
                              <asp:BoundField DataField="uni2Conte223" HeaderText="uni2Conte223" SortExpression="uni2Conte223" />
                              <asp:BoundField DataField="uni2Acti2" HeaderText="uni2Acti2" SortExpression="uni2Acti2" />
                              <asp:BoundField DataField="uni2Duracion2" HeaderText="uni2Duracion2" SortExpression="uni2Duracion2" />
                              <asp:BoundField DataField="uni2Conte23" HeaderText="uni2Conte23" SortExpression="uni2Conte23" />
                              <asp:BoundField DataField="uni2Conte231" HeaderText="uni2Conte231" SortExpression="uni2Conte231" />
                              <asp:BoundField DataField="uni2Conte232" HeaderText="uni2Conte232" SortExpression="uni2Conte232" />
                              <asp:BoundField DataField="uni2Conte233" HeaderText="uni2Conte233" SortExpression="uni2Conte233" />
                              <asp:BoundField DataField="uni2Acti31" HeaderText="uni2Acti31" SortExpression="uni2Acti31" />
                              <asp:BoundField DataField="uni2Duracion3" HeaderText="uni2Duracion3" SortExpression="uni2Duracion3" />
                              <asp:BoundField DataField="uni2Conte24" HeaderText="uni2Conte24" SortExpression="uni2Conte24" />
                              <asp:BoundField DataField="uni2Requi1" HeaderText="uni2Requi1" SortExpression="uni2Requi1" />
                              <asp:BoundField DataField="uni2Acti4" HeaderText="uni2Acti4" SortExpression="uni2Acti4" />
                              <asp:BoundField DataField="uni2Duracion4" HeaderText="uni2Duracion4" SortExpression="uni2Duracion4" />
                              <asp:BoundField DataField="uni2Biblio" HeaderText="uni2Biblio" SortExpression="uni2Biblio" />
                              <asp:BoundField DataField="uni2Fecha1" HeaderText="uni2Fecha1" SortExpression="uni2Fecha1" />
                              <asp:BoundField DataField="uni3Conte31" HeaderText="uni3Conte31" SortExpression="uni3Conte31" />
                              <asp:BoundField DataField="uni3Conte311" HeaderText="uni3Conte311" SortExpression="uni3Conte311" />
                              <asp:BoundField DataField="uni3Conte312" HeaderText="uni3Conte312" SortExpression="uni3Conte312" />
                              <asp:BoundField DataField="uni3Conte313" HeaderText="uni3Conte313" SortExpression="uni3Conte313" />
                              <asp:BoundField DataField="uni3Acti1" HeaderText="uni3Acti1" SortExpression="uni3Acti1" />
                              <asp:BoundField DataField="uni3Duracion1" HeaderText="uni3Duracion1" SortExpression="uni3Duracion1" />
                              <asp:BoundField DataField="uni3Conte32" HeaderText="uni3Conte32" SortExpression="uni3Conte32" />
                              <asp:BoundField DataField="uni3Conte321" HeaderText="uni3Conte321" SortExpression="uni3Conte321" />
                              <asp:BoundField DataField="uni3Conte322" HeaderText="uni3Conte322" SortExpression="uni3Conte322" />
                              <asp:BoundField DataField="uni3Conte323" HeaderText="uni3Conte323" SortExpression="uni3Conte323" />
                              <asp:BoundField DataField="uni3Acti2" HeaderText="uni3Acti2" SortExpression="uni3Acti2" />
                              <asp:BoundField DataField="uni3Duracion2" HeaderText="uni3Duracion2" SortExpression="uni3Duracion2" />
                              <asp:BoundField DataField="uni3Conte33" HeaderText="uni3Conte33" SortExpression="uni3Conte33" />
                              <asp:BoundField DataField="uni3Conte331" HeaderText="uni3Conte331" SortExpression="uni3Conte331" />
                              <asp:BoundField DataField="uni3Conte332" HeaderText="uni3Conte332" SortExpression="uni3Conte332" />
                              <asp:BoundField DataField="uni3Conte333" HeaderText="uni3Conte333" SortExpression="uni3Conte333" />
                              <asp:BoundField DataField="uni3Conte334" HeaderText="uni3Conte334" SortExpression="uni3Conte334" />
                              <asp:BoundField DataField="uni3Acti31" HeaderText="uni3Acti31" SortExpression="uni3Acti31" />
                              <asp:BoundField DataField="uni32Duracion3" HeaderText="uni32Duracion3" SortExpression="uni32Duracion3" />
                              <asp:BoundField DataField="uni3Conte34" HeaderText="uni3Conte34" SortExpression="uni3Conte34" />
                              <asp:BoundField DataField="uni3Requi1" HeaderText="uni3Requi1" SortExpression="uni3Requi1" />
                              <asp:BoundField DataField="uni3Acti4" HeaderText="uni3Acti4" SortExpression="uni3Acti4" />
                              <asp:BoundField DataField="uni3Duracion4" HeaderText="uni3Duracion4" SortExpression="uni3Duracion4" />
                              <asp:BoundField DataField="uni3Biblio" HeaderText="uni3Biblio" SortExpression="uni3Biblio" />
                              <asp:BoundField DataField="uni3Fecha1" HeaderText="uni3Fecha1" SortExpression="uni3Fecha1" />
                              <asp:BoundField DataField="EstrategiasDidacticas" HeaderText="EstrategiasDidacticas" SortExpression="EstrategiasDidacticas" />
                              <asp:BoundField DataField="RecursosMateriales" HeaderText="RecursosMateriales" SortExpression="RecursosMateriales" />
                              <asp:BoundField DataField="uni1Result" HeaderText="uni1Result" SortExpression="uni1Result" />
                              <asp:BoundField DataField="uni1Eval" HeaderText="uni1Eval" SortExpression="uni1Eval" />
                              <asp:BoundField DataField="uni1Peso1" HeaderText="uni1Peso1" SortExpression="uni1Peso1" />
                              <asp:BoundField DataField="uni1UniAprendizaje" HeaderText="uni1UniAprendizaje" SortExpression="uni1UniAprendizaje" />
                              <asp:BoundField DataField="uni1UniActi" HeaderText="uni1UniActi" SortExpression="uni1UniActi" />
                              <asp:BoundField DataField="uni1PesoIF" HeaderText="uni1PesoIF" SortExpression="uni1PesoIF" />
                              <asp:BoundField DataField="uni2Result" HeaderText="uni2Result" SortExpression="uni2Result" />
                              <asp:BoundField DataField="uni2Eval" HeaderText="uni2Eval" SortExpression="uni2Eval" />
                              <asp:BoundField DataField="uni2Peso1" HeaderText="uni2Peso1" SortExpression="uni2Peso1" />
                              <asp:BoundField DataField="uni2UniAprendizaje" HeaderText="uni2UniAprendizaje" SortExpression="uni2UniAprendizaje" />
                              <asp:BoundField DataField="uni2Eval2" HeaderText="uni2Eval2" SortExpression="uni2Eval2" />
                              <asp:BoundField DataField="uni2PesoIF" HeaderText="uni2PesoIF" SortExpression="uni2PesoIF" />
                              <asp:BoundField DataField="uni2UniAprendizaje2" HeaderText="uni2UniAprendizaje2" SortExpression="uni2UniAprendizaje2" />
                              <asp:BoundField DataField="uni2UniActi2" HeaderText="uni2UniActi2" SortExpression="uni2UniActi2" />
                              <asp:BoundField DataField="uni2PesoRS" HeaderText="uni2PesoRS" SortExpression="uni2PesoRS" />
                              <asp:BoundField DataField="uni3Result" HeaderText="uni3Result" SortExpression="uni3Result" />
                              <asp:BoundField DataField="uni3Eval" HeaderText="uni3Eval" SortExpression="uni3Eval" />
                              <asp:BoundField DataField="uni3Peso1" HeaderText="uni3Peso1" SortExpression="uni3Peso1" />
                              <asp:BoundField DataField="uni3UniAprendizaje" HeaderText="uni3UniAprendizaje" SortExpression="uni3UniAprendizaje" />
                              <asp:BoundField DataField="uni3Eval2" HeaderText="uni3Eval2" SortExpression="uni3Eval2" />
                              <asp:BoundField DataField="uni3PesoIF" HeaderText="uni3PesoIF" SortExpression="uni3PesoIF" />
                              <asp:BoundField DataField="uni3UniAprendizaje2" HeaderText="uni3UniAprendizaje2" SortExpression="uni3UniAprendizaje2" />
                              <asp:BoundField DataField="uni3UniActi2" HeaderText="uni3UniActi2" SortExpression="uni3UniActi2" />
                              <asp:BoundField DataField="uni3PesoRS" HeaderText="uni3PesoRS" SortExpression="uni3PesoRS" />
                              <asp:BoundField DataField="ReferenciaBibliografica" HeaderText="ReferenciaBibliografica" SortExpression="ReferenciaBibliografica" />
                              <asp:BoundField DataField="Aprovado" HeaderText="Aprobado" SortExpression="Aprovado" />
                          </Columns>
                      </asp:GridView>
                      <asp:SqlDataSource runat="server" ID="datosSilaboEstado" ConnectionString='<%$ ConnectionStrings:websilabo_dbConnectionString %>' SelectCommand="SELECT [idSilabo], [fechaRegistro], [CodigodeAsignatura], [DocenteResponsable], [Aprovado] FROM [tsilabo]"></asp:SqlDataSource>
                  </div>
                </div>
              </div>
                <!-- /aqui terminar colapse content -->
              


                  </div>
                </div>
              </div>
                 <!-- /aqui terminar colapse content -->
                <!-- aqui empezamos  -->
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
