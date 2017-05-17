<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crearproveedor.aspx.cs" Inherits="LibreriaOnlineUmes.libreria.crearproveedor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/proveedor.css" rel="stylesheet" type="text/css" />
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
   
      
                  
                            <td colspan="2" align="left" class="style1">CODIGO ULTIMO PROVEEDOR:</td>
                  
                  </tr>
                  
              
                  <tr>  
                           <td class="style1"> 
                           
                               <asp:DropDownList ID="DropDownList1" runat="server" 
                                   DataSourceID="SqlDataSource1" DataTextField="idproveedor" 
                                   DataValueField="idproveedor" Height="23px" Width="265px">
                               </asp:DropDownList>
                               <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                   ConnectionString="<%$ ConnectionStrings:libreriaConnectionString %>" 
                                   SelectCommand="SELECT idproveedor FROM proveedor WHERE (idproveedor = (SELECT MAX(idproveedor) AS Expr1 FROM proveedor AS proveedor_1))">
                               </asp:SqlDataSource>
                           </td>          
                  </tr>

               
            <tr>
                  
                            <td colspan="2" align="left" class="style1">CODIGO PROVEEDOR:</td>
                  
                  </tr>
                  
              
                  <tr>  
                           <td class="style1"> <asp:TextBox ID="txtproveedro" runat="server" Width="264px" 
                                   Height="23px"></asp:TextBox></td>          
                  </tr>

                  <tr>
                  
                            <td colspan="2" align="left" class="style1">NOMBRE:</td>
                  
                  </tr>
                  <tr>
                             <td class="style1">  
                                 <asp:TextBox ID="nombre" runat="server" Width="264px" Height="23px"></asp:TextBox>
                             </td>    
                  
                  </tr>
                  
                                <td colspan="2" align="center" class="style1"><asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red"  Visible="false"></asp:Label></td>
                   </tr>
                            
         </table>
                                <asp:Button ID="btnguardar" runat="server" onclick="btnguardar_Click" Text="CREAR" 
                                     Width="117px" />
  

    
    

</div>


  <br /><p style='clear:both;text-align:center'><a UNIVERSIDA MESOAMERICANA-align:center'><a>UNIVERSIDA MESOAMERICANA</a></p>
    




    </div>
    </form>
</body>
</html>
