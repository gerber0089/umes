﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="activarusuario.aspx.cs" Inherits="LibreriaOnlineUmes.libreria.activarusuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../css/asignarroles.css" rel="stylesheet" type="text/css" />

<div id="envoltura">
        <div id="contenedor">
 
            <div id="cabecera" >
                <img src="../imagenes/admin.png" style="height: 68px; width: 203px">
                     
       </div>
 
       <div id="cuerpo">
               
          <table>
   

                  <tr>
                  
                            <td colspan="2" align="left" class="style2">USUARIO NO ACTIVOS Y SIN ROL:</td>
                  
                  </tr>
                  
                    
                  <tr>  
                               <td class="style2">
                                    <asp:DropDownList ID="dl1" runat="server" 
                                        DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="idUsuario" 
                                        Height="21px" Width="205px">
                                    </asp:DropDownList>


                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:libreriaConnectionString %>" 
                                        
                                        SelectCommand="SELECT idUsuario, Nombre FROM Usuario WHERE (estado = 0) OR Rol=0">
                                    </asp:SqlDataSource>
                                </td>
   
                  </tr>
                  <tr>
                  
                            <td colspan="2" align="left" class="style2">ASIGNAR ROL:</td>
                  
                  </tr>
                  <tr>
                            <td class="style2">    
                                <asp:DropDownList ID="dl3" runat="server" 
                                    DataSourceID="SqlDataSource3" DataTextField="nombre" DataValueField="Id_Rol" 
                                    Width="202px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:libreriaConnectionString %>" 
                                    SelectCommand="SELECT Id_Rol, nombre FROM Roles"></asp:SqlDataSource>
                            </td>

                  </tr>              
  
                  <tr>
                  
                            <td colspan="2" align="left" class="style2">ASIGNAR ESTADO:</td>
                  
                  </tr>  
                  <tr>
                           <td class="style2">    
                                <asp:DropDownList ID="dl2" runat="server" 
                                    DataSourceID="SqlDataSource2" DataTextField="descripcion" 
                                    DataValueField="id_estado" Width="204px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:libreriaConnectionString %>" 
                                    SelectCommand="SELECT id_estado, descripcion FROM EstadoRol">
                                </asp:SqlDataSource>
                            </td>
  
                                             
                   </tr>
                                <td colspan="2" align="center" class="style2"><asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red"  Visible="false"></asp:Label></td>
                   </tr>
                            
         </table>
                                <asp:Button ID="btnguardar" runat="server" onclick="btnguardar_Click" Text="MODIFICAR" 
                                     Width="117px" />
   </div>

  <br /><p style='clear:both;text-align:center'><a>UNIVERSIDA MESOAMERICANA</a></p>
 
</asp:Content>
