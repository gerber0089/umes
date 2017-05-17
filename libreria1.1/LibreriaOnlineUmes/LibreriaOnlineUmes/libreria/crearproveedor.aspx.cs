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
    public partial class crearproveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            if(txtproveedro.Text !="" && nombre.Text !=""){

                entcrearproveedor obj = new entcrearproveedor();

                obj.idproveedor = Convert.ToInt32(txtproveedro.Text);
                obj.nombre = nombre.Text;
                if(negcrearproveedor.cproveedor(obj) != 0){

                    Response.Redirect("../libreria/crearproveedor.aspx");
                
                }else{

                    lblerror.Text = "NO SE PUEDE INGRESAR LOS DATOS";
                    lblerror.Visible = true;
                }
            
            }else{

                lblerror.Text = "FALTA CAMPOS POR INGRESAR";
                lblerror.Visible = true;
            }
        }
    }
}