using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace websilabo
{
    public partial class crearsilabo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=tcp:websilabodbserver.database.windows.net,1433;Initial Catalog=websilabo_db;Persist Security Info=False;User ID=lucho;Password=Pastore123-;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //cboFacultad.DataBind();
                cboFacultad.Items.Insert(0, new ListItem("  --SELECCIONE FACULTAD--  ", "0"));
                //cboObjetivoEduacional.Items.Insert(-1, new ListItem("  --SELECCIONE FACULTAD--  ", "-1"));
                txtFechaActual.Text = DateTime.Today.ToString("yyyy-MM-dd");
                listarCombo();
                listarAsignaturas();
                cargar();
            }
        }
        public void limpiar()
        {
            HiddenField1.Value = "";         
        }
        void listarCombo()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from tcarrerasprofesionales", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);  // llenar datos
                cboEscuelaProfesional.DataTextField = ds.Tables[0].Columns["EscuelaProfesional"].ToString(); // text field name of table dispalyed in dropdown
                cboEscuelaProfesional.DataValueField = ds.Tables[0].Columns["idCarrerraProfesional"].ToString();// id de la tabla
                cboEscuelaProfesional.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                cboEscuelaProfesional.DataBind();  //binding dropdownlist
            }
            catch (Exception e)
            {
                lblMensaje.Text = "" + e;
            }
            finally
            {
                con.Close();
            }    
        }

        void consultarOb1()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from tobjetivoeducacional where NombreObjetivo = '"+cboObjetivoEduacional.SelectedItem.Text+"'", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                //DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                da.Fill(dt);  // llenar datos
                txtCompetencias.Text = dt.Rows[0]["DetalleObjetivo"].ToString(); // text field name of table dispalyed in dropdown
                //cboEscuelaProfesional.DataValueField = ds.Tables[0].Columns["idObjetivoeducacional"].ToString();// id de la tabla
                //cboEscuelaProfesional.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                //cboEscuelaProfesional.DataBind();  //binding dropdownlist
            }
            catch (Exception e)
            {
                lblMensaje.Text = "" + e;
            }
            finally
            {
                con.Close();
            }
        }
        void consultarOb2()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from tobjetivoeducacional where NombreObjetivo = '" + cboObjetivoEducacional2.SelectedItem.Text + "'", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                //DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                da.Fill(dt);  // llenar datos
                txtCompetencias2.Text = dt.Rows[0]["DetalleObjetivo"].ToString(); // text field name of table dispalyed in dropdown
                //cboEscuelaProfesional.DataValueField = ds.Tables[0].Columns["idObjetivoeducacional"].ToString();// id de la tabla
                //cboEscuelaProfesional.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                //cboEscuelaProfesional.DataBind();  //binding dropdownlist
            }
            catch (Exception e)
            {
                lblMensaje.Text = "" + e;
            }
            finally
            {
                con.Close();
            }
        }
        void consultarOb3()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from tobjetivoeducacional where NombreObjetivo = '" + cboObjetivoEducacional3.SelectedItem.Text + "'", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                //DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                da.Fill(dt);  // llenar datos
                txtCompetencias3.Text = dt.Rows[0]["DetalleObjetivo"].ToString(); // text field name of table dispalyed in dropdown
                //cboEscuelaProfesional.DataValueField = ds.Tables[0].Columns["idObjetivoeducacional"].ToString();// id de la tabla
                //cboEscuelaProfesional.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                //cboEscuelaProfesional.DataBind();  //binding dropdownlist
            }
            catch (Exception e)
            {
                lblMensaje.Text = "" + e;
            }
            finally
            {
                con.Close();
            }
        }
        void consultarRes1()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from trestultadoestudiante where SiglasResultado = '" + cboResultadoEstudent.SelectedItem.Text + "'", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                //DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                da.Fill(dt);  // llenar datos
                txtResultado.Text = dt.Rows[0]["DetalleResultado"].ToString(); // text field name of table dispalyed in dropdown
                //cboEscuelaProfesional.DataValueField = ds.Tables[0].Columns["idObjetivoeducacional"].ToString();// id de la tabla
                //cboEscuelaProfesional.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                //cboEscuelaProfesional.DataBind();  //binding dropdownlist
            }
            catch (Exception e)
            {
                lblMensaje.Text = "" + e;
            }
            finally
            {
                con.Close();
            }
        }
        void consultarRes2()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from trestultadoestudiante where SiglasResultado = '" + cboResultadoEstudent2.SelectedItem.Text + "'", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                //DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                da.Fill(dt);  // llenar datos
                txtResultado2.Text = dt.Rows[0]["DetalleResultado"].ToString(); // text field name of table dispalyed in dropdown
                //cboEscuelaProfesional.DataValueField = ds.Tables[0].Columns["idObjetivoeducacional"].ToString();// id de la tabla
                //cboEscuelaProfesional.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                //cboEscuelaProfesional.DataBind();  //binding dropdownlist
            }
            catch (Exception e)
            {
                lblMensaje.Text = "" + e;
            }
            finally
            {
                con.Close();
            }
        }
        void consultarRes3()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from trestultadoestudiante where SiglasResultado = '" + cboResultadoEstudent3.SelectedItem.Text + "'", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                //DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                da.Fill(dt);  // llenar datos
                txtResultado3.Text = dt.Rows[0]["DetalleResultado"].ToString(); // text field name of table dispalyed in dropdown
                //cboEscuelaProfesional.DataValueField = ds.Tables[0].Columns["idObjetivoeducacional"].ToString();// id de la tabla
                //cboEscuelaProfesional.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                //cboEscuelaProfesional.DataBind();  //binding dropdownlist
            }
            catch (Exception e)
            {
                lblMensaje.Text = "" + e;
            }
            finally
            {
                con.Close();
            }
        }
        void consultarRes4()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from trestultadoestudiante where SiglasResultado = '" + cboResultadoEstudent4.SelectedItem.Text + "'", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                //DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                da.Fill(dt);  // llenar datos
                txtResultado4.Text = dt.Rows[0]["DetalleResultado"].ToString(); // text field name of table dispalyed in dropdown
                //cboEscuelaProfesional.DataValueField = ds.Tables[0].Columns["idObjetivoeducacional"].ToString();// id de la tabla
                //cboEscuelaProfesional.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                //cboEscuelaProfesional.DataBind();  //binding dropdownlist
            }
            catch (Exception e)
            {
                lblMensaje.Text = "" + e;
            }
            finally
            {
                con.Close();
            }
        }
        void consultarDes1()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from tindicadoresdesempeno where SiglaIndicador = '" + cboIndiDesempeno.SelectedItem.Text + "'", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                //DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                da.Fill(dt);  // llenar datos
                txtDesempenio.Text = dt.Rows[0]["DetalleIndicador"].ToString(); // text field name of table dispalyed in dropdown
                //cboEscuelaProfesional.DataValueField = ds.Tables[0].Columns["idObjetivoeducacional"].ToString();// id de la tabla
                //cboEscuelaProfesional.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                //cboEscuelaProfesional.DataBind();  //binding dropdownlist
            }
            catch (Exception e)
            {
                lblMensaje.Text = "" + e;
            }
            finally
            {
                con.Close();
            }
        }
        void consultarDes2()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from tindicadoresdesempeno where SiglaIndicador = '" + cboIndiDesempeno2.SelectedItem.Text + "'", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                //DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                da.Fill(dt);  // llenar datos
                txtDesempenio2.Text = dt.Rows[0]["DetalleIndicador"].ToString(); // text field name of table dispalyed in dropdown
                //cboEscuelaProfesional.DataValueField = ds.Tables[0].Columns["idObjetivoeducacional"].ToString();// id de la tabla
                //cboEscuelaProfesional.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                //cboEscuelaProfesional.DataBind();  //binding dropdownlist
            }
            catch (Exception e)
            {
                lblMensaje.Text = "" + e;
            }
            finally
            {
                con.Close();
            }
        }
        void consultarDes3()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from tindicadoresdesempeno where SiglaIndicador = '" + cboIndiDesempeno3.SelectedItem.Text + "'", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                //DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                da.Fill(dt);  // llenar datos
                txtDesempenio3.Text = dt.Rows[0]["DetalleIndicador"].ToString(); // text field name of table dispalyed in dropdown
                //cboEscuelaProfesional.DataValueField = ds.Tables[0].Columns["idObjetivoeducacional"].ToString();// id de la tabla
                //cboEscuelaProfesional.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                //cboEscuelaProfesional.DataBind();  //binding dropdownlist
            }
            catch (Exception e)
            {
                lblMensaje.Text = "" + e;
            }
            finally
            {
                con.Close();
            }
        }
        void consultarDes4()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from tindicadoresdesempeno where SiglaIndicador = '" + cboIndiDesempeno4.SelectedItem.Text + "'", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                //DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                da.Fill(dt);  // llenar datos
                txtDesempenio4.Text = dt.Rows[0]["DetalleIndicador"].ToString(); // text field name of table dispalyed in dropdown
                //cboEscuelaProfesional.DataValueField = ds.Tables[0].Columns["idObjetivoeducacional"].ToString();// id de la tabla
                //cboEscuelaProfesional.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                //cboEscuelaProfesional.DataBind();  //binding dropdownlist
            }
            catch (Exception e)
            {
                lblMensaje.Text = "" + e;
            }
            finally
            {
                con.Close();
            }
        }
        void listarCarreraAdmins()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from tcarrerasprofesionales where Facultad = 'Ciencias Económicas Administrativas Y Contables'", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);  // llenar datos
                cboEscuelaProfesional.DataTextField = ds.Tables[0].Columns["EscuelaProfesional"].ToString(); // text field name of table dispalyed in dropdown
                cboEscuelaProfesional.DataValueField = ds.Tables[0].Columns["idCarrerraProfesional"].ToString();// id de la tabla
                cboEscuelaProfesional.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                cboEscuelaProfesional.DataBind();  //binding dropdownlist
            }
            catch (Exception e)
            {
                lblMensaje.Text = "" + e;
            }
            finally
            {
                con.Close();
            }

        }

        void listarCarreraIngenierias()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from tcarrerasprofesionales where Facultad = 'Ingeniería y Arquitectura'", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);  // llenar datos
                cboEscuelaProfesional.DataTextField = ds.Tables[0].Columns["EscuelaProfesional"].ToString(); // text field name of table dispalyed in dropdown
                cboEscuelaProfesional.DataValueField = ds.Tables[0].Columns["idCarrerraProfesional"].ToString();// id de la tabla
                cboEscuelaProfesional.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                cboEscuelaProfesional.DataBind();  //binding dropdownlist
            }
            catch (Exception e)
            {
                lblMensaje.Text = "" + e;
            }
            finally
            {
                con.Close();
            }

        }
        void listarAsignaturas()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from tasignatura", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);  // llenar datos
                cboAsigntura.DataTextField = ds.Tables[0].Columns["NombreAsignatura"].ToString(); // text field name of table dispalyed in dropdown
                cboAsigntura.DataValueField = ds.Tables[0].Columns["CodAsignatura"].ToString();// id de la tabla
                cboAsigntura.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                cboAsigntura.DataBind();  //binding dropdownlist
            }
            catch (Exception e)
            {
                lblMensaje.Text = "" + e;
            }
            finally
            {
                con.Close();
            }

        }

        void cargar()
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select TipoUsuario, Nombres, Apellidos, Correo from tusuarioactivo", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                lblUser.Text = dt.Rows[0][1].ToString() + " " + dt.Rows[0][2].ToString();
            }
            catch (Exception e)
            {
                lblUser.Text = "" + e;
            }
            finally
            {
                con.Close();
            }
        }

        void InsertarDatos()
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlCommand cmd = new SqlCommand("usp_insertarsilabo1", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idSilabo", (HiddenField1.Value == "" ? 0 : Convert.ToInt32(HiddenField1.Value)));
                cmd.Parameters.AddWithValue("@Facultad", cboFacultad.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@Asignatura", cboAsigntura.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@EscuelaProfesional", cboEscuelaProfesional.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@PlanEstudios", cboPlanEstudios.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@SemestreAcademico", cboSemestreAcademico.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@CiclodeEstudios", txtCicloEstudios.Text.Trim());
                cmd.Parameters.AddWithValue("@AreaCurricular", cboAreaCurricular.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@CodigodeAsignatura", txtAsignatura.Text.Trim());
                cmd.Parameters.AddWithValue("@NumeroCreditos", txtNumeroCreditos.Text.Trim());
                cmd.Parameters.AddWithValue("@PreRequisitos", cboPreRequsitos.Text.Trim());
                cmd.Parameters.AddWithValue("@NumeroHorasPractica", txtHorasPractica.Text.Trim());
                cmd.Parameters.AddWithValue("@Modalidad", cboModalidad.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@DuracionSemanal", txtDuracionSemanal.Text.Trim());
                cmd.Parameters.AddWithValue("@NumAula", cboAula.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@Horario", txtHorario.Text.Trim());
                cmd.Parameters.AddWithValue("@Grupo", txtGrupo.Text.Trim());
                cmd.Parameters.AddWithValue("@DuracionSemestre", "del " + dtpFechaInicio.Text + " al " + dtpFechaFin.Text);
                cmd.Parameters.AddWithValue("@DocenteResponsable", cboDocenteResponsable.Text.Trim());
                cmd.Parameters.AddWithValue("@ObjetivosEducacionales", cboObjetivoEduacional.Text.Trim() + ", " + cboObjetivoEducacional2.Text.Trim() + ", " + cboObjetivoEducacional3.Text.Trim());
                cmd.Parameters.AddWithValue("@ResultadosEstudiante", cboResultadoEstudent.Text.Trim() + ", " + cboResultadoEstudent2.Text.Trim() + ", " + cboResultadoEstudent3.Text.Trim() + ", " + cboResultadoEstudent4.Text.Trim());
                cmd.Parameters.AddWithValue("@IndicadoresDesempeno", cboIndiDesempeno.Text.Trim() + ", " + cboIndiDesempeno2.Text.Trim() + ", " + cboIndiDesempeno3.Text.Trim() + ", " + cboIndiDesempeno4.Text.Trim());
                cmd.Parameters.AddWithValue("@Sumilla", txtSumilla.Text.Trim());
                cmd.Parameters.AddWithValue("@ValoresProfesionales", txtValoresyPrincipios.Text.Trim());
                cmd.Parameters.AddWithValue("@pCompetencias1", txtCompetencias.Text.Trim());
                cmd.Parameters.AddWithValue("@pCompetencias2", txtCompetencias2.Text.Trim());
                cmd.Parameters.AddWithValue("@pCompetencias3", txtCompetencias3.Text.Trim());
                cmd.Parameters.AddWithValue("@pDesempeno1", txtDesempenio.Text.Trim());
                cmd.Parameters.AddWithValue("@pDesempeno2", txtDesempenio2.Text.Trim());
                cmd.Parameters.AddWithValue("@pDesempeno3", txtDesempenio3.Text.Trim());
                cmd.Parameters.AddWithValue("@pDesempeno4", txtDesempenio4.Text.Trim());
                cmd.Parameters.AddWithValue("@pResultado1", txtResultado.Text.Trim());
                cmd.Parameters.AddWithValue("@pResultado2", txtResultado2.Text.Trim());
                cmd.Parameters.AddWithValue("@pResultado3", txtResultado3.Text.Trim());
                cmd.Parameters.AddWithValue("@pResultado4", txtResultado4.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Conte11", txtConte11.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Conte111", txtConte111.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Acti1", txtActi1.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Duracion1", txtDuracion1.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Conte12", txtConte12.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Conte112", txtConte112.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Acti2", txtActi2.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Duracion2", txtDuracion2.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Conte13", txtConte13.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Conte131", txtConte131.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Conte132", txtConte132.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Conte133", txtConte133.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Acti31", txtActi3.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Duracion3", txtDuracion3.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni1Conte115", txtConte15.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Requi1", txtRequi1.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Acti4", txtActi4.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Duracion4", txtDuracion4.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni1Biblio", txtBibliografia1.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Fecha1", txtFecha1.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte11", txtConte21.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte111", txtConte211.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte112", txtConte212.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte113", txtConte213.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte114", txtConte214.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Acti1", txtActivi1.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Duracion1", txtDuracion12.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni2Conte22", txtConte22.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte221", txtConte221.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte222", txtConte222.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte223", txtConte223.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Acti2", txtActivi2.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Duracion2", txtDuracion22.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni2Conte23", txtConte23.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte231", txtConte231.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte232", txtConte232.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte233", txtConte233.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Acti31", txtActi1111.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Duracion3", txtDuracion23.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni2Conte24", txtConte24.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Requi1", txtReque24.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Acti4", txtActivi4.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Duracion4", txtDuracion24.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni2Biblio", txtBiblio1.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Fecha1", txtFecha11.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte31", txtConte31.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte311", txtConte311.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte312", txtConte312.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte313", txtConte313.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Acti1", txtActivi31.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Duracion1", txtDuracion31.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni3Conte32", txtConte32.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte321", txtConte321.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte322", txtConte322.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte323", txtConte323.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Acti2", txtActividad32.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Duracion2", txtDuracion32.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte33", txtConte33.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte331", txtConte331.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte332", txtConte332.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte333", txtConte333.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte334", txtConte334.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Acti31", txtActivi33.Text.Trim());
                cmd.Parameters.AddWithValue("@uni32Duracion3", txtDuracion33.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni3Conte34", txtConte34.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Requi1", txtRequeri34.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Acti4", txtActivi34.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Duracion4", txtDuracion34.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni3Biblio", txtBibliografia34.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Fecha1", txtFecha34.Text.Trim());
                cmd.Parameters.AddWithValue("@EstrategiasDidacticas", txtEstrategias.Text.Trim());
                cmd.Parameters.AddWithValue("@RecursosMateriales", txtRecursos.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Result", txtResultadosAprendizaje1.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Eval", txtActiEvaluar1.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Peso1", txtPeso1.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni1UniAprendizaje", txtResultadosAprendizaje11.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1UniActi", txtActiEvaluar11.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1PesoIF", txtPeso11.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni2Result", txtResultadosAprendizaje112.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Eval", txtActiEvaluar112.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Peso1", txtPeso21.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni2UniAprendizaje", txtResultadosAprendizaje113.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Eval2", txtActiEvaluar122.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2PesoIF", txtPeso22.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni2UniAprendizaje2", txtResultadosAprendizaje114.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2UniActi2", txtActiEvaluar114.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2PesoRS", txtPeso23.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni3Result", txtResultadosAprendizaje31.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Eval", txtActiEvaluar31.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Peso1", txtPeso31.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni3UniAprendizaje", txtResultadosAprendizaje32.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Eval2", txtActiEvaluar32.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3PesoIF", txtPeso32.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni3UniAprendizaje2", txtResultadosAprendizaje33.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3UniActi2", txtActiEvaluar33.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3PesoRS", txtPeso33.Text.Trim());//
                cmd.Parameters.AddWithValue("@ReferenciaBibliografica", txtRefBibliografica.Text);
                cmd.Parameters.AddWithValue("@fechaRegistro", txtFechaActual.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                string usuarioID = HiddenField1.Value;
                limpiar();
                if (usuarioID == "")
                {
                    Response.Write("<script language=javascript>alert('Silabo creado con exito');</script>");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Editado con Exito');</script>");
                }
            }
            catch (Exception e)
            {
                lblMensaje.Text = "" + e;
            }
            finally
            {
                con.Close();
            }
        }
        protected void btnReset_Click(object sender, EventArgs e)
        {

        }
        protected void btnAgregar_Click(object sender, EventArgs e)
        {

            InsertarDatos();
            //if (con.State == ConnectionState.Closed)
            //    con.Open();
            //SqlCommand cmd = new SqlCommand("usp_insertarsilabo", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@idSilabo", (HiddenField1.Value == "" ? 0 : Convert.ToInt32(HiddenField1.Value)));
            //cmd.Parameters.AddWithValue("@Facultad", cboFacultad.Text.Trim());
            //cmd.Parameters.AddWithValue("@Asignatura", cboAsigntura.Text.Trim());
            //cmd.Parameters.AddWithValue("@EscuelaProfesional", cboEscuelaProfesional.Text.Trim());
            //cmd.Parameters.AddWithValue("@PlanEstudios", cboPlanEstudios.Text.Trim());
            //cmd.Parameters.AddWithValue("@SemestreAcademico", cboSemestreAcademico.Text.Trim());
            //cmd.Parameters.AddWithValue("@CiclodeEstudios", txtCicloEstudios.Text.Trim());
            //cmd.Parameters.AddWithValue("@AreaCurricular", cboAreaCurricular.Text.Trim());
            //cmd.Parameters.AddWithValue("@CodigodeAsignatura", txtAsignatura.Text.Trim());
            //cmd.Parameters.AddWithValue("@NumeroCreditos", txtNumeroCreditos.Text.Trim());
            //cmd.Parameters.AddWithValue("@PreRequisitos", cboPreRequsitos.Text.Trim());
            //cmd.Parameters.AddWithValue("@NumeroHorasPractica", txtHorasPractica.Text.Trim());
            //cmd.Parameters.AddWithValue("@Modalidad", cboModalidad.Text.Trim());
            //cmd.Parameters.AddWithValue("@DuracionSemanal", txtDuracionSemanal.Text.Trim());
            //cmd.Parameters.AddWithValue("@NumAula", cboAula.Text.Trim());
            //cmd.Parameters.AddWithValue("@Horario", txtHorario.Text.Trim());
            //cmd.Parameters.AddWithValue("@Grupo", txtGrupo.Text.Trim());
            //cmd.Parameters.AddWithValue("@DuracionSemestre", "del "+ dtpFechaInicio.Text + " al "+dtpFechaFin.Text);
            //cmd.Parameters.AddWithValue("@DocenteResponsable", cboDocenteResponsable.Text.Trim());
            //cmd.Parameters.AddWithValue("@ObjetivosEducacionales", cboObjetivoEduacional.Text.Trim()+", "+cboObjetivoEducacional2.Text.Trim()+", "+cboObjetivoEducacional3.Text.Trim());
            //cmd.Parameters.AddWithValue("@ResultadosEstudiante", cboResultadoEstudent.Text.Trim() + ", " + cboResultadoEstudent2.Text.Trim() + ", " + cboResultadoEstudent3.Text.Trim() + ", " + cboResultadoEstudent4.Text.Trim());
            //cmd.Parameters.AddWithValue("@IndicadoresDesempeno", cboIndiDesempeno.Text.Trim() + ", " + cboIndiDesempeno2.Text.Trim() + ", " + cboIndiDesempeno3.Text.Trim() + ", " + cboIndiDesempeno4.Text.Trim());
            //cmd.Parameters.AddWithValue("@Sumilla", txtSumilla.Text.Trim());
            //cmd.Parameters.AddWithValue("@ValoresProfesionales", txtValoresyPrincipios.Text.Trim());
            //cmd.Parameters.AddWithValue("@pCompetencias1", txtCompetencias.Text.Trim());
            //cmd.Parameters.AddWithValue("@pCompetencias2", txtCompetencias2.Text.Trim());
            //cmd.Parameters.AddWithValue("@pCompetencias3", txtCompetencias3.Text.Trim());
            //cmd.Parameters.AddWithValue("@pDesempeno1", txtDesempenio.Text.Trim());
            //cmd.Parameters.AddWithValue("@pDesempeno2", txtDesempenio2.Text.Trim());
            //cmd.Parameters.AddWithValue("@pDesempeno3", txtDesempenio3.Text.Trim());
            //cmd.Parameters.AddWithValue("@pDesempeno4", txtDesempenio4.Text.Trim());
            //cmd.Parameters.AddWithValue("@pResultado1", txtResultado.Text.Trim());
            //cmd.Parameters.AddWithValue("@pResultado2", txtResultado2.Text.Trim());
            //cmd.Parameters.AddWithValue("@pResultado3", txtResultado3.Text.Trim());
            //cmd.Parameters.AddWithValue("@pResultado4", txtResultado4.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Conte11", txtConte11.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Conte111", txtConte111.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Acti1", txtActi1.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Duracion1", txtDuracion1.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Conte12", txtConte12.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Conte112", txtConte112.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Acti2", txtActi2.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Duracion2", txtDuracion2.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Conte13", txtConte13.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Conte131", txtConte131.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Conte132", txtConte132.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Conte133", txtConte133.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Acti31", txtActi3.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Duracion3", txtDuracion3.Text.Trim());//
            //cmd.Parameters.AddWithValue("@uni1Conte115", txtConte15.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Requi1", txtRequi1.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Acti4", txtActi4.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Duracion4", txtDuracion4.Text.Trim());//
            //cmd.Parameters.AddWithValue("@uni1Biblio", txtBibliografia1.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Fecha1", txtFecha1.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Conte11", txtConte21.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Conte111", txtConte211.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Conte112", txtConte212.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Conte113", txtConte213.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Conte114", txtConte214.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Acti1", txtActivi1.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Duracion1", txtDuracion12.Text.Trim());//
            //cmd.Parameters.AddWithValue("@uni2Conte22", txtConte22.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Conte221", txtConte221.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Conte222", txtConte222.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Conte223", txtConte223.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Acti2", txtActivi2.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Duracion2", txtDuracion22.Text.Trim());//
            //cmd.Parameters.AddWithValue("@uni2Conte23", txtConte23.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Conte231", txtConte231.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Conte232", txtConte232.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Conte233", txtConte233.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Acti31", txtActi1111.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Duracion3", txtDuracion23.Text.Trim());//
            //cmd.Parameters.AddWithValue("@uni2Conte24", txtConte24.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Requi1", txtReque24.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Acti4", txtActivi4.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Duracion4", txtDuracion24.Text.Trim());//
            //cmd.Parameters.AddWithValue("@uni2Biblio", txtBiblio1.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Fecha1", txtFecha11.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Conte31", txtConte31.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Conte311", txtConte311.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Conte312", txtConte312.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Conte313", txtConte313.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Acti1", txtActivi31.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Duracion1", txtDuracion31.Text.Trim());//
            //cmd.Parameters.AddWithValue("@uni3Conte32", txtConte32.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Conte321", txtConte321.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Conte322", txtConte322.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Conte323", txtConte323.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Acti2", txtActividad32.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Duracion2", txtDuracion32.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Conte33", txtConte33.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Conte331", txtConte331.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Conte332", txtConte332.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Conte333", txtConte333.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Conte334", txtConte334.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Acti31", txtActivi33.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni32Duracion3", txtDuracion33.Text.Trim());//
            //cmd.Parameters.AddWithValue("@uni3Conte34", txtConte34.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Requi1", txtRequeri34.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Acti4", txtActivi34.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Duracion4", txtDuracion34.Text.Trim());//
            //cmd.Parameters.AddWithValue("@uni3Biblio", txtBibliografia34.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Fecha1", txtFecha34.Text.Trim());
            //cmd.Parameters.AddWithValue("@EstrategiasDidacticas", txtEstrategias.Text.Trim());
            //cmd.Parameters.AddWithValue("@RecursosMateriales", txtRecursos.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Result", txtResultadosAprendizaje1.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Eval", txtActiEvaluar1.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1Peso1", txtPeso1.Text.Trim());//
            //cmd.Parameters.AddWithValue("@uni1UniAprendizaje", txtResultadosAprendizaje11.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1UniActi", txtActiEvaluar11.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni1PesoIF", txtPeso11.Text.Trim());//
            //cmd.Parameters.AddWithValue("@uni2Result", txtResultadosAprendizaje112.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Eval", txtActiEvaluar112.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Peso1", txtPeso21.Text.Trim());//
            //cmd.Parameters.AddWithValue("@uni2UniAprendizaje", txtResultadosAprendizaje113.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2Eval2", txtActiEvaluar122.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2PesoIF", txtPeso22.Text.Trim());//
            //cmd.Parameters.AddWithValue("@uni2UniAprendizaje2", txtResultadosAprendizaje114.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2UniActi2", txtActiEvaluar114.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni2PesoRS", txtPeso23.Text.Trim());//
            //cmd.Parameters.AddWithValue("@uni3Result", txtResultadosAprendizaje31.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Eval", txtActiEvaluar31.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Peso1", txtPeso31.Text.Trim());//
            //cmd.Parameters.AddWithValue("@uni3UniAprendizaje", txtResultadosAprendizaje32.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3Eval2", txtActiEvaluar32.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3PesoIF", txtPeso32.Text.Trim());//
            //cmd.Parameters.AddWithValue("@uni3UniAprendizaje2", txtResultadosAprendizaje33.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3UniActi2", txtActiEvaluar33.Text.Trim());
            //cmd.Parameters.AddWithValue("@uni3PesoRS", txtPeso33.Text.Trim());//
            //cmd.Parameters.AddWithValue("@ReferenciaBibliografica", txtRefBibliografica.Text);
            //cmd.Parameters.AddWithValue("@fechaRegistro", txtFechaActual.Text);
            //cmd.ExecuteNonQuery();
            //con.Close();
            //string usuarioID = HiddenField1.Value;
            //limpiar();
            //if (usuarioID == "")
            //{
            //    Response.Write("<script language=javascript>alert('Silabo creado con exito');</script>");
            //}
            //else
            //{
            //    Response.Write("<script language=javascript>alert('Editado con Exito');</script>");
            //}
        }

        protected void cboEscuelaProfesional_SelectedIndexChanged(object sender, EventArgs e)
        {
            //lblMensaje.Text = cboEscuelaProfesional.SelectedValue; //get id
            //lblMensaje2.Text = cboEscuelaProfesional.SelectedIndex.ToString(); //get numero fila
            //lblMensaje3.Text = cboEscuelaProfesional.SelectedItem.Text; //get valor
        }

        protected void cboFacultad_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboFacultad.SelectedIndex == 1)
            {
                listarCarreraAdmins();
            }
            if (cboFacultad.SelectedIndex == 2)
            {
                cboEscuelaProfesional.Items.Clear();
            }
            if (cboFacultad.SelectedIndex == 3)
            {
                cboEscuelaProfesional.Items.Clear();
            }
            if (cboFacultad.SelectedIndex == 4)
            {
                listarCarreraIngenierias();
            }
            if (cboFacultad.SelectedIndex == 5)
            {
                cboEscuelaProfesional.Items.Clear();
            }
        }

        protected void cboAsigntura_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtAsignatura.Text = cboAsigntura.SelectedValue;
            //cboAsigntura.SelectedValue = txtAsignatura.Text;
            //lblMensaje2.Text = cboAsigntura.SelectedIndex.ToString();
            //lblMensaje3.Text = cboAsigntura.SelectedItem.Text;
        }

        protected void cboObjetivoEduacional_SelectedIndexChanged(object sender, EventArgs e)
        {
            //consultarOb1(cboObjetivoEduacional.SelectedValue);
            //lblMensaje3.Text = cboObjetivoEduacional.SelectedItem.Text;
        }

        protected void cboObjetivoEduacional_SelectedIndexChanged1(object sender, EventArgs e)
        {
            consultarOb1();
            //lblMensaje3.Text = cboObjetivoEduacional.SelectedItem.Text;
        }

        protected void cboObjetivoEducacional2_SelectedIndexChanged(object sender, EventArgs e)
        {
            consultarOb2();
        }

        protected void cboObjetivoEducacional3_SelectedIndexChanged(object sender, EventArgs e)
        {
            consultarOb3();
        }

        protected void cboResultadoEstudent_SelectedIndexChanged(object sender, EventArgs e)
        {
            consultarRes1();
        }

        protected void cboResultadoEstudent2_SelectedIndexChanged(object sender, EventArgs e)
        {
            consultarRes2();
        }

        protected void cboResultadoEstudent3_SelectedIndexChanged(object sender, EventArgs e)
        {
            consultarRes3();
        }

        protected void cboResultadoEstudent4_SelectedIndexChanged(object sender, EventArgs e)
        {
            consultarRes4();
        }

        protected void cboIndiDesempeno_SelectedIndexChanged(object sender, EventArgs e)
        {
            consultarDes1();
        }

        protected void cboIndiDesempeno2_SelectedIndexChanged(object sender, EventArgs e)
        {
            consultarDes2();
        }

        protected void cboIndiDesempeno3_SelectedIndexChanged(object sender, EventArgs e)
        {
            consultarDes3();
        }

        protected void cboIndiDesempeno4_SelectedIndexChanged(object sender, EventArgs e)
        {
            consultarDes4();
        }
    }
}