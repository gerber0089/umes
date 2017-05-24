<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="LibreriaOnlineUmes.libreria.frmLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<<<<<<< HEAD
    <title>LIBRERIA UMES</title>
=======
    <title>KARDEX</title>
>>>>>>> be2292678815b0c1a1366618db0a74549df8c958
    <meta charset="utf-8">
    <link type="text/css" href="../css/styleLogin.css" rel="stylesheet" />

    <style type="text/css">
        .style1
        {
            height: 19px;
            width: 226px;
        }
        .style2
        {
            width: 226px;
            margin-left: 40px;
        }
        </style>
</head>
 
<body>
 
 
    <div id="envoltura">
        <div id="contenedor">
 
            <div id="cabecera" >
                <img src="../imagenes/llave.png" style="height: 64px; width: 99px">
                    <td align="left">  
                        Inicio de Sesion  
                    </td>  
              
            </div>
 
            <div id="cuerpo">
                <form id="form1" runat="server">
                  <table>
                        <tr>
                                    <td colspan="2" align="left" class="style2">CORREO:</td>
                        </tr>
                            <tr>
                                    <td class="style2">
                                        <asp:TextBox ID="txtusuario" runat="server" Width="218px"></asp:TextBox>

                                    </td>
                            </tr>
                  
                            <tr>
                                    <td colspan="2" align="left" class="style1">PASSWORD:</td>
                            </tr>
                            <tr>
                                    <td class="style2">      
                               
                                        <asp:TextBox ID="txtpass" runat="server" Width="218px" TextMode="password"></asp:TextBox>   
                                
                                    </td> 
                               
<<<<<<< HEAD
                             </tr>    
                             
                             <tr>
                                    <td class="style2">      
                               
                                        &nbsp;</td> 
                               
                             </tr>                            
=======
                             </tr>                
>>>>>>> be2292678815b0c1a1366618db0a74549df8c958
                            <tr>
                                <td colspan="2" align="center" class="style2"><asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red"  Visible="false"></asp:Label></td>
                            </tr>
                    
                     
                    
             </table>
                  

                        <asp:Button ID="btnGuardar" runat="server" Text="INGRESAR" onclick="btnGuardar_Click" Width="200px" />

                    

                </form>
                        <a href="crearusuario.aspx"><h4>Crear Usuario</h4></a>
           
            </div><!--fin cuerpo-->
            
            <div id="pie"></div>
        </div><!-- fin contenedor -->
    </div><!--fin envoltura-->


</body>
</html>
