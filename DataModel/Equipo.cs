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
        
        public int CantidadDeEquipos
        {
            get
            {
                return this.ListarEquipos(true).Count;
            }
        }

        public List<Equipo> ListarEquipos(bool IncluirEquiposDeTorneosInactivos)
        {
            List<Equipo> equipos;
            if (IncluirEquiposDeTorneosInactivos)
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

        public Equipo AgregarEquipo (string nombre, int montoAbonado, int idTorneo)
        {
            Equipo equipo = new Equipo();
            equipo.Id = this.CantidadDeEquipos;
            equipo.Nombre = nombre;
            equipo.MontoAbonado = montoAbonado;
            equipo.IdTorneo = idTorneo;

            Entidades.Equipo.AddObject(equipo);
            Entidades.SaveChanges();
            return equipo;
        }

        public int EliminarEquipo(int IdEquipo)
        {
            int resultado = 0;
            System.Data.EntityKey key = new System.Data.EntityKey("EpicLeagueEntities.Equipo", "Id", IdEquipo);
            object equipoParaEliminar;
            if (Entidades.TryGetObjectByKey(key, out equipoParaEliminar))
            {
                Entidades.DeleteObject(equipoParaEliminar);
                resultado = Entidades.SaveChanges();
            }
            return resultado;
        }
    }
}
