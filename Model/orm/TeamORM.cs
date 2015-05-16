using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model.services;

namespace Model.orm
{
    public class TeamORM
    {
        private TournamentService tournamentService;
        private List<TournamentTeam> tournaments;

        public TeamORM() 
        {
            tournamentService = TournamentService.getInstance();
            tournaments = new List<TournamentTeam>();

            foreach (Tournament tournament in tournamentService.GetAll())
            {
                foreach (Team team in tournament.Teams)
                {
                    tournaments.Add(new TournamentTeam(tournament.Name, team.Name));
                }
            }
        }

        public List<TournamentTeam> GetAll()
        {
            return this.tournaments;
        }

    }
}
