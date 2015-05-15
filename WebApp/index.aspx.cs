using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp.app.views
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_resumen_equipos_Click(object sender, EventArgs e)
        {
            Response.Redirect("/app/views/resumen/Default.aspx");
        }

        protected void btn_administracion_equipos_Click(object sender, EventArgs e)
        {
            Response.Redirect("/app/views/administracion/CreacionTorneos.aspx");
        }
    }
}