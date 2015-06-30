using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataModel
{
    public partial class Contacto
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

        public int CantidadDeContactos()
        {
            return this.ListarContactos().Count;
        }

        public List<int> ObtenerTodosLosId()
        {
            var ids = from t in Entidades.Contacto
                      select t.Id;
            return ids.ToList<int>();
        }

        public List<Contacto> ListarContactos()
        {
            var contactos = from c in Entidades.Contacto
                            select c;
            return contactos.ToList<Contacto>();
        }

        public Contacto AgregarContacto(int id, string nombreCompleto, string email, string comentario)
        {
            Contacto contacto = new Contacto();
            contacto.Id = id;
            contacto.NombreCompleto = nombreCompleto;
            contacto.Email = email;
            contacto.Comentario = comentario;

            Entidades.Contacto.AddObject(contacto);
            Entidades.SaveChanges();
            return contacto;
        }

        public int EliminarContacto(int id)
        {
            int resultado = 0;
            System.Data.EntityKey key = new System.Data.EntityKey("EpicLeagueEntities.Contacto", "Id", id);
            object contactoParaEliminar;
            if (Entidades.TryGetObjectByKey(key, out contactoParaEliminar))
            {
                Entidades.DeleteObject(contactoParaEliminar);
                resultado = Entidades.SaveChanges();
            }
            return resultado;
        }

        public int ActualizarContacto(int id, string nombreCompleto, string email, string comentario)
        {
            int resultado = 0;
            Contacto contactoActualizado = new Contacto();
            contactoActualizado.Id = id;
            contactoActualizado.NombreCompleto = nombreCompleto;
            contactoActualizado.Email = email;
            contactoActualizado.Comentario = comentario;
            System.Data.EntityKey key = new System.Data.EntityKey("EpicLeagueEntities.Contacto", "Id", id);
            object contactoParaActualizar;
            if (Entidades.TryGetObjectByKey(key, out contactoParaActualizar))
            {
                Entidades.ApplyCurrentValues(key.EntitySetName, contactoActualizado);
                resultado = Entidades.SaveChanges();
            }

            return resultado;
        }
    }
}
