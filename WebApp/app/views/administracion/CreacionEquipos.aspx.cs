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
    public partial class CreacionEquipos : System.Web.UI.Page
    {
        TournamentService tournamentService = TournamentService.getInstance();
        TeamService teamService = TeamService.getInstance();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Tournament> tournaments = tournamentService.GetAll();

                for (int i = 0; i < tournaments.Count; i++)
                {
                    dropdown_torneo.Items.Add(new ListItem(tournaments[i].Name, i.ToString()));
                }
            }
        }

        protected void btn_submit_creacion_equipo_Click(object sender, EventArgs e)
        {
            string teamName = txtbox_nombre_equipo.Text;
            Team newTeam = new Team(teamName);
            teamService.Add(newTeam);

            if (dropdown_torneo.SelectedValue != string.Empty)
            {
                int tournamentId = Convert.ToInt32(dropdown_torneo.SelectedValue);
                tournamentService.AddTeamAt(newTeam, tournamentId);                
            }
        }
    }
}