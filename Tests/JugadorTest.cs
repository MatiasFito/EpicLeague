using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using DataModel;

namespace Tests
{
    [TestClass]
    public class JugadorTest
    {
        private Jugador jugador;

        public JugadorTest()
        {
            jugador = new Jugador();
        }

        [TestMethod]
        public void DevolverTodosLosJugadoresDeberiaDevolverOchoJugadores()
        {
            List<Jugador> jugadores = jugador.ListarTodosLosJugadores();
            Assert.AreEqual(8, jugadores.Count);
        }

        [TestMethod]
        public void AgregarJugadorDeberiaAgregarUnJugador()
        {
            int cantidadDeJugadorsAntesDeAgregarUno = jugador.CantidadDeJugadores;
            Jugador jugadorCreado = jugador.AgregarJugador("nombre", "apellido", 20, 0);
            Assert.AreEqual(cantidadDeJugadorsAntesDeAgregarUno + 1, jugador.CantidadDeJugadores);
            jugador.EliminarJugador(jugadorCreado.Id);
        }
    }
}
