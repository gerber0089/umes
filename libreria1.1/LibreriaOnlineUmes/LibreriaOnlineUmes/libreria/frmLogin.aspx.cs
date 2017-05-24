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
<<<<<<< HEAD
           
            

=======
>>>>>>> be2292678815b0c1a1366618db0a74549df8c958

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (txtusuario.Text != "" && txtpass.Text != "")
            {
                entusuario obj = negusuario.Login(txtusuario.Text, txtpass.Text);

                if (obj != null)
                {
<<<<<<< HEAD
                        if (obj.estado == 0)
                        {
                            lblerror.Text = "Usuario No Activo";
                            lblerror.Visible = true;                
                    
                        } else {

                            if (obj.estado == 1) 
                            {
                                if (obj.Rol == 0) 
                                {
                                    lblerror.Text = "USUARIO NO TIENE ASIGDO ROL";
                                    lblerror.Visible = true;
                                
                                } else {

                                    if (obj.Rol == 1) 
                                    {
                                        Session["usuario"] = obj;
                                        Response.Redirect("a2d1m5i9n7i6s7t0r7a9do4r.aspx");

                                    
                                    } else {

                                        if (obj.Rol == 2) 
                                        {

                                            Session["usuario"] = obj;
                                            Response.Redirect("producto.aspx"); 

                                        } else {

                                            lblerror.Text = "PONERSE EN CONTACTO CON EL ADMINISTRADOR";
                                            lblerror.Visible = true;
                                                            
                                        
                                        }
                                    
                                    
                                    }   
                                
                                } 
  

                            } else {

                                lblerror.Text = "Consulte con el Administrador";
                                lblerror.Visible = true;

                            }

                    
                        }       
            

=======

                    Session["usuario"] = obj;
                    Response.Redirect("producto.aspx");
                   
>>>>>>> be2292678815b0c1a1366618db0a74549df8c958

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