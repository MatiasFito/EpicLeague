using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model.interfaces;

namespace Model.services
{
    public class TeamService : DataProviderService<Team>
    {
        private static TeamService firstInstance = null;
        private List<Team> teamList;

        private TeamService()
        {
            List<Player> players = PlayerService.getInstance().GetAll();
            this.teamList = new List<Team>();

            this.teamList.Add(new Team("Sacachispas",players));
            this.teamList.Add(new Team("Aldosivi", players));
            this.teamList.Add(new Team("Yupanqui", players));
            this.teamList.Add(new Team("Fenix", players));
        }

        public static TeamService getInstance()
        {
            if (firstInstance == null)
            {
                firstInstance = new TeamService();
            }

            return firstInstance;
        }

        public List<Team> GetAll()
        {
            return this.teamList;
        }

        public void Add(Team team)
        {
            this.teamList.Add(team);
        }

        public void AddPlayerTo(Player player, int teamId)
        {
            this.teamList[teamId].AddPlayer(player);
        }

        public Team GetElementById(int id)
        {
            return this.teamList[id];
        }


        public void RemoveElementById(int id)
        {
            this.teamList.RemoveAt(id);
        }

        public int Count()
        {
            return this.teamList.Count;
        }
    }
}
