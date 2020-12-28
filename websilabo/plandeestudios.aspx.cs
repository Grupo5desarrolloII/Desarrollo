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
    public partial class plandeestudios : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=tcp:websilabodbserver.database.windows.net,1433;Initial Catalog=websilabo_db;Persist Security Info=False;User ID=lucho;Password=Pastore123-;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

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
            txtEscuelaProfecional.Text = txtPlanEstudios.Text = "";
            btnAgregar.Text = "Agregar";
            btnEliminar.Enabled = false;
        }
        void listar()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("usp_listarPlanestudioss", con);
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
            SqlDataAdapter sqlDa = new SqlDataAdapter("usp_listarPlanestudiosid", con);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@idPlanestudioss", usuarioid);
            DataTable dtUsuarios = new DataTable();
            sqlDa.Fill(dtUsuarios);
            con.Close();
            HiddenField1.Value = usuarioid.ToString();
            txtEscuelaProfecional.Text = dtUsuarios.Rows[0]["EscuelaProfesional"].ToString();
            txtPlanEstudios.Text = dtUsuarios.Rows[0]["PlanEstudios"].ToString();
            btnAgregar.Text = "Actualizar";
            btnEliminar.Enabled = true;

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("usp_insertareditarPlanestudios", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idPlanestudioss", (HiddenField1.Value == "" ? 0 : Convert.ToInt32(HiddenField1.Value)));
            cmd.Parameters.AddWithValue("@EscuelaProfesional", txtEscuelaProfecional.Text.Trim());
            cmd.Parameters.AddWithValue("@Planestudios", txtPlanEstudios.Text.Trim());
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
            SqlCommand cmd = new SqlCommand("usp_EliminarPlanestudiosporID", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idPlanestudioss", Convert.ToInt32(HiddenField1.Value));
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