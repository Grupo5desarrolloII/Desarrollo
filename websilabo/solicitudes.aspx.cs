using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace websilabo
{
    public partial class solicitudes : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=localhost;Database=websilabo;Integrated Security=True;");
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listar();
            }
        }
        void listar()
        {
            var st = from s in db.solicituds select s;
            gvDatos.DataSource = st;
            gvDatos.DataBind();
        }
        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int rowIndex = ((GridViewRow)((sender as Control)).NamingContainer).RowIndex;
            string fileLocation = gvDatos.Rows[rowIndex].Cells[6].Text;
            string FilePath = Server.MapPath("~/"+fileLocation);
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }

            //int usuarioid = Convert.ToInt32((sender as LinkButton).CommandArgument);
            //if (con.State == ConnectionState.Closed)
            //    con.Open();
            //SqlDataAdapter sqlDa = new SqlDataAdapter("usp_listarUsuario", con);
            //sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            //sqlDa.SelectCommand.Parameters.AddWithValue("@idUser", usuarioid);
            //DataTable dtUsuarios = new DataTable();
            //sqlDa.Fill(dtUsuarios);
            //con.Close();
            //HiddenField1.Value = usuarioid.ToString();
            //cboTipoUsuario.Text = dtUsuarios.Rows[0]["TipoUsuario"].ToString();
            //txtNombres.Text = dtUsuarios.Rows[0]["Nombres"].ToString();
            //txtApellidos.Text = dtUsuarios.Rows[0]["Apellidos"].ToString();
            //txtCorreo.Text = dtUsuarios.Rows[0]["Correo"].ToString();
            //txtContra.Text = dtUsuarios.Rows[0]["Contrasena"].ToString();
            //cboComite.SelectedIndex = Convert.ToInt32(dtUsuarios.Rows[0]["ComiteRevision"]);
            //cboActivo.SelectedIndex = Convert.ToInt32(dtUsuarios.Rows[0]["Activo"]);
            //cboComite.Text = dtUsuarios.Rows[0]["ComiteRevision"].ToString();
            //cboActivo.Text = dtUsuarios.Rows[0]["Activo"].ToString();
            //btnAgregar.Text = "Actualizar";
            //btnEliminar.Enabled = true;
        }
    }
}