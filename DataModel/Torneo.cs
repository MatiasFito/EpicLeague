using System;
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

        public List<Torneo> ListarTodosLosTorneos()
        {
            var torneos = from t in Entidades.Torneo
                          select t;
            return torneos.ToList<Torneo>();
        }
    }
}
