using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataModel
{
    public class TorneoORM
    {
        private EpicLeagueEntities contexto;

        public TorneoORM()
        {
            contexto = new EpicLeagueEntities();
        }

        public void ListarTorneos()
        {
            var torneos = from t in contexto.Torneo
                          select t;

            foreach (Torneo torneo in torneos)
            {
                Console.WriteLine(torneo.Nombre);
            }
        }
    }
}
