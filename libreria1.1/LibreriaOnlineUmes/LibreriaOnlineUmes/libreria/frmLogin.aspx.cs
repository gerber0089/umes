using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;
using CapaNegocio;

namespace LibreriaOnlineUmes.libreria
{
    public partial class frmLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (txtusuario.Text != "" && txtpass.Text != "")
            {
                entusuario obj = negusuario.Login(txtusuario.Text, txtpass.Text);

                if (obj != null)
                {

                    Session["usuario"] = obj;
                    Response.Redirect("producto.aspx");
                   

                }
                else
                {
                    lblerror.Text = "Usuario o contraseña invalido";
                    lblerror.Visible = true;


                }

            }
            else
            {
                lblerror.Text = "Falta ingresar campos";
                lblerror.Visible = true;
            }

        }
    }
}