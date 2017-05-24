<%@ Page Title="" Language="C#" MasterPageFile="~/LibreriaMaster.Master" AutoEventWireup="true" CodeBehind="crearusuario.aspx.cs" Inherits="LibreriaOnlineUmes.libreria.crearusuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<link href="../css/stylecrearusuario.css" rel="stylesheet" type="text/css" />



<div id="envoltura">
        <div id="contenedor">
 
            <div id="cabecera" >
                <img src="../imagenes/User.png" style="height: 68px; width: 112px">
                     
            </div>
 
            <div id="cuerpo">
               
                  <table>
                        <tr>
                                    <td colspan="2" align="left" class="style2">NOMBRE:</td>
                        </tr>
                            <tr>
                                    <td class="style2">
                                        <asp:TextBox ID="txtusuario" runat="server" Width="359px"></asp:TextBox>

                                    </td>
                            </tr>
                            <tr>
                                    <td colspan="2" align="left" class="style2">APELLIDO:</td>
                        </tr>
                            <tr>
                                    <td class="style2">
                                        <asp:TextBox ID="txtapellido" runat="server" Width="359px"></asp:TextBox>

                                    </td>
                            </tr>
                            <tr>
                                    <td colspan="2" align="left" class="style2">CORREO:</td>
                        </tr>
                            <tr>
                                    <td class="style2">
                                        <asp:TextBox ID="txtcorreo" runat="server" Width="359px"></asp:TextBox>

                                    </td>
                            </tr>
                            <tr>
                                    <td colspan="2" align="left" class="style1">PASSWORD:</td>
                            </tr>
<<<<<<< HEAD
                            </br>
=======
>>>>>>> be2292678815b0c1a1366618db0a74549df8c958
                            <tr>
                                    <td class="style2">      
                               
                                        <asp:TextBox ID="txtpass" runat="server" Width="359px" TextMode="password"></asp:TextBox>   
                                
                                    </td> 
                               
<<<<<<< HEAD
                             </tr>  
                             <tr>
                                    <td class="style2">      
                               
                                        <asp:TextBox ID="txtestado" runat="server" Width="359px" Visible="False"></asp:TextBox>   
                                
                                    </td> 
                               
                             </tr>  
                             <tr>
                                    <td class="style2">      
                               
                                        <asp:TextBox ID="txtrol" runat="server" Width="359px" Visible="False"></asp:TextBox>   
                                
                                    </td> 
                               
                             </tr>  
                                           
=======
                             </tr>                
>>>>>>> be2292678815b0c1a1366618db0a74549df8c958
                            <tr>
                                <td colspan="2" align="center" class="style2"><asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red"  Visible="false"></asp:Label></td>
                            </tr>
                    
                     
                    
             </table>
                  

                        <asp:Button ID="btnGuardar" runat="server" Text="INGRESAR" 
                      onclick="btnGuardar_Click" Width="359px" />

                    

          
                      
           
            </div><!--fin cuerpo-->
            
            <div id="pie"></div>
        </div><!-- fin contenedor -->
    </div><!--fin envoltura-->






</asp:Content>
