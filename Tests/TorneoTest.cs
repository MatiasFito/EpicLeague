﻿using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using DataModel;

namespace Tests
{
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
            int cantidadDeTorneosAntesDeAgregarUno = torneo.CantidadDeTorneos();
            Torneo torneoCreado = torneo.AgregarTorneo(cantidadDeTorneosAntesDeAgregarUno, "Prueba", false);
            Assert.AreEqual(cantidadDeTorneosAntesDeAgregarUno + 1, torneo.CantidadDeTorneos());
            torneo.EliminarTorneo(torneoCreado.Id);
        }

        [TestMethod]
        public void ActualizarTorneoDeberiaActualizarUnTorneo()
        {
            int resultado = torneo.ActualizarTorneo(2, "Actualizado", false);
            Assert.AreEqual(1, resultado);
        }
    }
}
