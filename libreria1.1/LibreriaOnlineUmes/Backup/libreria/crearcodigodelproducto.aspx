<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crearcodigodelproducto.aspx.cs" Inherits="LibreriaOnlineUmes.libreria.crearcodigodelproducto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/codigoproducto.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 272px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">


    <div id="envoltura">
        <div id="contenedor">
 
            <div id="cabecera" >
                <img src="../imagenes/admin.png" style="height: 68px; width: 203px">
                     
       </div>
 
       <div id="cuerpo">
               
          <table>
   


               
            <tr>
                  
                            <td colspan="2" align="left" class="style1">CODIGO PRODUCTO:</td>
                  
                  </tr>
                  
              
                  <tr>  
                           <td class="style1"> <asp:TextBox ID="txtcodproducto" runat="server" Width="264px"></asp:TextBox></td>          
                  </tr>

                  <tr>
                  
                            <td colspan="2" align="left" class="style1">NOMBRE:</td>
                  
                  </tr>
                  <tr>
                             <td class="style1">  
                                 <asp:DropDownList ID="dlnombre" runat="server" Height="25px" Width="264px" 
                                     DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="idnombre">
                                 </asp:DropDownList> 
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                     ConnectionString="<%$ ConnectionStrings:libreriaConnectionString %>" 
                                     SelectCommand="SELECT idnombre, nombre FROM prodnombre"></asp:SqlDataSource>
                             </td>    
                  
                  </tr>
                  
                                <td colspan="2" align="center" class="style1"><asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red"  Visible="false"></asp:Label></td>
                   </tr>
                            
         </table>
                                <asp:Button ID="btnguardar" runat="server" onclick="btnguardar_Click" Text="CREAR" 
                                     Width="117px" />
  

    
    

</div>


  <br /><p style='clear:both;text-align:center'><a UNIVERSIDA MESOAMERICANA-align:center'><a>UNIVERSIDA MESOAMERICANA</a></p>
    





    <div>
    
    </div>
    </form>
</body>
</html>
