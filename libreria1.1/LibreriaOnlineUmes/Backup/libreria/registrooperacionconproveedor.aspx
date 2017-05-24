<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrooperacionconproveedor.aspx.cs" Inherits="LibreriaOnlineUmes.libreria.registrooperacionconproveedor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/generalcrear.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div id="envoltura">
        <div id="contenedor">
 
            <div id="cabecera" >
                <img src="../imagenes/logo-meso.png" style="height: 68px; width: 203px">
                     
       </div>
 
       <div id="cuerpo">
               
          <table>
   

                  <tr>
                  
                            <td colspan="2" align="left" class="style2">No. LOTE:</td>
                  
                  </tr>
                  <tr>
                             <td> <asp:TextBox ID="lote" runat="server" Width="264px"></asp:TextBox></td>    
                  
                  </tr>
                   <tr>
                  
                            <td colspan="2" align="left" class="style2">FECHA OPERADO:</td>
                  
                  </tr>
                  <tr>
                             <td>
                                 <asp:TextBox ID="fecha" runat="server" Width="264px" Enabled="False"></asp:TextBox>
                             </td>    
                  
                  </tr>
                  
                  <tr>
                  
                            <td colspan="2" align="left" class="style2">No. FACTURA PROVEEDOR:</td>
                  
                  </tr>  

                  <tr>
                           <td class="style2">    
                           <asp:TextBox ID="facturaproveedor" runat="server" Width="264px" Visible="True"></asp:TextBox>    
                            </td>
  
                                             
                   </tr>
                    <tr>
                  
                            <td colspan="2" align="left" class="style2">PROVEEDOR</td>
                  
                  </tr>  
                  <tr>
                           <td class="style2">    
                               <asp:DropDownList ID="dlproveedor" runat="server" Height="22px" Width="264px" 
                                   DataSourceID="SqlDataSource1" DataTextField="nombre" 
                                   DataValueField="idproveedor">
                               </asp:DropDownList>
                            
                               <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                   ConnectionString="<%$ ConnectionStrings:libreriaConnectionString %>" 
                                   SelectCommand="SELECT idproveedor, nombre FROM proveedor">
                               </asp:SqlDataSource>
                            
                            </td>
  
                                             
                   </tr>
                    <tr>
                  
                            <td colspan="2" align="left" class="style2">ENTRADA:</td>
                  
                  </tr>  
                  <tr>
                           <td class="style2">    
                           <asp:TextBox ID="saldo" runat="server" Width="264px"></asp:TextBox>    
                            </td>
  
                                             
                   </tr>
                                <td colspan="2" align="center" class="style2"><asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red"  Visible="false"></asp:Label></td>
                   </tr>
                            
         </table>
                                <asp:Button ID="btnguardar" runat="server" onclick="btnguardar_Click" Text="INGRESAR" 
                                     Width="117px" />
  

    
    

</div>


  <br /><p style='clear:both;text-align:center'><a>UNIVERSIDA MESOAMERICANA</a></p>
    


    </div>
    </form>
</body>
</html>
