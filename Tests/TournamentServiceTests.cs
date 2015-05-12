using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Model;
using Model.services;

namespace Tests
{
    [TestClass]
    public class TournamentServiceTests
    {
        TournamentService tournamentService;

        public TournamentServiceTests()
        {
            this.tournamentService = TournamentService.getInstance();
        }

        [TestMethod]
        public void GetAllTournamentsShouldReturnTwoTournaments()
        {
            List<Tournament> tournaments = this.tournamentService.GetAll();
            int tournamentCount = tournaments.Count();

            Assert.AreEqual(2, tournamentCount);
        }

        [TestMethod]
        public void CountShouldCountTwoTournaments()
        {
            Assert.AreEqual(2, this.tournamentService.Count());
        }

        [TestMethod]
        public void AddTournamentShouldAddATournament()
        {
            int originalTournamentCount = this.tournamentService.Count();
            Tournament newTournament = new Tournament("Test Tournament", new List<Team>(), true);

            this.tournamentService.Add(newTournament);

            Assert.AreEqual((originalTournamentCount + 1), this.tournamentService.Count());

            this.tournamentService.RemoveElementById(originalTournamentCount);
        }
    }
}
