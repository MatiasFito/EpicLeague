using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataModel
{
    public partial class Jugador
    {
        private EpicLeagueEntities entidades = null;
        public EpicLeagueEntities Entidades
        {
            get
            {
                if (entidades == null)
                {
                    entidades = new EpicLeagueEntities();
                }
                return entidades;
            }
        }

        public int CantidadDeJugadores
        {
            get
            {
                return this.ListarTodosLosJugadores().Count;
            }
        }

        public List<Jugador> ListarTodosLosJugadores()
        {
            var jugadores = from j in Entidades.Jugador
                            select j;
            return jugadores.ToList<Jugador>();
        }

        public Jugador AgregarJugador(string nombre, string apellido, int edad, int idEquipo)
        {
            Jugador jugador = new Jugador();
            jugador.Id = this.CantidadDeJugadores;
            jugador.Nombre = nombre;
            jugador.Apellido = apellido;
            jugador.Edad = edad;
            jugador.IdEquipo = idEquipo;

            Entidades.Jugador.AddObject(jugador);
            Entidades.SaveChanges();
            return jugador;
        }

        public int EliminarJugador(int IdJugador)
        {
            int resultado = 0;
            System.Data.EntityKey key = new System.Data.EntityKey("EpicLeagueEntities.Jugador", "Id", IdJugador);
            object jugadorParaEliminar;
            if (Entidades.TryGetObjectByKey(key, out jugadorParaEliminar))
            {
                Entidades.DeleteObject(jugadorParaEliminar);
                resultado = Entidades.SaveChanges();
            }
            return resultado;
        }
    }
}
