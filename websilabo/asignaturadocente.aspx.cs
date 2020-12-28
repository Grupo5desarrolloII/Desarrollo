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
    public partial class asignaturadocente : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=tcp:websilabodbserver.database.windows.net,1433;Initial Catalog=websilabo_db;Persist Security Info=False;User ID=lucho;Password=Pastore123-;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnEliminar.Enabled = false;
                cargar();
                listar();
                listarAsignaturas();
                listarSemestreAcademico();
                listarPlanEstudios();
                listarAreaCurricular();
            }
        }
        void cargar()
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select top (1) C.TipoUsuario, C.Nombres, C.Apellidos, C.Correo, U.idUsuario" +
                    " from tusuarioactivo C inner join tusuario U on C.Correo=U.Correo", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                lblUser.Text = dt.Rows[0][1].ToString() + " " + dt.Rows[0][2].ToString();
                txtEncargado.Text = dt.Rows[0][3].ToString();
                HiddenField2.Value = dt.Rows[0][4].ToString();
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
        
        void listarAsignaturas()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from taula", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);  // llenar datos
                cboAulas.DataTextField = ds.Tables[0].Columns["NumeroAula"].ToString(); // text field name of table dispalyed in dropdown
                cboAulas.DataValueField = ds.Tables[0].Columns["idAula"].ToString();// id de la tabla
                cboAulas.DataSource = ds.Tables[0]; //assigning datasource to the dropdownlist
                cboAulas.DataBind();  //binding dropdownlist
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

        void listarSemestreAcademico()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from tsemestreacademico", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);  // llenar datos
                cboSemestre.DataTextField = ds.Tables[0].Columns["NombreSemestre"].ToString(); // text field name of table dispalyed in dropdown
                cboSemestre.DataValueField = ds.Tables[0].Columns["idSemestreacademico"].ToString();// id de la tabla
                cboSemestre.DataSource = ds.Tables[0]; //assigning datasource to the dropdownlist
                cboSemestre.DataBind();  //binding dropdownlist
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
        void listarPlanEstudios()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from tplanestudios", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);  // llenar datos
                cboPlanEstudios.DataTextField = ds.Tables[0].Columns["PlanEstudios"].ToString(); // text field name of table dispalyed in dropdown
                cboPlanEstudios.DataValueField = ds.Tables[0].Columns["idPlanestudios"].ToString();// id de la tabla
                cboPlanEstudios.DataSource = ds.Tables[0]; //assigning datasource to the dropdownlist
                cboPlanEstudios.DataBind();  //binding dropdownlist
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
        void listarAreaCurricular()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from tareacurricular", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);  // llenar datos
                cboAreaCurricular.DataTextField = ds.Tables[0].Columns["NombreArea"].ToString(); // text field name of table dispalyed in dropdown
                cboAreaCurricular.DataValueField = ds.Tables[0].Columns["idAreacurricular"].ToString();// id de la tabla
                cboAreaCurricular.DataSource = ds.Tables[0]; //assigning datasource to the dropdownlist
                cboAreaCurricular.DataBind();  //binding dropdownlist
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
            txtCodigoAsignatura.Text = txtEscuelaProfesional.Text = txtNombreAsignatura.Text = "";
            cboAreaCurricular.SelectedIndex = 0;
            cboAulas.SelectedIndex = 0;
            cboPlanEstudios.SelectedIndex = 0;
            cboSemestre.SelectedIndex = 0;
            btnAgregar.Text = "Agregar";
            btnEliminar.Enabled = false;
        }
        void listar()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("usp_listarAsignaturas2", con);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtUsuarios = new DataTable();
            sqlDa.Fill(dtUsuarios);
            con.Close();
            gvUsuarios.DataSource = dtUsuarios;
            gvUsuarios.DataBind();
        }
        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int usuarioid = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("usp_listarAsignaturaid2", con);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@idAsignaturas", usuarioid);
            DataTable dtUsuarios = new DataTable();
            sqlDa.Fill(dtUsuarios);
            con.Close();
            HiddenField1.Value = usuarioid.ToString();
            txtCodigoAsignatura.Text = dtUsuarios.Rows[0]["CodAsignatura"].ToString();
            txtNombreAsignatura.Text = dtUsuarios.Rows[0]["NombreAsignatura"].ToString();
            txtEscuelaProfesional.Text = dtUsuarios.Rows[0]["EscuelaProfesional"].ToString();
            //dtUsuarios.Rows[0]["Encargado"] = cboEncargado.SelectedValue;
            //cboEncargado.Items.FindByValue(dtUsuarios.Rows[0]["Encargado"].ToString());// = dtUsuarios.Rows[0]["Encargado"];
            //txtEncargado.Text = dtUsuarios.Rows[0]["Encargado"].ToString();
            cboAulas.SelectedItem.Text = dtUsuarios.Rows[0]["Aula"].ToString();
            cboSemestre.SelectedItem.Text = dtUsuarios.Rows[0]["SemestreAcademico"].ToString();
            cboPlanEstudios.SelectedItem.Text = dtUsuarios.Rows[0]["PlanEstudios"].ToString();
            cboAreaCurricular.SelectedItem.Text = dtUsuarios.Rows[0]["AreaCurricular"].ToString();
            //dtUsuarios.Rows[0]["Aula"] = cboAulas.SelectedItem.Text;
            btnAgregar.Text = "Actualizar";
            btnEliminar.Enabled = true;


        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("usp_insertareditarAsignatura", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idAsignatura", (HiddenField1.Value == "" ? 0 : Convert.ToInt32(HiddenField1.Value)));
            cmd.Parameters.AddWithValue("@CodAsignatura", txtCodigoAsignatura.Text.Trim());
            cmd.Parameters.AddWithValue("@NombreAsignatura", txtNombreAsignatura.Text.Trim());
            cmd.Parameters.AddWithValue("@EscuelaProfesional", txtEscuelaProfesional.Text.Trim());
            cmd.Parameters.AddWithValue("@Encargado", Convert.ToInt32(HiddenField2.Value));
            cmd.Parameters.AddWithValue("@aula", cboAulas.SelectedValue);
            cmd.Parameters.AddWithValue("@SemestreAcademico", cboSemestre.SelectedValue);
            cmd.Parameters.AddWithValue("@PlanEstudios", cboPlanEstudios.SelectedValue);
            cmd.Parameters.AddWithValue("@AreaCurricular", cboAreaCurricular.SelectedValue);
            cmd.ExecuteNonQuery();
            con.Close();
            string usuarioID = HiddenField1.Value;
            limpiar();
            if (usuarioID == "")
            {
                Response.Write("<script language=javascript>alert('Exito');</script>");
            }

            else
            {
                Response.Write("<script language=javascript>alert('Editado con Exito');</script>");
            }
            listar();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("usp_EliminarAsignaturaporID", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idAsignaturas", Convert.ToInt32(HiddenField1.Value));
            cmd.ExecuteNonQuery();
            con.Close();
            limpiar();
            listar();
            Response.Write("<script language=javascript>alert('Eliminado con Exito');</script>");
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            limpiar();
        }
    }
}