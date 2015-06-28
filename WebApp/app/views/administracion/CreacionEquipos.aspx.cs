using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace WebApp.app.views.administracion
{
    public partial class CreacionEquipos : System.Web.UI.Page
    {
        DataModel.Equipo equipo = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            input_id_equipo.Attributes.Add("type", "number");
        }

        protected void btn_submit_creacion_equipo_Click1(object sender, EventArgs e)
        {
            equipo = new DataModel.Equipo();
            var id = input_id_equipo.Text;
            var nombre = input_nombre_equipo.Value;
            var monto = input_monto.Value;

            equipo.AgregarEquipo(Convert.ToInt32(id), nombre, Convert.ToInt32(monto), Convert.ToInt32(DropDownList1.SelectedValue.ToString()));
            Response.Redirect("CreacionEquipos.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}