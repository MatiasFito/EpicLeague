using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class EquipoJson
    {
        public string Nombre { get; set; }
        public int MontoAbonado {get; set;}
        public int Id {get; set;}
        public int IdTorneo {get; set;}

        public EquipoJson ()
        {
            Nombre = string.Empty;
        }

        public EquipoJson(int id, string nombre, int montoAbonado, int idTorneo)
        {
            Id = id;
            Nombre = nombre;
            MontoAbonado = montoAbonado;
            IdTorneo = idTorneo;
        }
    }
}
