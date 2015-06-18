using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using DataModel;

namespace Tests
{
    [TestClass]
    public class ContactoTest
    {
        private Contacto contacto;
        public ContactoTest()
        {
            contacto = new Contacto();
        }

        [TestMethod]
        public void ListarTodosLosContactosDeberiaDevolverDosContactos()
        {
            List<Contacto> contactos = contacto.ListarTodosLosContactos();
            Assert.AreEqual(2, contactos.Count);
        }

        [TestMethod]
        public void AgregarContactoDeberiaAgregarUnContacto()
        {
            int cantidadDeContactosAntesDeAgregarUno = contacto.CantidadDeContactos;
            Contacto contactoCreado = contacto.AgregarContacto("Prueba Lueva", "prueba@prueba.com", "comentario prueba");
            Assert.AreEqual(cantidadDeContactosAntesDeAgregarUno + 1, contacto.CantidadDeContactos);
            contacto.EliminarContacto(contactoCreado.Id);
        }
    }
}
