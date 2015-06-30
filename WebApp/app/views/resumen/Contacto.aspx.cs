using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp.app.views.resumen
{
    public partial class Contacto : System.Web.UI.Page
    {
        DataModel.Contacto contacto;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtbox_contacto_id.Attributes.Add("type", "number");
            txtbox_email.Attributes.Add("type", "email");
        }

        protected void btn_submit_contacto1(object sender, EventArgs e)
        {
            contacto = new DataModel.Contacto();

            contacto.AgregarContacto(Convert.ToInt32(txtbox_contacto_id.Text), txtbox_nombre_contacto.Text, txtbox_email.Text, txtbox_comentario.Text);

            Response.Redirect("Contacto.aspx");
        }
    }
}