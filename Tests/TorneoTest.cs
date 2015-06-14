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
            List<Torneo> torneos = torneo.ListarTodosLosTorneos();
            Assert.AreEqual(2, torneos.Count);
        }

        [TestMethod]
        public void BuscarTorneoClausuraDeberiaDevolverElTorneoClausura()
        {
            List<Torneo> torneos = torneo.BuscarTorneoPorNombre("Clausura");
            Assert.IsTrue("Torneo Clausura" == torneos[0].Nombre);
        }

        [TestMethod]
        public void AgregarTorneoDeberiaAgregarUnTorneo()
        {
            int cantidadDeTorneosAntesDeAgregarUno = torneo.CantidadDeTorneos;
            torneo.AgregarTorneo("Prueba", true);
            Assert.AreEqual(cantidadDeTorneosAntesDeAgregarUno + 1, torneo.CantidadDeTorneos);
        }

        [TestMethod]
        public void EliminarTorneoDeberiaEliminarUnTorneo()
        {
            int cantidadDeTorneosAntesDeEliminarUno = torneo.CantidadDeTorneos;
            int IdTorneoAEliminar = torneo.CantidadDeTorneos - 1;
            torneo.EliminarTorneo(IdTorneoAEliminar);
            Assert.AreEqual(cantidadDeTorneosAntesDeEliminarUno - 1, torneo.CantidadDeTorneos);
        }

    }
}
