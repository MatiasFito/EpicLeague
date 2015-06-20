using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using DataModel;

namespace Tests
{
    [TestClass]
    public class EquipoTest
    {
        Equipo equipo;

        public EquipoTest()
        {
            equipo = new Equipo();
        }

        [TestMethod]
        public void ListarEquiposDeTorneosActivosDeberiaListarCuatroEquipos()
        {
            List<Equipo> equipos = equipo.ListarEquipos(false);
            Assert.AreEqual(4, equipos.Count);
        }

        [TestMethod]
        public void ListarEquiposDeTorneosActivosEInactivosDeberiaListarCincoEquipos()
        {
            List<Equipo> equipos = equipo.ListarEquipos(true);
            Assert.AreEqual(5, equipos.Count);
        }

        [TestMethod]
        public void AgregarEquipoDeberiaAgregarUnEquipo()
        {
            int cantidadDeEquiposAntesDeAgregarUno = equipo.CantidadDeEquipos;
            Equipo equipoAgregado = equipo.AgregarEquipo("Equipo Prueba", 20, 2);
            Assert.AreEqual(cantidadDeEquiposAntesDeAgregarUno + 1, equipo.CantidadDeEquipos);
            equipo.EliminarEquipo(equipoAgregado.Id);
        }

        [TestMethod]
        public void ActualizarEquipoDeberiaActualizarUnEquipo()
        {
            int resultado = equipo.ActualizarEquipo(4, "Actualizado", 50, 2);
            Assert.AreEqual(1, resultado);
        }
    }
}
