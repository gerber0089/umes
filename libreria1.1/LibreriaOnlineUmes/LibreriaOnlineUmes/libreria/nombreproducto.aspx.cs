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
    public partial class nombreproducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {

            if (idproducto.Text != "" && nombre.Text != "" && presentacion.Text != "")
            {

                entcrearnombreproducto obj = new entcrearnombreproducto();

               

                    obj.idnombre = Convert.ToInt32(idproducto.Text);
                    obj.nombre = nombre.Text;
                    obj.presentacion = presentacion.Text;
                    if (negcrearnombreproducto.crearnombre (obj) != 0)
                    {
                        Response.Redirect("../libreria/nombreproducto.aspx");
                }
                else
                {

                    lblerror.Text = "OCURRIO UN ERROR A INSERTAR LOS DATOS";
                    lblerror.Visible = true;

                }

            }
            else
            {

                lblerror.Text = "FALTAN CAMPOS POR INGRESAR";
                lblerror.Visible = true;


            }



        }
    }
}