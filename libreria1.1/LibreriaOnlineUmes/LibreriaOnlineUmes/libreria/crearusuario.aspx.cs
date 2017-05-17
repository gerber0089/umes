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
    public partial class crearusuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
              if (txtusuario.Text != "" && txtapellido.Text != "" && txtcorreo.Text != "" && txtpass.Text != "")
            {
              
                entverificarcorreo  obj1 = new entverificarcorreo();

                if(obj1 != null){

                        Session["usuario"]=txtcorreo.Text;
                        lblerror.Text = "USUARIO YA REGISTRADO";
                        lblerror.Visible = true;
                    }
                    else
                    {
                        entregistrousuario obj = new entregistrousuario();
                        obj.Nombre = txtusuario.Text;
                        obj.Apellido = txtapellido.Text;
                        obj.Usuario = txtcorreo.Text;
                        obj.Password = txtpass.Text;
                        obj.estado = Convert.ToInt32(txtestado.Text = "0");
                        obj.Rol = Convert.ToInt32(txtrol.Text = "0");



                        if (negregistrousuario.ingresousuario(obj) != 0)
                        {
                            Response.Redirect("frmLogin.aspx");

                        }
                        else
                        {
                            lblerror.Text = "No se pudo Ingresar Usuario";
                            lblerror.Visible = true;


                        }

                    }
               
            }
            else
            {

                lblerror.Text = "Falta ingresar Campos";
                lblerror.Visible = true;

            }



        }
        
    }
}