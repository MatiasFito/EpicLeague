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
            txtbox_torneo_id.Attributes.Add("type", "number");
        }

        protected void btn_submit_creacion_torneo_Click1(object sender, EventArgs e)
        {
            
            torneo = new DataModel.Torneo();

            int idTorneo = Convert.ToInt32(txtbox_torneo_id.Value);
            string nombreTorneo = txtbox_torneo_nombre.Value;
            bool estadoTorneo = chk_torneo_esactivo.Checked;
            List<int> idsExistentes = torneo.ObtenerTodosLosId();

            if (idsExistentes.Contains(idTorneo) || idTorneo < 0)
            {
                this.ReiniciarCampos();
                return;
            }

            torneo.AgregarTorneo(idTorneo,nombreTorneo,estadoTorneo);
            Response.Redirect("CreacionTorneos.aspx");
        }

        private void ReiniciarCampos() 
        {
            txtbox_torneo_id.Value = string.Empty;
            txtbox_torneo_nombre.Value = string.Empty;
            chk_torneo_esactivo.Checked = false;
        }
    }
}