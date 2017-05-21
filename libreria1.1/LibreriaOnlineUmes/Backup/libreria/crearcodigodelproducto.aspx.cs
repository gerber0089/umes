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
    public partial class crearcodigodelproducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {

            if (txtcodproducto.Text != "" && dlnombre.SelectedValue != "")
            {
                entcodigodelproducto obj = new  entcodigodelproducto();

                obj.codprod = txtcodproducto.Text;
                obj.nombre = Convert.ToInt32(dlnombre.SelectedValue);
                
                if(negcodigodelproducto.codigoproducto (obj) != 0){

                    Response.Redirect("../libreria/crearcodigodelproducto.aspx");
                }else{

                    lblerror.Text = "NO SE INGRESARON LOS DATOS";
                    lblerror.Visible = true;
                }

            }
            else {

                lblerror.Text = "FALTAN CAMPOS POR INGRESAR";
                lblerror.Visible = true;
            
            }

        }
    }
}