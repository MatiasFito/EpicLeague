using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class Team
    {
        public string Name { get; set; }
        public List<Player> Players { get; set; }

        public Team ()
        {
            Name = string.Empty;
            Players = new List<Player>();
        }

        public Team(string name) 
        {
            this.Name = name;
            Players = new List<Player>();
        }

        public Team(string name, List<Player> players)
        {
            Name = name;
            Players = players;
        }
        
        public void AddPlayer(Player player)
        {
            Players.Add(player);
        }
    }
}
