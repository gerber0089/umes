<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nombreproducto.aspx.cs" Inherits="LibreriaOnlineUmes.libreria.nombreproducto" %>

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
                <img src="../imagenes/admin.png" style="height: 68px; width: 203px">
                     
       </div>
 
       <div id="cuerpo">
               
          <table>
   


                  <tr>
                  
                            <td colspan="2" align="left" class="style2">ULTIMO REGISTRO INGRESADO:</td>
                  
                  </tr>
                  
              
                  <tr>  
                           <td>
                               <asp:DropDownList ID="DropDownList1" runat="server" 
                                   DataSourceID="SqlDataSource1" DataTextField="idnombre" 
                                   DataValueField="idnombre" Height="25px" Width="264px">
                               </asp:DropDownList> 
                               <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                   ConnectionString="<%$ ConnectionStrings:libreriaConnectionString %>" 
                                   SelectCommand="SELECT idnombre FROM prodnombre WHERE (idnombre = (SELECT MAX(idnombre) AS Expr1 FROM prodnombre AS prodnombre_1))">
                               </asp:SqlDataSource>
                           </td>          
                  </tr>      
                  <tr>
                  
                            <td colspan="2" align="left" class="style2">ID:</td>
                  
                  </tr>
                  
              
                  <tr>  
                           <td> <asp:TextBox ID="idproducto" runat="server" Width="264px"></asp:TextBox></td>          
                  </tr>

                  <tr>
                  
                            <td colspan="2" align="left" class="style2">NOMBRE:</td>
                  
                  </tr>
                  <tr>
                             <td> <asp:TextBox ID="nombre" runat="server" Width="264px"></asp:TextBox></td>    
                  
                  </tr>
                  <tr>
                  
                            <td colspan="2" align="left" class="style2">PRESENTACION:</td>
                  
                  </tr>  
                  <tr>
                           <td class="style2">    
                           <asp:TextBox ID="presentacion" runat="server" Width="264px"></asp:TextBox>    
                            </td>
  
                                             
                   </tr>
                                <td colspan="2" align="center" class="style2"><asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red"  Visible="false"></asp:Label></td>
                   </tr>
                            
         </table>
                                <asp:Button ID="btnguardar" runat="server" onclick="btnguardar_Click" Text="CREAR" 
                                     Width="117px" />
  

    
    

</div>


  <br /><p style='clear:both;text-align:center'><a>UNIVERSIDA MESOAMERICANA</a></p>
    
    </div>
    </form>
</body>
</html>
