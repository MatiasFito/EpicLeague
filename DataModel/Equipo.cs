using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataModel
{
    public partial class Equipo
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
        
        public int CantidadDeEquipos()
        {
            return this.ListarEquipos(true).Count;
        }

        public List<int> ObtenerTodosLosId()
        {
            var ids = from t in Entidades.Equipo
                      select t.Id;
            return ids.ToList<int>();
        }

        public bool EstaEnUnTorneo()
        {
            return this.Torneo != null;
        }

        public List<Equipo> ListarEquipos(bool IncluirEquiposDeEquiposInactivos)
        {
            List<Equipo> equipos;
            if (IncluirEquiposDeEquiposInactivos)
            {
                var consulta =  from e in Entidades.Equipo
                                select e;
                equipos = consulta.ToList<Equipo>();
            }
            else
            {
                var consulta = from e in Entidades.Equipo
                               join t in Entidades.Torneo
                               on e.IdTorneo equals t.Id
                               where t.Activo == true
                               select e;
                equipos = consulta.ToList<Equipo>();
            }

            return equipos;
        }

        public Equipo AgregarEquipo (int id, string nombre, int montoAbonado, int idTorneo)
        {
            Equipo equipo = new Equipo();
            equipo.Id = id;
            equipo.Nombre = nombre;
            equipo.MontoAbonado = montoAbonado;
            equipo.IdTorneo = idTorneo;

            Entidades.Equipo.AddObject(equipo);
            Entidades.SaveChanges();
            return equipo;
        }

        public int EliminarEquipo(int id)
        {
            int resultado = 0;
            System.Data.EntityKey key = new System.Data.EntityKey("EpicLeagueEntities.Equipo", "Id", id);
            object equipoParaEliminar;
            if (Entidades.TryGetObjectByKey(key, out equipoParaEliminar))
            {
                Entidades.DeleteObject(equipoParaEliminar);
                resultado = Entidades.SaveChanges();
            }
            return resultado;
        }

        public int ActualizarEquipo(int id, string nombre, int montoAbonado, int idTorneo)
        {
            int resultado = 0;
            Equipo equipoActualizado = new Equipo();
            equipoActualizado.Id = id;
            equipoActualizado.Nombre = nombre;
            equipoActualizado.MontoAbonado = montoAbonado;
            equipoActualizado.IdTorneo = idTorneo;
            System.Data.EntityKey key = new System.Data.EntityKey("EpicLeagueEntities.Equipo", "Id", id);

            object equipoParaActualizar;
            if (Entidades.TryGetObjectByKey(key, out equipoParaActualizar))
            {
                Entidades.ApplyCurrentValues(key.EntitySetName, equipoActualizado);
                resultado = Entidades.SaveChanges();
            }

            return resultado;
        }
    }
}
