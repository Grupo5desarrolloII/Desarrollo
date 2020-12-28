using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace websilabo
{
    public partial class estado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (var ctx = new websilaboEntities1())
            {
                var consulta = ctx.solicitud.Where(x => x.estado == DropDownList1.SelectedValue)
                    .Select(x => new
                    {
                        x.idSolicitud,
                        x.estado,
                        x.codigoRemitente,
                        x.FechaRegistro,
                        x.AreaDestino
                    });
                gvDatos.DataSource = consulta.ToList();
                gvDatos.DataBind();
            }
        }
    }
}