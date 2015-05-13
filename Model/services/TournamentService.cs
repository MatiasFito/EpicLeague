using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model.interfaces;

namespace Model.services
{
    public class TournamentService : DataProviderService<Tournament>
    {
        private static TournamentService firstInstance = null;
        private List<Tournament> tournamentList;

        private TournamentService()
        {
            // Se generan dos torneos arbitrariamente para que haya datos iniciales.
            this.tournamentList = new List<Tournament>();

            // Creacion de los equipos del torneo por defecto
            TeamService teamService = TeamService.getInstance();

            // Equipos del torneo 1, son los primeros dos equipos de la lista de equipos pre armada
            List<Team> teamsTournamentOne = new List<Team>();
            teamsTournamentOne.Add(teamService.GetElementById(0));
            teamsTournamentOne.Add(teamService.GetElementById(1));

            // Equipos del torneo 2, son el tercero y cuarto equipo de la lista pre armada de (constructor de TeamService)
            List<Team> teamsTournamentTwo = new List<Team>();
            teamsTournamentTwo.Add(teamService.GetElementById(2));
            teamsTournamentTwo.Add(teamService.GetElementById(3));

            // Ahora que tenemos dos listas de equipos, podemos crear los dos torneos.
            Tournament tournamentOne = new Tournament("Torneo Apertura", teamsTournamentOne, true);
            Tournament tournamentTwo = new Tournament("Torneo Clausura", teamsTournamentTwo, true);

            // Y finalmente agregarlos a la lista de torneos que se encuentran disponibles en el servicio
            this.tournamentList.Add(tournamentOne);
            this.tournamentList.Add(tournamentTwo);
        }

        public static TournamentService getInstance()
        {
            if (firstInstance == null)
            {
                firstInstance = new TournamentService();
            }

            return firstInstance;
        }

        public List<Tournament> GetAll()
        {
            return this.tournamentList;
        }
        
        public void Add(Tournament tournament)
        {
            this.tournamentList.Add(tournament);
        }

        public void AddTeamAt(Team team, int id)
        {
            this.tournamentList[id].AddTeam(team);
        }

        public Tournament GetElementById(int id)
        {
            return this.tournamentList[id];
        }
        
        public void RemoveElementById(int id)
        {
            this.tournamentList.RemoveAt(id);
        }

        public int Count()
        {
            return this.tournamentList.Count;
        }
    }
}
