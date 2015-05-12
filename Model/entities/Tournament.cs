using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class Tournament
    {
        public string Name { get; set; }
        private List<Team> teams;
        private bool active;

        public List<Team> Teams 
        {
            get
            {
                return this.teams;
            }
        }

        public Tournament ()
        {
            Name = string.Empty;
            this.teams = new List<Team>();
            this.active = false;
        }

        public Tournament(string name, List<Team> teams, bool active)
        {
            Name = name;
            this.teams = teams;
            this.active = active;
        }

        public void AddTeam(Team team)
        {
            this.teams.Add(team);
        }

        public bool IsActive()
        {
            return (active == true);
        }
    }
}
