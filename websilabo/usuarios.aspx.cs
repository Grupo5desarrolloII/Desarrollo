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
    public partial class usuarios : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection("Server=tcp:websilabodbserver.database.windows.net,1433;Initial Catalog=websilabo_db;Persist Security Info=False;User ID=lucho;Password=Pastore123-;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        SqlConnection con = new SqlConnection("Server=localhost;Database=websilabo;Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnEliminar.Enabled = false;              
                listar();
            }
        }
        public void limpiar()
        {
            HiddenField1.Value = "";
            cboTipoUsuario.SelectedIndex = 1;
            txtNombres.Text = txtApellidos.Text = txtCorreo.Text = txtContra.Text = "";
            btnAgregar.Text = "Agregar";
            btnEliminar.Enabled = false;
        }
        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("usp_insertareditarusuario", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idUser", (HiddenField1.Value==""?0:Convert.ToInt32(HiddenField1.Value)));
            cmd.Parameters.AddWithValue("@Tipo",cboTipoUsuario.Text.Trim());
            cmd.Parameters.AddWithValue("@Nombres",txtNombres.Text.Trim());
            cmd.Parameters.AddWithValue("@Apellidos",txtApellidos.Text.Trim());
            cmd.Parameters.AddWithValue("@Correo",txtCorreo.Text.Trim());
            cmd.Parameters.AddWithValue("@Contra", txtContra.Text.Trim());
            cmd.Parameters.AddWithValue("@Comite", cboComite.SelectedValue);
            cmd.Parameters.AddWithValue("@Active", cboActivo.SelectedValue);
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
        void listar()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("usp_listarUsuarios", con);
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
            SqlDataAdapter sqlDa = new SqlDataAdapter("usp_listarUsuario", con);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@idUser", usuarioid);
            DataTable dtUsuarios = new DataTable();
            sqlDa.Fill(dtUsuarios);
            con.Close();           
            HiddenField1.Value = usuarioid.ToString();
            cboTipoUsuario.Text = dtUsuarios.Rows[0]["TipoUsuario"].ToString();
            txtNombres.Text = dtUsuarios.Rows[0]["Nombres"].ToString();
            txtApellidos.Text = dtUsuarios.Rows[0]["Apellidos"].ToString();
            txtCorreo.Text = dtUsuarios.Rows[0]["Correo"].ToString();
            txtContra.Text = dtUsuarios.Rows[0]["Contrasena"].ToString();
            cboComite.SelectedIndex = Convert.ToInt32(dtUsuarios.Rows[0]["ComiteRevision"]);
            cboActivo.SelectedIndex = Convert.ToInt32(dtUsuarios.Rows[0]["Activo"]);
            cboComite.Text = dtUsuarios.Rows[0]["ComiteRevision"].ToString();
            cboActivo.Text = dtUsuarios.Rows[0]["Activo"].ToString();
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
            SqlCommand cmd = new SqlCommand("usp_EliminarUsuarioPorID", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idUser", Convert.ToInt32(HiddenField1.Value));
            cmd.ExecuteNonQuery();
            con.Close();
            limpiar();
            listar();
            Response.Write("<script language=javascript>alert('Eliminado con Exito');</script>");
        }
    }
}