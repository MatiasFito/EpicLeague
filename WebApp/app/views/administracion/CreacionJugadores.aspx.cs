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
            
            var id = Convert.ToInt32(IdJugador.Text);
            var nombre = input_nombre_jugador.Value;
            var apellido = input_apellido_jugador.Value;
            var edad = Convert.ToInt32(input_edad.Text);
            var idEquipo = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
            List<int> idsOcupadas = jugador.ObtenerTodosLosId();

            if (idsOcupadas.Contains(id) || id < 0)
            {
                this.ReiniciarCampos();
                return;
            }

            jugador.AgregarJugador(id, nombre, apellido, edad, idEquipo);

            Response.Redirect("CreacionJugadores.aspx");
        }

        private void ReiniciarCampos()
        {
            IdJugador.Text = string.Empty;
            input_nombre_jugador.Value = string.Empty;
            input_apellido_jugador.Value = string.Empty;
            input_edad.Text = string.Empty;
            return;
        }
    }
}