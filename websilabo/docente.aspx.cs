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
    public partial class docente : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=tcp:websilabodbserver.database.windows.net,1433;Initial Catalog=websilabo_db;Persist Security Info=False;User ID=lucho;Password=Pastore123-;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

        protected void Page_Load(object sender, EventArgs e)
        {
            cargar();
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
                lblUser.Text = dt.Rows[0][1].ToString()+" "+ dt.Rows[0][2].ToString();
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
    }
}