using Microsoft.Reporting.WebForms;
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
    public partial class evaluarsilabo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=tcp:websilabodbserver.database.windows.net,1433;Initial Catalog=websilabo_db;Persist Security Info=False;User ID=lucho;Password=Pastore123-;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        public void buscar(string activo)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select Aprovado from tsilabo where idSilabo = @idSilabo", con);
                cmd.Parameters.AddWithValue("idSilabo", activo);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count == 1)
                {
                    if (dt.Rows[0][0].ToString() == "")
                    {
                        cboAprobado.SelectedIndex = 2;
                        txtMensaje.Enabled = false;
                    }
                    else if (dt.Rows[0][0].Equals(true))
                    {
                        cboAprobado.SelectedIndex = 1;
                        txtMensaje.Enabled = false;
                        //Response.Write("<script language=javascript>alert('1');</script>");
                    }
                    else if (dt.Rows[0][0].Equals(false))
                    {
                        cboAprobado.SelectedIndex = 0;
                        txtMensaje.Enabled = true;
                    }
                }
                else
                {
                    txtMensaje.Text = "No encontrado";
                }
            }
            catch (Exception e)
            {
                txtMensaje.Text = "" + e;
            }
            finally
            {
                con.Close();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtMensaje.Enabled = false;
                ReportViewer1.Visible = false;
                this.ReportViewer1.LocalReport.EnableExternalImages = true;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            buscar(DropDownList1.Text);
        }
        protected void btnSelect_Click(object sender, EventArgs e)
        {
            int silaboid = Convert.ToInt32(DropDownList1.Text);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("usp_listarSilaboID", con);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@idSilabo", silaboid);
            DataTable dtSilabo = new DataTable();
            sqlDa.Fill(dtSilabo);
            ReportViewer1.Visible = true;
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("silabo.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dtSilabo));
            ReportViewer1.LocalReport.Refresh();
            con.Close();

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("usp_insertareditaraprovado", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idSilabo", (DropDownList1.Text == "" ? 0 : Convert.ToInt32(DropDownList1.Text)));
            cmd.Parameters.AddWithValue("@Aprovado", cboAprobado.Text.Trim());
            if (cboAprobado.SelectedIndex == 2)
            {
                Response.Write("<script language=javascript>alert('Estado invalido');</script>");
                return;
            }
            else
            {
                cmd.ExecuteNonQuery();
            }
            
            con.Close();
            string usuarioID = DropDownList1.Text;
            //limpiar();
            if (usuarioID == "")
            {
                Response.Write("<script language=javascript>alert('Silabo creado con exito');</script>");
            }
            else
            {
                Response.Write("<script language=javascript>alert('Editado con Exito');</script>");
            }
        }

        protected void cboAprobado_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboAprobado.SelectedIndex == 0)
            {
                txtMensaje.Enabled = true;
            }
            if (cboAprobado.SelectedIndex == 1)
            {
                txtMensaje.Enabled = false;
            }
            if (cboAprobado.SelectedIndex == 2)
            {
                txtMensaje.Enabled = false;
            }

        }
    }
}