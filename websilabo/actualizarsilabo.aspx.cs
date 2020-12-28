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
    public partial class actualizarsilabo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=tcp:websilabodbserver.database.windows.net,1433;Initial Catalog=websilabo_db;Persist Security Info=False;User ID=lucho;Password=Pastore123-;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnEliminar.Enabled = false;
                listar();
                cargar();
                listarCombo();
                listarAsignaturas();
            }
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
        public void limpiar()
        {
            HiddenField1.Value = "";
            txtCicloEstudios.Text = txtNumeroCreditos.Text = txtHorasPractica.Text = txtDuracionSemanal.Text = 
                txtGrupo.Text = txtSumilla.Text = txtValoresyPrincipios.Text = txtCompetencias.Text = 
                txtDesempenio.Text = txtResultado.Text = txtActi1.Text =  txtActiEvaluar1.Text =
                txtActiEvaluar112.Text = txtEstrategias.Text = txtRecursos.Text = txtRefBibliografica.Text = "";
            btnAgregar.Text = "Agregar";
            btnEliminar.Enabled = false;
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
        void listar()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("usp_listarSilabo", con);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtUsuarios = new DataTable();
            sqlDa.Fill(dtUsuarios);
            con.Close();
            gvUsuarios.DataSource = dtUsuarios;
            gvUsuarios.DataBind();
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

        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int usuarioid = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("usp_listarSilaboID", con);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@idSilabo", usuarioid);
            DataTable dtUsuarios = new DataTable();
            sqlDa.Fill(dtUsuarios);
            con.Close();
            HiddenField1.Value = usuarioid.ToString();
            cboFacultad.SelectedItem.Text = dtUsuarios.Rows[0]["Facultad"].ToString();
            cboEscuelaProfesional.SelectedItem.Text = dtUsuarios.Rows[0]["EscuelaProfesional"].ToString();
            cboAsigntura.SelectedItem.Text = dtUsuarios.Rows[0]["Asignatura"].ToString();
            cboPlanEstudios.SelectedItem.Text = dtUsuarios.Rows[0]["PlanEstudios"].ToString();
            cboSemestreAcademico.SelectedItem.Text = dtUsuarios.Rows[0]["SemestreAcademico"].ToString();
            txtCicloEstudios.Text = dtUsuarios.Rows[0]["CiclodeEstudios"].ToString();
            cboAreaCurricular.SelectedItem.Text = dtUsuarios.Rows[0]["AreaCurricular"].ToString();
            txtAsignatura.Text = dtUsuarios.Rows[0]["CodigodeAsignatura"].ToString();
            txtNumeroCreditos.Text = dtUsuarios.Rows[0]["NumeroCreditos"].ToString();
            cboPreRequsitos.SelectedItem.Text = dtUsuarios.Rows[0]["PreRequisitos"].ToString();
            txtHorasPractica.Text = dtUsuarios.Rows[0]["NumeroHorasPractica"].ToString();
            cboModalidad.SelectedItem.Text = dtUsuarios.Rows[0]["Modalidad"].ToString();
            txtDuracionSemanal.Text = dtUsuarios.Rows[0]["DuracionSemanal"].ToString();
            cboAula.SelectedItem.Text = dtUsuarios.Rows[0]["NumAula"].ToString();
            txtHorario.Text = dtUsuarios.Rows[0]["Horario"].ToString();
            txtGrupo.Text = dtUsuarios.Rows[0]["Grupo"].ToString();
            dtpFechaInicio.Text = dtUsuarios.Rows[0]["DuracionSemestre"].ToString();
            cboDocenteResponsable.SelectedItem.Text = dtUsuarios.Rows[0]["DocenteResponsable"].ToString();
            cboObjetivoEduacional.SelectedItem.Text = dtUsuarios.Rows[0]["ObjetivosEducacionales"].ToString();
            cboResultadoEstudent.SelectedItem.Text = dtUsuarios.Rows[0]["ResultadosEstudiante"].ToString();
            cboIndiDesempeno.SelectedItem.Text = dtUsuarios.Rows[0]["IndicadoresDesempeno"].ToString();
            txtSumilla.Text = dtUsuarios.Rows[0]["Sumilla"].ToString();
            txtValoresyPrincipios.Text = dtUsuarios.Rows[0]["ValoresProfesionales"].ToString();
            txtCompetencias.Text = dtUsuarios.Rows[0]["pCompetencias1"].ToString();
            txtCompetencias2.Text = dtUsuarios.Rows[0]["pCompetencias2"].ToString();
            txtCompetencias3.Text = dtUsuarios.Rows[0]["pCompetencias3"].ToString();
            txtDesempenio.Text = dtUsuarios.Rows[0]["pDesempeno1"].ToString();
            txtDesempenio2.Text = dtUsuarios.Rows[0]["pDesempeno2"].ToString();
            txtDesempenio3.Text = dtUsuarios.Rows[0]["pDesempeno3"].ToString();
            txtDesempenio4.Text = dtUsuarios.Rows[0]["pDesempeno4"].ToString();
            txtResultado.Text = dtUsuarios.Rows[0]["pResultado1"].ToString();
            txtResultado2.Text = dtUsuarios.Rows[0]["pResultado2"].ToString();
            txtResultado3.Text = dtUsuarios.Rows[0]["pResultado3"].ToString();
            txtResultado4.Text = dtUsuarios.Rows[0]["pResultado4"].ToString();
            txtConte11.Text = dtUsuarios.Rows[0]["uni1Conte11"].ToString();
            txtConte111.Text = dtUsuarios.Rows[0]["uni1Conte111"].ToString();
            txtActi1.Text = dtUsuarios.Rows[0]["uni1Acti1"].ToString();
            txtDuracion1.Text = dtUsuarios.Rows[0]["uni1Duracion1"].ToString();
            txtConte12.Text = dtUsuarios.Rows[0]["uni1Conte12"].ToString();
            txtConte112.Text = dtUsuarios.Rows[0]["uni1Conte112"].ToString();
            txtActi2.Text = dtUsuarios.Rows[0]["uni1Acti2"].ToString();
            txtDuracion2.Text = dtUsuarios.Rows[0]["uni1Duracion2"].ToString();
            txtConte13.Text = dtUsuarios.Rows[0]["uni1Conte13"].ToString();
            txtConte131.Text = dtUsuarios.Rows[0]["uni1Conte131"].ToString();
            txtConte132.Text = dtUsuarios.Rows[0]["uni1Conte132"].ToString();
            txtConte133.Text = dtUsuarios.Rows[0]["uni1Conte133"].ToString();
            txtActi3.Text = dtUsuarios.Rows[0]["uni1Acti31"].ToString();
            txtDuracion3.Text = dtUsuarios.Rows[0]["uni1Duracion3"].ToString();
            txtConte15.Text = dtUsuarios.Rows[0]["uni1Conte115"].ToString();
            txtRequi1.Text = dtUsuarios.Rows[0]["uni1Requi1"].ToString();
            txtActi4.Text = dtUsuarios.Rows[0]["uni1Acti4"].ToString();
            txtDuracion4.Text = dtUsuarios.Rows[0]["uni1Duracion4"].ToString();
            txtBibliografia1.Text = dtUsuarios.Rows[0]["uni1Biblio"].ToString();
            txtFecha1.Text = dtUsuarios.Rows[0]["uni1Fecha1"].ToString();
            txtConte21.Text = dtUsuarios.Rows[0]["uni2Conte11"].ToString();
            txtConte211.Text = dtUsuarios.Rows[0]["uni2Conte111"].ToString();
            txtConte212.Text = dtUsuarios.Rows[0]["uni2Conte112"].ToString();
            txtConte213.Text = dtUsuarios.Rows[0]["uni2Conte113"].ToString();
            txtConte214.Text = dtUsuarios.Rows[0]["uni2Conte114"].ToString();
            txtActivi1.Text = dtUsuarios.Rows[0]["uni2Acti1"].ToString();
            txtDuracion12.Text = dtUsuarios.Rows[0]["uni2Duracion1"].ToString();
            txtConte22.Text = dtUsuarios.Rows[0]["uni2Conte22"].ToString();
            txtConte221.Text = dtUsuarios.Rows[0]["uni2Conte221"].ToString();
            txtConte222.Text = dtUsuarios.Rows[0]["uni2Conte222"].ToString();
            txtConte223.Text = dtUsuarios.Rows[0]["uni2Conte223"].ToString();
            txtActivi2.Text = dtUsuarios.Rows[0]["uni2Acti2"].ToString();
            txtDuracion22.Text = dtUsuarios.Rows[0]["uni2Duracion2"].ToString();
            txtConte23.Text = dtUsuarios.Rows[0]["uni2Conte23"].ToString();
            txtConte231.Text = dtUsuarios.Rows[0]["uni2Conte231"].ToString();
            txtConte232.Text = dtUsuarios.Rows[0]["uni2Conte232"].ToString();
            txtConte233.Text = dtUsuarios.Rows[0]["uni2Conte233"].ToString();
            txtActi1111.Text = dtUsuarios.Rows[0]["uni2Acti31"].ToString();
            txtDuracion23.Text = dtUsuarios.Rows[0]["uni2Duracion3"].ToString();
            txtConte24.Text = dtUsuarios.Rows[0]["uni2Conte24"].ToString();
            txtReque24.Text = dtUsuarios.Rows[0]["uni2Requi1"].ToString();
            txtActivi4.Text = dtUsuarios.Rows[0]["uni2Acti4"].ToString();
            txtDuracion24.Text = dtUsuarios.Rows[0]["uni2Duracion4"].ToString();
            txtBiblio1.Text = dtUsuarios.Rows[0]["uni2Biblio"].ToString();
            txtFecha11.Text = dtUsuarios.Rows[0]["uni2Fecha1"].ToString();
            txtConte31.Text = dtUsuarios.Rows[0]["uni3Conte31"].ToString();
            txtConte311.Text = dtUsuarios.Rows[0]["uni3Conte311"].ToString();
            txtConte312.Text = dtUsuarios.Rows[0]["uni3Conte312"].ToString();
            txtConte313.Text = dtUsuarios.Rows[0]["uni3Conte313"].ToString();
            txtActivi31.Text = dtUsuarios.Rows[0]["uni3Acti1"].ToString();
            txtDuracion31.Text = dtUsuarios.Rows[0]["uni3Duracion1"].ToString();//
            txtConte32.Text = dtUsuarios.Rows[0]["uni3Conte32"].ToString();
            txtConte321.Text = dtUsuarios.Rows[0]["uni3Conte321"].ToString();
            txtConte322.Text = dtUsuarios.Rows[0]["uni3Conte322"].ToString();
            txtConte323.Text = dtUsuarios.Rows[0]["uni3Conte323"].ToString();
            txtActividad32.Text = dtUsuarios.Rows[0]["uni3Acti2"].ToString();
            txtDuracion32.Text = dtUsuarios.Rows[0]["uni3Duracion2"].ToString();
            txtConte33.Text = dtUsuarios.Rows[0]["uni3Conte33"].ToString();
            txtConte331.Text = dtUsuarios.Rows[0]["uni3Conte331"].ToString();
            txtConte332.Text = dtUsuarios.Rows[0]["uni3Conte332"].ToString();
            txtConte333.Text = dtUsuarios.Rows[0]["uni3Conte333"].ToString();
            txtConte334.Text = dtUsuarios.Rows[0]["uni3Conte334"].ToString();
            txtActivi33.Text = dtUsuarios.Rows[0]["uni3Acti31"].ToString();
            txtDuracion33.Text = dtUsuarios.Rows[0]["uni32Duracion3"].ToString();
            txtConte34.Text = dtUsuarios.Rows[0]["uni3Conte34"].ToString();
            txtRequeri34.Text = dtUsuarios.Rows[0]["uni3Requi1"].ToString();
            txtActivi34.Text = dtUsuarios.Rows[0]["uni3Acti4"].ToString();
            txtDuracion34.Text = dtUsuarios.Rows[0]["uni3Duracion4"].ToString();//
            txtBibliografia34.Text = dtUsuarios.Rows[0]["uni3Biblio"].ToString();
            txtFecha34.Text = dtUsuarios.Rows[0]["uni3Fecha1"].ToString();
            txtEstrategias.Text = dtUsuarios.Rows[0]["EstrategiasDidacticas"].ToString();
            txtRecursos.Text = dtUsuarios.Rows[0]["RecursosMateriales"].ToString();
            txtResultadosAprendizaje1.Text = dtUsuarios.Rows[0]["uni1Result"].ToString();
            txtActiEvaluar1.Text = dtUsuarios.Rows[0]["uni1Eval"].ToString();
            txtPeso1.Text = dtUsuarios.Rows[0]["uni1Peso1"].ToString();
            txtResultadosAprendizaje11.Text = dtUsuarios.Rows[0]["uni1UniAprendizaje"].ToString();
            txtActiEvaluar11.Text = dtUsuarios.Rows[0]["uni1UniActi"].ToString();
            txtPeso11.Text = dtUsuarios.Rows[0]["uni1PesoIF"].ToString();//
            txtResultadosAprendizaje112.Text = dtUsuarios.Rows[0]["uni2Result"].ToString();
            txtActiEvaluar112.Text = dtUsuarios.Rows[0]["uni2Eval"].ToString();
            txtPeso21.Text = dtUsuarios.Rows[0]["uni2Peso1"].ToString();//
            txtResultadosAprendizaje113.Text = dtUsuarios.Rows[0]["uni2UniAprendizaje"].ToString();
            txtActiEvaluar122.Text = dtUsuarios.Rows[0]["uni2Eval2"].ToString();
            txtPeso22.Text = dtUsuarios.Rows[0]["uni2PesoIF"].ToString();//
            txtResultadosAprendizaje114.Text = dtUsuarios.Rows[0]["uni2UniAprendizaje2"].ToString();
            txtActiEvaluar114.Text = dtUsuarios.Rows[0]["uni2UniActi2"].ToString();
            txtPeso23.Text = dtUsuarios.Rows[0]["uni2PesoRS"].ToString();//
            txtResultadosAprendizaje31.Text = dtUsuarios.Rows[0]["uni3Result"].ToString();
            txtActiEvaluar31.Text = dtUsuarios.Rows[0]["uni3Eval"].ToString();
            txtPeso31.Text = dtUsuarios.Rows[0]["uni3Peso1"].ToString(); ;//
            txtResultadosAprendizaje32.Text = dtUsuarios.Rows[0]["uni3UniAprendizaje"].ToString();
            txtActiEvaluar32.Text = dtUsuarios.Rows[0]["uni3Eval2"].ToString();
            txtPeso32.Text = dtUsuarios.Rows[0]["uni3PesoIF"].ToString();//
            txtResultadosAprendizaje33.Text = dtUsuarios.Rows[0]["uni3UniAprendizaje2"].ToString();
            txtActiEvaluar33.Text = dtUsuarios.Rows[0]["uni3UniActi2"].ToString();
            txtPeso33.Text = dtUsuarios.Rows[0]["uni3PesoRS"].ToString();//
            txtRefBibliografica.Text = dtUsuarios.Rows[0]["ReferenciaBibliografica"].ToString();


            //txtEstrategias.Text = dtUsuarios.Rows[0]["EstrategiasDidacticas"].ToString();
            //txtRecursos.Text = dtUsuarios.Rows[0]["RecursosMateriales"].ToString();
            ////txtRecursos.Text = dtUsuarios.Rows[0]["EvaluacionActividades"].ToString();
            //txtRefBibliografica.Text = dtUsuarios.Rows[0]["ReferenciaBibliografica"].ToString();


            //cboComite.SelectedIndex = Convert.ToInt32(dtUsuarios.Rows[0]["ComiteRevision"]);
            //cboActivo.SelectedIndex = Convert.ToInt32(dtUsuarios.Rows[0]["Activo"]);
            //cboComite.Items.FindByValue("1").Selected = (bool)dtUsuarios.Rows[0]["ComiteRevision"];
            //cboActivo.Items.FindByValue("1").Selected = (bool)dtUsuarios.Rows[0]["Activo"];
            //cboActivo.Items.FindByValue("1").Selected = true;
            //dtUsuarios.Rows[0]["ComiteRevision"] = Convert.ToInt32(cboComite.SelectedValue);
            //dtUsuarios.Rows[0]["Activo"] = Convert.ToInt32(cboActivo.SelectedValue);          

            //cboComite.Text = dtUsuarios.Rows[0]["ComiteRevision"].ToString();
            //cboActivo.Text = dtUsuarios.Rows[0]["Activo"].ToString();
            btnAgregar.Text = "Actualizar";
            btnEliminar.Enabled = true;

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            limpiar();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("usp_EliminarSilaboPorID", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idSilabo", Convert.ToInt32(HiddenField1.Value));
            cmd.ExecuteNonQuery();
            con.Close();
            limpiar();
            listar();
            Response.Write("<script language=javascript>alert('Eliminado con Exito');</script>");
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
        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            InsertarDatos();
            //if (con.State == ConnectionState.Closed)
            //    con.Open();
            //SqlCommand cmd = new SqlCommand("usp_insertarsilabo1", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@idSilabo", (HiddenField1.Value == "" ? 0 : Convert.ToInt32(HiddenField1.Value)));
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
            //cmd.Parameters.AddWithValue("@Grupo", txtGrupo.Text.Trim());
            //cmd.Parameters.AddWithValue("@DuracionSemestre", "del " + dtpFechaInicio.Text + " al " + dtpFechaFin.Text);
            //cmd.Parameters.AddWithValue("@DocenteResponsable", cboDocenteResponsable.Text.Trim());
            //cmd.Parameters.AddWithValue("@ObjetivosEducacionales", cboObjetivoEduacional.Text.Trim());
            //cmd.Parameters.AddWithValue("@ResultadosEstudiante", cboResultadoEstudent.Text.Trim());
            //cmd.Parameters.AddWithValue("@IndicadoresDesempeno", cboIndiDesempeno.Text.Trim());
            //cmd.Parameters.AddWithValue("@Sumilla", txtSumilla.Text.Trim());
            //cmd.Parameters.AddWithValue("@ValoresProfesionales", txtValoresyPrincipios.Text.Trim());
            //cmd.Parameters.AddWithValue("@pCompetencias", txtCompetencias.Text.Trim());
            //cmd.Parameters.AddWithValue("@pDesempeno", txtDesempenio.Text.Trim());
            //cmd.Parameters.AddWithValue("@pResultado", txtResultado.Text.Trim());
            ////cmd.Parameters.AddWithValue("@uAprendizaje1", txtUaprendizaje1.Text.Trim());
            ////cmd.Parameters.AddWithValue("@uAprendizaje2", txtUaprendizaje2.Text.Trim());
            ////cmd.Parameters.AddWithValue("@uAprendizaje3", txtUaprendizaje3.Text.Trim());
            //cmd.Parameters.AddWithValue("@EstrategiasDidacticas", txtEstrategias.Text.Trim());
            //cmd.Parameters.AddWithValue("@RecursosMateriales", txtRecursos.Text.Trim());
            //cmd.Parameters.AddWithValue("@EvaluacionActividades", txtRecursos.Text.Trim());
            //cmd.Parameters.AddWithValue("@ReferenciaBibliografica", txtRefBibliografica.Text.Trim());
            //cmd.Parameters.AddWithValue("@fechaRegistro", txtFechaActual.Text.Trim());
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
            listar();
        }
    }
}