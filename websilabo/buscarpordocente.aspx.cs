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
    public partial class buscarpordocente : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=tcp:websilabodbserver.database.windows.net,1433;Initial Catalog=websilabo_db;Persist Security Info=False;User ID=lucho;Password=Pastore123-;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listar();
                listarDocentes();
                cargarUsuario();
            }
        }
        void cargarUsuario()
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
        void listarAsignaturaentabla(string abc)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("usp_listarDocente", con);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@DocenteResponsable", abc);
            DataTable dtUsuarios = new DataTable();
            sqlDa.Fill(dtUsuarios);
            con.Close();
            gvUsuarios.DataSource = dtUsuarios;
            gvUsuarios.DataBind();
        }

        void listarDocentes()
        {
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select distinct DocenteResponsable from tsilabo", con); // tabla
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);  // llenar datos
                cboAsigntura.DataTextField = ds.Tables[0].Columns["DocenteResponsable"].ToString(); // text field name of table dispalyed in dropdown
                //cboAsigntura.DataValueField = ds.Tables[0].Columns["idSilabo"].ToString();// id de la tabla
                cboAsigntura.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                cboAsigntura.DataBind();  //binding dropdownlist
            }
            catch (Exception e)
            {
                Label1.Text = "" + e;
            }
            finally
            {
                con.Close();
            }

        }

        protected void cboAsigntura_SelectedIndexChanged(object sender, EventArgs e)
        {
            listarAsignaturaentabla(cboAsigntura.SelectedItem.ToString());
        }
    }
}