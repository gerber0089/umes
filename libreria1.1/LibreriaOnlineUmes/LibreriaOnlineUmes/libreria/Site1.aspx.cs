using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;

namespace LibreriaOnlineUmes.libreria
{
    public partial class Site1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            entusuario obj = (entusuario)Session["usuario"];
            if (obj != null)
            {
                txtnombre.Text = obj.Nombre + " " + obj.Apellido;

            }
            else
            {
                Response.Redirect("frmLogin.aspx");

            }
        }

        protected void lbtlogout_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("paginapresentacion.aspx"); 
        }
    }
}