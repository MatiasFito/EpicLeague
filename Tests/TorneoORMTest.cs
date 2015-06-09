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
    public class TorneoORMTest
    {
        TorneoORM torneoORM;

        public TorneoORMTest()
        {
            torneoORM = new TorneoORM();
        }

        [TestMethod]
        public void ListarTorneosDeberiaListarDosTorneos()
        {
            torneoORM.ListarTorneos();
        }
    }
}
