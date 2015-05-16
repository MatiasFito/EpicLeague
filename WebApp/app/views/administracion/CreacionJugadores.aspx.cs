using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using Model.services;

namespace WebApp.app.views.administracion
{
    public partial class CreacionJugadores : System.Web.UI.Page
    {
        private TeamService teamService = TeamService.getInstance();

        protected void Page_Load(object sender, EventArgs e)
        {
            List<Team> teams = teamService.GetAll();

            for (int i = 0; i < teams.Count; i++)
            {
                dropdown_equipo.Items.Add(new ListItem(teams[i].Name, i.ToString()));
            }
        }

        protected void btn_submit_creacion_jugador_Click(object sender, EventArgs e)
        {
            string playerName = txtbox_nombre_jugador.Text;
            string playerLastName = txtbox_apellido_jugador.Text;
            int playerAge = Convert.ToInt32(txtbox_edad.Text);

            Player newPlayer = new Player(playerName, playerLastName, playerAge);

            int teamId = Convert.ToInt32(dropdown_equipo.SelectedValue);

            if (teamId >= 0)
            {
                teamService.AddPlayerTo(newPlayer, teamId);
            }
        }
    }
}