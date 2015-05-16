using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model.orm
{
    public class TournamentTeam
    {
        public string TeamName { get; set; }
        public string TournamentName {get; set;}

        public TournamentTeam()
        {
            TeamName = string.Empty;
            TournamentName = string.Empty;
        }

        public TournamentTeam(string tournament, string team)
        {
            this.TeamName = team;
            this.TournamentName = tournament;
        }
    }
}
