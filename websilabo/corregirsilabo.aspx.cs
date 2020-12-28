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
    public partial class corregirsilabo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=tcp:websilabodbserver.database.windows.net,1433;Initial Catalog=websilabo_db;Persist Security Info=False;User ID=lucho;Password=Pastore123-;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void listarDatos()
        {
            try
            {
                //int usuarioid = Convert.ToInt32((sender as LinkButton).CommandArgument);
                int idSilabo = Convert.ToInt32(DropDownList1.SelectedItem.Text);
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("usp_listarSilaboID", con);
                sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
                sqlDa.SelectCommand.Parameters.AddWithValue("@idSilabo", idSilabo);
                DataTable dtSilabo = new DataTable();
                sqlDa.Fill(dtSilabo);
                con.Close();
                HiddenField1.Value = idSilabo.ToString();
                Label1.Text = dtSilabo.Rows[0]["Facultad"].ToString();
                Label2.Text = dtSilabo.Rows[0]["Asignatura"].ToString();
                Label3.Text = dtSilabo.Rows[0]["EscuelaProfesional"].ToString();
                Label4.Text = dtSilabo.Rows[0]["PlanEstudios"].ToString();
                Label5.Text = dtSilabo.Rows[0]["SemestreAcademico"].ToString();
                Label6.Text = dtSilabo.Rows[0]["CiclodeEstudios"].ToString();
                Label7.Text = dtSilabo.Rows[0]["AreaCurricular"].ToString();
                Label8.Text = dtSilabo.Rows[0]["CodigodeAsignatura"].ToString();
                Label9.Text = dtSilabo.Rows[0]["NumeroCreditos"].ToString();
                Label10.Text = dtSilabo.Rows[0]["PreRequisitos"].ToString();
                Label11.Text = dtSilabo.Rows[0]["NumeroHorasPractica"].ToString();
                Label12.Text = dtSilabo.Rows[0]["Modalidad"].ToString();
                Label13.Text = dtSilabo.Rows[0]["DuracionSemanal"].ToString();
                Label14.Text = dtSilabo.Rows[0]["NumAula"].ToString();
                Label15.Text = dtSilabo.Rows[0]["Horario"].ToString();
                Label16.Text = dtSilabo.Rows[0]["Grupo"].ToString();
                Label17.Text = dtSilabo.Rows[0]["Grupo"].ToString();
                Label18.Text = dtSilabo.Rows[0]["DocenteResponsable"].ToString();
                Label19.Text = dtSilabo.Rows[0]["ObjetivosEducacionales"].ToString();
                Label20.Text = dtSilabo.Rows[0]["ResultadosEstudiante"].ToString();
                Label21.Text = dtSilabo.Rows[0]["IndicadoresDesempeno"].ToString();
                Label22.Text = dtSilabo.Rows[0]["Sumilla"].ToString();
                Label23.Text = dtSilabo.Rows[0]["ValoresProfesionales"].ToString();
                Label24.Text = dtSilabo.Rows[0]["pCompetencias1"].ToString();
                Label25.Text = dtSilabo.Rows[0]["pCompetencias2"].ToString();
                Label26.Text = dtSilabo.Rows[0]["pCompetencias3"].ToString();
                Label27.Text = dtSilabo.Rows[0]["pDesempeno1"].ToString();
                Label28.Text = dtSilabo.Rows[0]["pDesempeno2"].ToString();
                Label29.Text = dtSilabo.Rows[0]["pDesempeno3"].ToString();
                Label30.Text = dtSilabo.Rows[0]["pDesempeno4"].ToString();
                Label31.Text = dtSilabo.Rows[0]["pResultado1"].ToString();
                Label32.Text = dtSilabo.Rows[0]["pResultado2"].ToString();
                Label33.Text = dtSilabo.Rows[0]["pResultado3"].ToString();
                Label34.Text = dtSilabo.Rows[0]["pResultado4"].ToString();
                Label35.Text = dtSilabo.Rows[0]["uni1Conte11"].ToString();
                Label36.Text = dtSilabo.Rows[0]["uni1Conte111"].ToString();
                Label37.Text = dtSilabo.Rows[0]["uni1Acti1"].ToString();
                Label38.Text = dtSilabo.Rows[0]["uni1Duracion1"].ToString();
                Label39.Text = dtSilabo.Rows[0]["uni1Conte12"].ToString();
                Label40.Text = dtSilabo.Rows[0]["uni1Conte112"].ToString();
                Label41.Text = dtSilabo.Rows[0]["uni1Acti2"].ToString();
                Label42.Text = dtSilabo.Rows[0]["uni1Duracion2"].ToString();
                Label43.Text = dtSilabo.Rows[0]["uni1Conte13"].ToString();
                Label44.Text = dtSilabo.Rows[0]["uni1Conte131"].ToString();
                Label45.Text = dtSilabo.Rows[0]["uni1Conte132"].ToString();
                Label46.Text = dtSilabo.Rows[0]["uni1Conte133"].ToString();
                Label47.Text = dtSilabo.Rows[0]["uni1Acti31"].ToString();
                Label48.Text = dtSilabo.Rows[0]["uni1Duracion3"].ToString();
                Label49.Text = dtSilabo.Rows[0]["uni1Conte115"].ToString();
                Label50.Text = dtSilabo.Rows[0]["uni1Requi1"].ToString();
                Label51.Text = dtSilabo.Rows[0]["uni1Acti4"].ToString();
                Label52.Text = dtSilabo.Rows[0]["uni1Duracion4"].ToString();
                Label53.Text = dtSilabo.Rows[0]["uni1Biblio"].ToString();
                Label54.Text = dtSilabo.Rows[0]["uni1Fecha1"].ToString();
                Label55.Text = dtSilabo.Rows[0]["uni2Conte11"].ToString();
                Label56.Text = dtSilabo.Rows[0]["uni2Conte111"].ToString();
                Label57.Text = dtSilabo.Rows[0]["uni2Conte112"].ToString();
                Label58.Text = dtSilabo.Rows[0]["uni2Conte113"].ToString();
                Label59.Text = dtSilabo.Rows[0]["uni2Conte114"].ToString();
                Label60.Text = dtSilabo.Rows[0]["uni2Acti1"].ToString();
                Label61.Text = dtSilabo.Rows[0]["uni2Duracion1"].ToString();
                Label62.Text = dtSilabo.Rows[0]["uni2Conte22"].ToString();
                Label63.Text = dtSilabo.Rows[0]["uni2Conte221"].ToString();
                Label64.Text = dtSilabo.Rows[0]["uni2Conte222"].ToString();
                Label65.Text = dtSilabo.Rows[0]["uni2Conte223"].ToString();
                Label66.Text = dtSilabo.Rows[0]["uni2Acti2"].ToString();
                Label67.Text = dtSilabo.Rows[0]["uni2Duracion2"].ToString();
                Label68.Text = dtSilabo.Rows[0]["uni2Conte23"].ToString();
                Label69.Text = dtSilabo.Rows[0]["uni2Conte231"].ToString();
                Label70.Text = dtSilabo.Rows[0]["uni2Conte232"].ToString();
                Label71.Text = dtSilabo.Rows[0]["uni2Conte233"].ToString();
                Label72.Text = dtSilabo.Rows[0]["uni2Acti31"].ToString();
                Label73.Text = dtSilabo.Rows[0]["uni2Duracion3"].ToString();
                Label74.Text = dtSilabo.Rows[0]["uni2Conte24"].ToString();
                Label75.Text = dtSilabo.Rows[0]["uni2Requi1"].ToString();
                Label76.Text = dtSilabo.Rows[0]["uni2Acti4"].ToString();
                Label77.Text = dtSilabo.Rows[0]["uni2Duracion4"].ToString();
                Label78.Text = dtSilabo.Rows[0]["uni2Biblio"].ToString();
                Label79.Text = dtSilabo.Rows[0]["uni2Fecha1"].ToString();
                Label80.Text = dtSilabo.Rows[0]["uni3Conte31"].ToString();
                Label81.Text = dtSilabo.Rows[0]["uni3Conte311"].ToString();
                Label82.Text = dtSilabo.Rows[0]["uni3Conte312"].ToString();
                Label83.Text = dtSilabo.Rows[0]["uni3Conte313"].ToString();
                Label84.Text = dtSilabo.Rows[0]["uni3Acti1"].ToString();
                Label85.Text = dtSilabo.Rows[0]["uni3Duracion1"].ToString();
                Label86.Text = dtSilabo.Rows[0]["uni3Conte32"].ToString();
                Label87.Text = dtSilabo.Rows[0]["uni3Conte321"].ToString();
                Label88.Text = dtSilabo.Rows[0]["uni3Conte322"].ToString();
                Label89.Text = dtSilabo.Rows[0]["uni3Conte323"].ToString();
                Label90.Text = dtSilabo.Rows[0]["uni3Acti2"].ToString();
                Label91.Text = dtSilabo.Rows[0]["uni3Duracion2"].ToString();
                Label92.Text = dtSilabo.Rows[0]["uni3Conte33"].ToString();
                Label93.Text = dtSilabo.Rows[0]["uni3Conte331"].ToString();
                Label94.Text = dtSilabo.Rows[0]["uni3Conte332"].ToString();
                Label95.Text = dtSilabo.Rows[0]["uni3Conte333"].ToString();
                Label96.Text = dtSilabo.Rows[0]["uni3Conte334"].ToString();
                Label97.Text = dtSilabo.Rows[0]["uni3Acti31"].ToString();
                Label98.Text = dtSilabo.Rows[0]["uni32Duracion3"].ToString();
                Label99.Text = dtSilabo.Rows[0]["uni3Conte34"].ToString();
                Label100.Text = dtSilabo.Rows[0]["uni3Requi1"].ToString();
                Label101.Text = dtSilabo.Rows[0]["uni3Acti4"].ToString();
                Label102.Text = dtSilabo.Rows[0]["uni3Duracion4"].ToString();
                Label103.Text = dtSilabo.Rows[0]["uni3Biblio"].ToString();
                Label104.Text = dtSilabo.Rows[0]["uni3Fecha1"].ToString();
                Label107.Text = dtSilabo.Rows[0]["EstrategiasDidacticas"].ToString();
                Label108.Text = dtSilabo.Rows[0]["RecursosMateriales"].ToString();
                Label109.Text = dtSilabo.Rows[0]["uni1Result"].ToString();
                Label110.Text = dtSilabo.Rows[0]["uni1Eval"].ToString();
                Label111.Text = dtSilabo.Rows[0]["uni1Peso1"].ToString();
                Label112.Text = dtSilabo.Rows[0]["uni1UniAprendizaje"].ToString();
                Label113.Text = dtSilabo.Rows[0]["uni1UniActi"].ToString();
                Label114.Text = dtSilabo.Rows[0]["uni1PesoIF"].ToString();
                Label115.Text = dtSilabo.Rows[0]["uni2Result"].ToString();
                Label116.Text = dtSilabo.Rows[0]["uni2Eval"].ToString();
                Label117.Text = dtSilabo.Rows[0]["uni2Peso1"].ToString();
                Label118.Text = dtSilabo.Rows[0]["uni2UniAprendizaje"].ToString();
                Label119.Text = dtSilabo.Rows[0]["uni2Eval2"].ToString();
                Label120.Text = dtSilabo.Rows[0]["uni2PesoIF"].ToString();
                Label121.Text = dtSilabo.Rows[0]["uni2UniAprendizaje2"].ToString();
                Label122.Text = dtSilabo.Rows[0]["uni2UniActi2"].ToString();
                Label123.Text = dtSilabo.Rows[0]["uni2PesoRS"].ToString();
                Label124.Text = dtSilabo.Rows[0]["uni3Result"].ToString();
                Label125.Text = dtSilabo.Rows[0]["uni3Eval"].ToString();
                Label126.Text = dtSilabo.Rows[0]["uni3Peso1"].ToString();
                Label127.Text = dtSilabo.Rows[0]["uni3UniAprendizaje"].ToString();
                Label128.Text = dtSilabo.Rows[0]["uni3Eval2"].ToString();
                Label129.Text = dtSilabo.Rows[0]["uni3PesoIF"].ToString();
                Label130.Text = dtSilabo.Rows[0]["uni3UniAprendizaje2"].ToString();
                Label131.Text = dtSilabo.Rows[0]["uni3UniActi2"].ToString();
                Label132.Text = dtSilabo.Rows[0]["uni3PesoRS"].ToString();
                Label133.Text = dtSilabo.Rows[0]["ReferenciaBibliografica"].ToString();
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
        void insertarDatos()
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlCommand cmd = new SqlCommand("usp_insertarobservacion2", con);
                cmd.CommandType = CommandType.StoredProcedure;
               // cmd.Parameters.AddWithValue("@idObservaciones", (DropDownList1.SelectedItem.Text == "" ? 0 : Convert.ToInt32(HiddenField1.Value)));
                cmd.Parameters.AddWithValue("@Facultad", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Asignatura", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@EscuelaProfesional", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@PlanEstudios", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@SemestreAcademico", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@CiclodeEstudios", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@AreaCurricular", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@CodigodeAsignatura", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@NumeroCreditos", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@PreRequisitos", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@NumeroHorasPractica", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@Modalidad", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@DuracionSemanal", TextBox13.Text.Trim());
                cmd.Parameters.AddWithValue("@NumAula", TextBox14.Text.Trim());
                cmd.Parameters.AddWithValue("@Horario", TextBox15.Text.Trim());
                cmd.Parameters.AddWithValue("@Grupo", TextBox16.Text.Trim());
                cmd.Parameters.AddWithValue("@DuracionSemestre", TextBox17.Text.Trim());
                cmd.Parameters.AddWithValue("@DocenteResponsable", TextBox18.Text.Trim());
                cmd.Parameters.AddWithValue("@ObjetivosEducacionales", TextBox19.Text.Trim());
                cmd.Parameters.AddWithValue("@ResultadosEstudiante", TextBox20.Text.Trim());
                cmd.Parameters.AddWithValue("@IndicadoresDesempeno", TextBox21.Text.Trim());
                cmd.Parameters.AddWithValue("@Sumilla", TextBox22.Text.Trim());
                cmd.Parameters.AddWithValue("@ValoresProfesionales", TextBox23.Text.Trim());
                cmd.Parameters.AddWithValue("@pCompetencias1", TextBox24.Text.Trim());
                cmd.Parameters.AddWithValue("@pCompetencias2", TextBox25.Text.Trim());
                cmd.Parameters.AddWithValue("@pCompetencias3", TextBox26.Text.Trim());
                cmd.Parameters.AddWithValue("@pDesempeno1", TextBox27.Text.Trim());
                cmd.Parameters.AddWithValue("@pDesempeno2", TextBox28.Text.Trim());
                cmd.Parameters.AddWithValue("@pDesempeno3", TextBox29.Text.Trim());
                cmd.Parameters.AddWithValue("@pDesempeno4", TextBox30.Text.Trim());
                cmd.Parameters.AddWithValue("@pResultado1", TextBox31.Text.Trim());
                cmd.Parameters.AddWithValue("@pResultado2", TextBox32.Text.Trim());
                cmd.Parameters.AddWithValue("@pResultado3", TextBox33.Text.Trim());
                cmd.Parameters.AddWithValue("@pResultado4", TextBox34.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Conte11", TextBox35.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Conte111", TextBox36.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Acti1", TextBox37.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Duracion1", TextBox38.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Conte12", TextBox39.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Conte112", TextBox40.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Acti2", TextBox41.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Duracion2", TextBox42.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Conte13", TextBox43.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Conte131", TextBox44.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Conte132", TextBox45.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Conte133", TextBox46.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Acti31", TextBox47.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Duracion3", TextBox48.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni1Conte115", TextBox49.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Requi1", TextBox50.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Acti4", TextBox51.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Duracion4", TextBox52.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni1Biblio", TextBox53.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Fecha1", TextBox54.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte11", TextBox55.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte111", TextBox56.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte112", TextBox57.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte113", TextBox58.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte114", TextBox59.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Acti1", TextBox60.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Duracion1", TextBox61.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni2Conte22", TextBox62.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte221", TextBox63.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte222", TextBox64.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte223", TextBox65.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Acti2", TextBox66.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Duracion2", TextBox67.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni2Conte23", TextBox68.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte231", TextBox69.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte232", TextBox70.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Conte233", TextBox71.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Acti31", TextBox72.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Duracion3", TextBox73.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni2Conte24", TextBox74.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Requi1", TextBox75.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Acti4", TextBox76.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Duracion4", TextBox77.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni2Biblio", TextBox78.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Fecha1", TextBox79.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte31", TextBox80.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte311", TextBox81.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte312", TextBox82.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte313", TextBox83.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Acti1", TextBox84.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Duracion1", TextBox85.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni3Conte32", TextBox86.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte321", TextBox87.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte322", TextBox88.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte323", TextBox89.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Acti2", TextBox90.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Duracion2", TextBox91.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte33", TextBox92.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte331", TextBox93.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte332", TextBox94.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte333", TextBox95.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Conte334", TextBox96.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Acti31", TextBox97.Text.Trim());
                cmd.Parameters.AddWithValue("@uni32Duracion3", TextBox98.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni3Conte34", TextBox100.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Requi1", TextBox101.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Acti4", TextBox102.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Duracion4", TextBox103.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni3Biblio", TextBox104.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Fecha1", TextBox105.Text.Trim());
                cmd.Parameters.AddWithValue("@EstrategiasDidacticas", TextBox107.Text.Trim());
                cmd.Parameters.AddWithValue("@RecursosMateriales", TextBox108.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Result", TextBox109.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Eval", TextBox110.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1Peso1", TextBox111.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni1UniAprendizaje", TextBox112.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1UniActi", TextBox113.Text.Trim());
                cmd.Parameters.AddWithValue("@uni1PesoIF", TextBox114.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni2Result", TextBox115.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Eval", TextBox116.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Peso1", TextBox117.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni2UniAprendizaje", TextBox118.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2Eval2", TextBox119.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2PesoIF", TextBox120.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni2UniAprendizaje2", TextBox121.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2UniActi2", TextBox122.Text.Trim());
                cmd.Parameters.AddWithValue("@uni2PesoRS", TextBox123.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni3Result", TextBox124.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Eval", TextBox125.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Peso1", TextBox126.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni3UniAprendizaje", TextBox127.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3Eval2", TextBox128.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3PesoIF", TextBox129.Text.Trim());//
                cmd.Parameters.AddWithValue("@uni3UniAprendizaje2", TextBox130.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3UniActi2", TextBox131.Text.Trim());
                cmd.Parameters.AddWithValue("@uni3PesoRS", TextBox132.Text.Trim());//
                cmd.Parameters.AddWithValue("@ReferenciaBibliografica", TextBox133.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                string usuarioID = DropDownList1.SelectedItem.Text;
                if (usuarioID == "")
                {
                    //Response.Write("<scr" + "ipt language=javascript>alert('Exito');</" + "script>");
                    //if (con.State == ConnectionState.Closed)
                    //    con.Open();
                    //SqlCommand cmd2 = new SqlCommand("usp_insertaractualizarcorrecionsilabo", con);
                    //cmd2.CommandType = CommandType.StoredProcedure;
                    //cmd2.Parameters.AddWithValue("@idUser", (HiddenField1.Value == "" ? 0 : Convert.ToInt32(HiddenField1.Value)));
                    //cmd2.Parameters.AddWithValue("@Tipo", cboTipoUsuario.Text.Trim());
                    //cmd2.ExecuteNonQuery();
                    //con.Close();
                    Response.Write("<script language=javascript>alert('Exito');</script>");
                    //lblMensaje.Text = "Exitoso";

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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            listarDatos();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            insertarDatos();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {

        }
    }
}