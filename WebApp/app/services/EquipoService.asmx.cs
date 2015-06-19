using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web.Script.Serialization;
using DataModel;
using Model;

namespace WebApp.app.services
{
    /// <summary>
    /// Descripción breve de EquipoService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio Web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class EquipoService : System.Web.Services.WebService
    {
        private Equipo equipo;
        private List<EquipoJson> equiposJson;

        public EquipoService()
        {
            equipo = new Equipo();
            equiposJson = new List<EquipoJson>();
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
        public string ObtenerEquipos(bool torneosInactivos)
        {
            List<Equipo> equipos = equipo.ListarEquipos(torneosInactivos);

            foreach (Equipo equipoActual in equipos)
            {
                this.equiposJson.Add(new EquipoJson(equipoActual.Id, equipoActual.Nombre, Convert.ToInt32(equipoActual.MontoAbonado), Convert.ToInt32(equipoActual.IdTorneo)));
            }

            return new JavaScriptSerializer().Serialize(this.equiposJson);
        }
    }
}
