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
    public partial class index : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection("Server=tcp:websilabodbserver.database.windows.net,1433;Initial Catalog=websilabo_db;Persist Security Info=False;User ID=lucho;Password=Pastore123-;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        SqlConnection con = new SqlConnection("Server=localhost;Database=websilabo;Integrated Security=True;");

        public void logear(string usuario, string contra)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select Activo, TipoUsuario, ComiteRevision, Nombres, Apellidos, Correo from tusuario where Correo = @user and Contrasena = @pas", con);
                SqlCommand cmds = new SqlCommand("usp_insertareditarusuarioactivo", con);
                cmd.Parameters.AddWithValue("user", usuario);
                cmd.Parameters.AddWithValue("pas", contra);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count == 1)
                {
                    if (dt.Rows[0][0].Equals(true))
                    {
                        if (dt.Rows[0][1].ToString() == "Administrador")
                        {
                            //cmds.CommandType = CommandType.StoredProcedure;
                            //cmds.Parameters.AddWithValue("@TipoUsuario", dt.Rows[0][1].ToString());
                            //cmds.Parameters.AddWithValue("@Nombres", dt.Rows[0][3].ToString());
                            //cmds.Parameters.AddWithValue("@Apellidos", dt.Rows[0][4].ToString());
                            //cmds.Parameters.AddWithValue("@Correo", dt.Rows[0][5].ToString());
                            //cmds.ExecuteNonQuery();
                            Response.Redirect("usuarios.aspx");                       
                        }
                        else if (dt.Rows[0][1].ToString() == "Alumno")
                        {
                            Response.Redirect("estudiante.aspx");
                            //Response.Write("<script language=javascript>alert('Alumno');</script>");

                            //if (dt.Rows[0][2].Equals(true))
                            //{
                            //    cmds.CommandType = CommandType.StoredProcedure;
                            //    cmds.Parameters.AddWithValue("@TipoUsuario", dt.Rows[0][1].ToString());
                            //    cmds.Parameters.AddWithValue("@Nombres", dt.Rows[0][3].ToString());
                            //    cmds.Parameters.AddWithValue("@Apellidos", dt.Rows[0][4].ToString());
                            //    cmds.Parameters.AddWithValue("@Correo", dt.Rows[0][5].ToString());
                            //    cmds.ExecuteNonQuery();
                            //    Response.Redirect("comiterevision.aspx");
                            //}
                            //else
                            //{
                            //    cmds.CommandType = CommandType.StoredProcedure;
                            //    cmds.Parameters.AddWithValue("@TipoUsuario", dt.Rows[0][1].ToString());
                            //    cmds.Parameters.AddWithValue("@Nombres", dt.Rows[0][3].ToString());
                            //    cmds.Parameters.AddWithValue("@Apellidos", dt.Rows[0][4].ToString());
                            //    cmds.Parameters.AddWithValue("@Correo", dt.Rows[0][5].ToString());
                            //    cmds.ExecuteNonQuery();
                            //    Response.Redirect("docente.aspx");
                            //}
                        }

                    }
                    else
                    {
                        Response.Write("<script language=javascript>alert('Usuario Inhabilitado comuniquese con el administrador');</script>");
                    }                   
                }
                else
                {
                    lblMensaje.Text = "No encontrado";
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
        
        void usuarioactivo() { 
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            logear(this.txtUsuario.Text, this.txtPass.Text);
        }
    }
}