using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;

namespace LibreriaOnlineUmes
{
    public partial class Usuarios : System.Web.UI.MasterPage
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