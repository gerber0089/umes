<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stock.aspx.cs" Inherits="LibreriaOnlineUmes.libreria.stock" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="~/css/style.css" rel="stylesheet" type="text/css" />
    <link href="../css/style1.css" rel="stylesheet" type="text/css" />
    <link href="../css/Style2.css" rel="stylesheet" type="text/css" />
   
    <style>
      h4,h6
      {
          color:White;
          
          }
    </style>
</head>
<body>
    <form id="Form1" runat="server">
    <div class="page">
        <div class="header">
            <img src="/imagenes/8fa898dfa5442e1370df3cb193ca4db8.png" style="height: 121px; width: 463px" />
            <div class="title">
               <h1>ADMINISTRADOR</h1>
            </div>
            <div class="loginDisplay">
                &nbsp;<asp:Label ID="txtnombre" runat="server" Text=""></asp:Label>
                </br>
                <asp:Button ID="lbtlogout" runat="server" Text="Logout" Height="21px" 
                    style="margin-left: 0px" onclick="lbtlogout_Click" Width="96px" />
            
            </div>
            <div class="clear hideSkiplink">
                 <ul>
                <li><a href="#">INGRESO LOTES</a>
                    <ul>
                    <li><a href="javascript:void(0);" onclick="window.open('http://localhost:1341/../libreria/crearlote.aspx', 'popup', 'left=390, top=200, width=350, height=400, resizable=1')">CREAR LOTE</a></li>
                    <li><a href="javascript:void(0);" onclick="window.open('http://localhost:1341/../libreria/registrooperacionconproveedor.aspx', 'popup', 'left=390, top=200, width=350, height=400, resizable=1')">INGRESO LOTE YA CREADO</a></li>     
                    
                        
              
                    
                    </ul>
                
                </li>
                <li><a href="#">MOVIMIENTOS</a>
                <ul>
                    
                    <li><a href="../libreria/stock.aspx">VERIFICAR STOCK</a></li>        
                    
                    
                    </ul>
                
                
                
                
                </li>
                
                <li><a href="#">PRODUCTO</a>
                
                <ul>
                <li><a href="javascript:void(0);" onclick="window.open('http://localhost:1341/../libreria/nombreproducto.aspx', 'popup', 'left=390, top=200, width=350, height=400, resizable=1')">NOMBRE PRODUCTO</a></li>
                <li><a href="javascript:void(0);" onclick="window.open('http://localhost:1341/../libreria/crearcodigodelproducto.aspx', 'popup', 'left=390, top=200, width=335, height=400, resizable=1')">CREAR PRODUCTO</a></li>
                <li><a href="javascript:void(0);" onclick="window.open('http://localhost:1341/../libreria/crearproveedor.aspx', 'popup', 'left=390, top=200, width=335, height=341, resizable=1')">CREAR PROVEEDOR</a></li>
                
                 </ul>
                    
                </li>



                <li><a href="../libreria/a2d1m5i9n7i6s7t0r7a9do4r.aspx">REGRESAR A MENU</a>
                
                
                 <ul>
                
               

                </ul>
                </li>
                
              
               
                      
            </ul>   

            </div>
        </div>
        <div class="main">
        <br/>
        <br/>
        <h5><asp:Label ID="Label1" runat="server" Text="Label">Seleccione lote</asp:Label></h5>
        <br/>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="241px" 
                AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="idlote" 
                DataValueField="idlote">
            </asp:DropDownList>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:libreriaConnectionString %>" 
                SelectCommand="SELECT idlote FROM nuevolote ORDER BY idlote">
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="3" DataKeyNames="idlote" 
                DataSourceID="SqlDataSource2" GridLines="Vertical" 
                Width="843px" BackColor="White" BorderColor="#999999" BorderStyle="None" 
                BorderWidth="1px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="idlote" HeaderText="LOTE" ReadOnly="True" 
                        SortExpression="idlote" />
                    <asp:BoundField DataField="codprod" HeaderText="CODIGO PRODUCTO" 
                        SortExpression="codprod" />
                    <asp:BoundField DataField="saldo" HeaderText="STOCK" SortExpression="saldo" />
                    <asp:BoundField DataField="preciouti" HeaderText="PRECIO VENTA" 
                        SortExpression="preciouti" />
                    <asp:BoundField DataField="valor" HeaderText="TOTAL" SortExpression="valor" />
                    <asp:BoundField DataField="preciocompra" HeaderText="PRECIO COMPRA" 
                        SortExpression="preciocompra" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:libreriaConnectionString %>" 
                SelectCommand="SELECT idlote, codprod, saldo, preciouti, valor, preciocompra FROM nuevolote WHERE idlote = @idlote">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="idlote" 
                        PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            
        </div>
        <div class="clear">
        
        

        </div>
    </div>
    <div class="footer">
        <h6>PROYECTO LIBRERIA UMESIA EN INFORMATICA</h6>
    </div>
    </form>

</body>
</html>
