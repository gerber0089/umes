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
    public partial class registrooperacionconproveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fecha.Text = "" + DateTime.Now;
        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            if (lote.Text != "" && facturaproveedor.Text != ""  && saldo.Text != "")
            {
                entingresosaldolote obj = new entingresosaldolote();

                obj.lote = lote.Text;
                obj.fechaop = fecha.Text; 
                obj.facturaproveedor = float.Parse(facturaproveedor.Text);
                obj.proveedor = Convert.ToInt32(dlproveedor.SelectedValue);
                obj.entrada = float.Parse(saldo.Text);

                if(negingresosaldolote.entradasaldoprod (obj) != 0){

                    Response.Redirect("../libreria/crearlote.aspx");
                
                }else{

                    lblerror.Text = "NO SE PUDIERON INGRESAR LOS DATOS";
                    lblerror.Visible=true;
                }

            }
            else {

                lblerror.Text = "FALTA INGRESAR CAMPOS";
                lblerror.Visible = true;
            
            }

        }
    }
}