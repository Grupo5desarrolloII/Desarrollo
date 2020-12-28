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
    public partial class estudiante : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=localhost;Database=websilabo;Integrated Security=True;");
        DataClasses1DataContext db = new DataClasses1DataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            txtEstado.Text = "Disponible";
            txtFechaRegistro.Text = DateTime.UtcNow.ToString("dd-MM-yyyy");
        }
        protected void lnk_OnClick(object sender, EventArgs e)
        {
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
        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            string fname = FileUpload1.FileName;
            string flocation = "PDFs/";
            string pathstring = System.IO.Path.Combine(flocation, fname);
            var st = new solicitud
            {
                asunto = txtAsunto.Text,
                estado = txtEstado.Text,
                codigoRemitente = txtCodigoRemitente.Text,
                nombreDoc = txtNombreArchivo.Text,
                documento = pathstring,
                FechaRegistro = txtFechaRegistro.Text,
                TipoSolicitud = cboTipoSoli.SelectedValue,
                AreaDestino = cboArea.SelectedValue
            };
            db.solicituds.InsertOnSubmit(st);
            db.SubmitChanges();
            FileUpload1.SaveAs(MapPath(pathstring));
            Response.Write("<script language=javascript>alert('Registrado con exito');</script>");

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {

        }
    }
}