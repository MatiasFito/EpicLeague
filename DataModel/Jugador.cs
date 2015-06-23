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

        public Jugador AgregarJugador(int id, string nombre, string apellido, int edad, int idEquipo)
        {
            Jugador jugador = new Jugador();
            jugador.Id = id;
            jugador.Nombre = nombre;
            jugador.Apellido = apellido;
            jugador.Edad = edad;
            jugador.IdEquipo = idEquipo;

            Entidades.Jugador.AddObject(jugador);
            Entidades.SaveChanges();
            return jugador;
        }

        public int EliminarJugador(int id)
        {
            int resultado = 0;
            System.Data.EntityKey key = new System.Data.EntityKey("EpicLeagueEntities.Jugador", "Id", id);
            object jugadorParaEliminar;
            if (Entidades.TryGetObjectByKey(key, out jugadorParaEliminar))
            {
                Entidades.DeleteObject(jugadorParaEliminar);
                resultado = Entidades.SaveChanges();
            }
            return resultado;
        }

        public int ActualizarJugador(int id, string nombre, string apellido, int edad, int idEquipo)
        {
            int resultado = 0;
            Jugador jugadorActualizado = new Jugador();
            jugadorActualizado.Id = id;
            jugadorActualizado.Nombre = nombre;
            jugadorActualizado.Apellido = apellido;
            jugadorActualizado.Edad = edad;
            jugadorActualizado.IdEquipo = idEquipo;
            System.Data.EntityKey key = new System.Data.EntityKey("EpicLeagueEntities.Jugador", "Id", id);
            object jugadorParaActualizar;
            if (Entidades.TryGetObjectByKey(key, out jugadorParaActualizar))
            {
                Entidades.ApplyCurrentValues(key.EntitySetName, jugadorActualizado);
                resultado = Entidades.SaveChanges();
            }

            return resultado;
        }
    }
}
