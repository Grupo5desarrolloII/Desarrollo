
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace websilabo
{
    public partial class reportes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (var ctx = new websilaboEntities1())
            {
                var consulta = ctx.solicitud.Where(x => x.TipoSolicitud == DropDownList1.SelectedValue)
                    .Select(x => new
                    {
                        x.idSolicitud,
                        x.codigoRemitente,
                        x.FechaRegistro,
                        x.AreaDestino
                    });
                gvDatos.DataSource = consulta.ToList();
                gvDatos.DataBind();
            }
        }

        protected void btnImprimir_Click(object sender, EventArgs e)
        {
            //DGVPrinter printer = new DGVPrinter();
            //printer.Title = "Reportes";
            //printer.SubTitle = string.Format("Fecha: {0}", DateTime.Now.Date.ToString("dd/MM/yyyy"));
            //printer.SubTitleFormatFlags = System.Drawing.StringFormatFlags.LineLimit | System.Drawing.StringFormatFlags.NoClip;
            //printer.PageNumbers = true;
            //printer.PageNumberInHeader = false;
            //printer.PorportionalColumns = true;
            //printer.HeaderCellAlignment = System.Drawing.StringAlignment.Near;
            //printer.Footer = "Universidad Andina del Cusco";
            //printer.FooterSpacing = 15;
            //printer.PrintDataGridView(gvDatos);
        }
    }
}