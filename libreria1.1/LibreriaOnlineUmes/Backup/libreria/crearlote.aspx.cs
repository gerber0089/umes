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
    public partial class crearlote : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            if(lote.Text !="" && dlcodigo.SelectedValue !="" && pventa.Text!="" && pcompra.Text!=""){


                entcrearlote obj = new entcrearlote();

                obj.idlote = lote.Text;
                obj.codprod = dlcodigo.SelectedValue;
                obj.saldo = float.Parse(saldo.Text = ("0"));
                obj.preciomed = float.Parse(pventa.Text);
                obj.preciocompra = float.Parse(pcompra.Text);

                if(negcrearlote.crearlote(obj)!= 0){

                    Response.Redirect("../libreria/registrooperacionconproveedor.aspx");
                
                }else{

                    lblerror.Text="NO SE PUEDE INGRESAR";
                    lblerror.Visible = true;

                }
            
            
            }
            
            
            
            
            
            else{

                lblerror.Text = "FALTAN CAMPOS POR INGRESAR";
                lblerror.Visible = true;
            
            
            }
        }

       
    }
}