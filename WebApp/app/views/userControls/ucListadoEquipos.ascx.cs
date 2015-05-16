using Model;
using Model.services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp.app.views.userControls
{
    public partial class ucListadoEquipos : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public Dictionary<Team, Tournament> getData()
        {
            TournamentService tournamentService = TournamentService.getInstance();
            List<Tournament> tournaments = tournamentService.GetAll();
            Dictionary<Team, Tournament> teamTableSource = new Dictionary<Team, Tournament>();

            foreach (Tournament tournament in tournaments)
            {
                foreach (Team team in tournament.Teams)
                {
                    teamTableSource.Add(team, tournament);
                }
            }
            return teamTableSource;
        }
    }
}