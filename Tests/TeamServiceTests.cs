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
    /// Descripción resumida de TeamServiceTests
    /// </summary>
    [TestClass]
    public class TeamServiceTests
    {
        public TeamServiceTests()
        {
            teamService = TeamService.getInstance();
        }

        private TeamService teamService;

        [TestMethod]
        public void GetAllTeamsShouldReturnFourTeams()
        {
            List<Team> teams = this.teamService.GetAll();
            Assert.AreEqual(4,teams.Count);
        }

        [TestMethod]
        public void AddTeamShouldAddATeam()
        {
            List<Player> players = new List<Player>();
            players.Add(new Player("test1", "test1", 0));
            players.Add(new Player("test2", "test2", 1));
            int originalTeamCount = teamService.Count();

            Team newTeam = new Team("NewTestTeam", players);
            teamService.Add(newTeam);
            int updatedTeamCount = teamService.Count();

            Assert.AreEqual(updatedTeamCount, (originalTeamCount + 1));

            teamService.RemoveElementById(updatedTeamCount - 1);
        }

        [TestMethod]
        public void AddPlayerShouldAddAPlayerToTheTeam()
        {
            Team team = this.teamService.GetElementById(0);
            int originalPlayerCount = team.Players.Count;

            team.AddPlayer(new Player("test", "test", 0));
            // Revisar que el cambio se vea reflejado en Team Service
            Assert.AreEqual((originalPlayerCount + 1),teamService.GetElementById(0).Players.Count);
        }
    }
}
