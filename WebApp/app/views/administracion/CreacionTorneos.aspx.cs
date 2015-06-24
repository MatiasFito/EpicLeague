using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using System.Linq;

namespace WebApp.app.views.administracion
{
    
    public partial class Default : System.Web.UI.Page
    {
        DataModel.Torneo torneo = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_submit_creacion_torneo_Click1(object sender, EventArgs e)
        {
            
            torneo = new DataModel.Torneo();

            torneo.AgregarTorneo(Convert.ToInt32(txtbox_torneo_id.Text),txtbox_torneo_nombre.Text,chk_torneo_esactivo.Checked);
            Response.Redirect("CreacionTorneos.aspx");
        }

    }
}