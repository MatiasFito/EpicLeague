using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Model.services;
using Model;

namespace Tests
{
    /// <summary>
    /// Probar servicio de jugadores
    /// </summary>
    [TestClass]
    public class PlayerServiceTests
    {
        public PlayerServiceTests()
        {
            playerService = PlayerService.getInstance();
        }

        private PlayerService playerService;

        [TestMethod]
        public void GetAllPlayersShouldReturnThreePlayers()
        {
            List<Player> players = this.playerService.GetAll();
            Assert.AreEqual(3,players.Count);
        }

        [TestMethod]
        public void AddPlayerShouldAddAPlayer()
        {
            int originalPlayerCount = this.playerService.Count();
            
            this.playerService.Add(new Player("Sarasa", "Sasara", 20));
            int updatedTeamCount = this.playerService.Count();

            Assert.AreEqual(updatedTeamCount, (originalPlayerCount + 1));

            this.playerService.RemoveElementById(updatedTeamCount - 1);
        }
    }
}
