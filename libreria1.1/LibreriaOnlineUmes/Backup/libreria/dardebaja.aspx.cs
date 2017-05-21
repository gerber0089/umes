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
    public partial class asignarolasuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            if (dl1.SelectedValue != "" && dl2.SelectedValue != "")
            {

                entactivacionusuario obj = new entactivacionusuario();

                obj.idUsuario = Convert.ToInt32(dl1.SelectedValue);
                obj.estado = Convert.ToInt32(dl2.SelectedValue);
                


                if (negactivarusuario.activarusuario(obj) != 0)
                {

                    Response.Redirect("/libreria/activarusuario.aspx");


                }
                else
                {


                    lblerror.Text = "USUARIO NO ACTIVADO";
                    lblerror.Visible = true;


                }

            }
            else { 
            
                    lblerror.Text="NO HAY USUARIO POR ACTIVAR";
                    lblerror.Visible = true;
                
            }
        }
      }
    
}