using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model.interfaces;

namespace Model.services
{
    public class PlayerService : DataProviderService<Player>
    {
        private static PlayerService firstInstance = null;
        private List<Player> playerList;

        private PlayerService() 
        {
            this.playerList = new List<Player>();

            this.playerList.Add(new Player("Juan","Perez", 18));
            this.playerList.Add(new Player("Elio", "Pez", 20));
            this.playerList.Add(new Player("Steve", "Spilbergo", 35));
        }

        public static PlayerService getInstance()
        {
            if (firstInstance == null)
            {
                firstInstance = new PlayerService();
            }

            return firstInstance;
        }

        public List<Player> GetAll()
        {
            return this.playerList;
        }


        public void Add(Player player)
        {
            this.playerList.Add(player);
        }


        public Player GetElementById(int id)
        {
            return this.playerList[id];
        }

        public void RemoveElementById(int id)
        {
            this.playerList.RemoveAt(id);
        }

        public int Count()
        {
            return this.playerList.Count;
        }
    }
}
