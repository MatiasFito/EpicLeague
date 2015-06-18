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

        public int CantidadDeContactos
        {
            get
            {
                return this.ListarTodosLosContactos().Count;
            }
        }

        public List<Contacto> ListarTodosLosContactos()
        {
            var contactos = from c in Entidades.Contacto
                            select c;
            return contactos.ToList<Contacto>();
        }

        public Contacto AgregarContacto(string nombreCompleto, string email, string comentario)
        {
            Contacto contacto = new Contacto();
            contacto.Id = this.CantidadDeContactos;
            contacto.NombreCompleto = nombreCompleto;
            contacto.Email = email;
            contacto.Comentario = comentario;

            Entidades.Contacto.AddObject(contacto);
            Entidades.SaveChanges();
            return contacto;
        }

        public int EliminarContacto(int IdContacto)
        {
            int resultado = 0;
            System.Data.EntityKey key = new System.Data.EntityKey("EpicLeagueEntities.Contacto", "Id", IdContacto);
            object contactoParaEliminar;
            if (Entidades.TryGetObjectByKey(key, out contactoParaEliminar))
            {
                Entidades.DeleteObject(contactoParaEliminar);
                resultado = Entidades.SaveChanges();
            }
            return resultado;
        }
    }
}
