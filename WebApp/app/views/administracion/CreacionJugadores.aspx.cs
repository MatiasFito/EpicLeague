using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace WebApp.app.views.administracion
{
    public partial class CreacionJugadores : System.Web.UI.Page
    {
        DataModel.Jugador jugador = null;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            input_edad.Attributes.Add("type", "number");
            IdJugador.Attributes.Add("type", "number");
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           

        }

        protected void btn_submit_creacion_jugador_Click1(object sender, EventArgs e)
        {
            jugador = new DataModel.Jugador();
            
            var id = IdJugador.Text;
            var nombre = input_nombre_jugador.Value;
            var apellido = input_apellido_jugador.Value;
            var edad = input_edad.Text;

            jugador.AgregarJugador(Convert.ToInt32(id), nombre, apellido, Convert.ToInt32(edad), Convert.ToInt32(DropDownList1.SelectedValue.ToString()));

            Response.Redirect("CreacionJugador.aspx");
        }

      
    }
}