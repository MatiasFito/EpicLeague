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
    public partial class Default : System.Web.UI.Page
    {
        private TournamentService tournamentService = TournamentService.getInstance();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_creacion_torneo_Click(object sender, EventArgs e)
        {
            string tournamentName = txtbox_nombre_torneo.Text;
            bool tournamentStatus = chkbox_estado_torneo.Checked;

            Tournament newTournament = new Tournament(tournamentName,tournamentStatus);

            this.tournamentService.Add(newTournament);
        }
    }
}