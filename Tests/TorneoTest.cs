using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using DataModel;

namespace Tests
{
    /// <summary>
    /// Descripción resumida de TorneoORMTest
    /// </summary>
    [TestClass]
    public class TorneoTest
    {
        Torneo torneo;

        public TorneoTest()
        {
            torneo = new Torneo();
        }

        [TestMethod]
        public void ListarTorneosDeberiaListarDosTorneos()
        {
            torneo.ListarTodosLosTorneos();
        }
    }
}
