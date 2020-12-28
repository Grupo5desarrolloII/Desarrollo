<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verestadosilabo.aspx.cs" Inherits="websilabo.verestadosilabo" %>


<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
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
    <title>Ver Estado Silabo | UAC</title>

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
                      <li><a href="buscarsilabo.aspx">Buscar Silabo</a></li>
                      <li><a href="#">Ver Estado Silabo</a></li>
                        <li><a href="asignaturadocente.aspx">Crear Asignatura</a></li>
                        <li><a href="buscarporasignatura.aspx">Buscar por Asignatura</a></li>
                      <li><a href="buscarpordocente.aspx">Buscar por Docente</a></li>
                      <li><a href="buscarporsemestreacademico.aspx">Buscar por Semestre</a></li>
                      <li><a href="buscarpornumerocreditos.aspx">Buscar por Creditos</a></li>
                    </ul>
                  <li><a><i class="fa fa-desktop"></i> Administración <span class="fa fa-chevron-down"></span></a>            
                  </li>
                  <li><a><i class="fa fa-windows"></i> Configuración <span class="fa fa-chevron-down"></span></a>                    
                  </li>
                  <li><a><i class="fa fa-sitemap"></i> Gestionar Usuario <span class="fa fa-chevron-down"></span></a>
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
                <h3>Estado del Silabo</h3>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
                <!-- aqui empezamos  -->              
                <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Ver Estado <small>del silabo</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                      <!-- aqui empezamos  -->
                      <!-- inicio  -->
                                      <asp:HiddenField ID="HiddenField1" runat="server" />
                      <div class="form-group row">
                        <div class="col-md-4 col-sm-4 ">
                            <asp:GridView ID="gvUsuarios" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" Width="745px">
                                <Columns>
                                    <asp:BoundField DataField="idSilabo" HeaderText="idSilabo" InsertVisible="False" ReadOnly="True" SortExpression="idSilabo" />
                                    <asp:BoundField DataField="DocenteResponsable" HeaderText="DocenteResponsable" InsertVisible="False" ReadOnly="True"  />
                                    <asp:BoundField DataField="fechaRegistro" HeaderText="fechaRegistro" SortExpression="fechaRegistro" DataFormatString="{0:dd/MM/yyyy}" />
                                    <asp:CheckBoxField />
                                    <asp:BoundField DataField="Aprovado" HeaderText="Aprobado" InsertVisible="False" ReadOnly="True"  />
                                    <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkVer" runat="server" CommandArgument='<%# Eval("idSilabo") %>' OnClick="lnk_OnClick">Seleccionar</asp:LinkButton>
                                            </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkVer1" runat="server" CommandArgument='<%# Eval("idSilabo") %>' OnClick="lnk_OnClick1">Descargar</asp:LinkButton>
                                            </ItemTemplate>
                                    </asp:TemplateField>

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
                        </div>                    
                      </div>      
                      <asp:SqlDataSource runat="server" ID="datosSilaboEstado" ConnectionString='<%$ ConnectionStrings:websilabo_dbConnectionString %>' SelectCommand="SELECT [idSilabo], [fechaRegistro], [Aprovado] FROM [tsilabo]"></asp:SqlDataSource>
                         <p>
                          <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                          <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="1310px" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226">
                               <LocalReport ReportPath="silabo.rdlc">
                                   <DataSources>
                                       <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                                   </DataSources>
                               </LocalReport>
                          </rsweb:ReportViewer>
                      <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="websilabo.websilabo_dbDataSetTableAdapters.tsilaboTableAdapter"></asp:ObjectDataSource>
                      </p>
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
