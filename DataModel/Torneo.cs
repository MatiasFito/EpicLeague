﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataModel
{
    public partial class Torneo
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

        public int CantidadDeTorneos
        {
            get
            {
                return this.ListarTodosLosTorneos().Count;
            }
        }        

        public List<Torneo> ListarTodosLosTorneos()
        {
            var torneos = from t in Entidades.Torneo
                          select t;
            return torneos.ToList<Torneo>();
        }

        public List<Torneo> BuscarTorneoPorNombre(string nombre)
        {
            List<Torneo> torneos;

            if (nombre == string.Empty)
            {
                torneos = this.ListarTodosLosTorneos();
            }
            else
            {
                var consulta = from t in Entidades.Torneo
                               where t.Nombre.Contains(nombre)
                               select t;
                torneos = consulta.ToList<Torneo>();
            }
            return torneos;
        }

        public Torneo AgregarTorneo(string nombre, bool activo)
        {
            Torneo torneo = new Torneo();
            torneo.Id = this.CantidadDeTorneos;
            torneo.Nombre = nombre;
            torneo.Activo = activo;

            Entidades.Torneo.AddObject(torneo);
            Entidades.SaveChanges();
            return torneo;
        }

        public int EliminarTorneo(int IdTorneo)
        {
            int resultado = 0;
            System.Data.EntityKey key = new System.Data.EntityKey("EpicLeagueEntities.Torneo", "Id", IdTorneo);
            object torneoParaEliminar;
            if (Entidades.TryGetObjectByKey(key, out torneoParaEliminar))
            {
                Entidades.DeleteObject(torneoParaEliminar);
                resultado = Entidades.SaveChanges();
            }
            return resultado;
        }
    }
}