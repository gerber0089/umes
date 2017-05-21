<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Site1.aspx.cs" Inherits="LibreriaOnlineUmes.libreria.Site1" %>


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
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        System.Globalization.CultureInfo cultureInfo = new System.Globalization.CultureInfo("es-PA");
        cultureInfo.DateTimeFormat.ShortDatePattern = "dd/MM/yyyy";
        System.Threading.Thread.CurrentThread.CurrentUICulture = cultureInfo;
        System.Threading.Thread.CurrentThread.CurrentCulture = cultureInfo;
    }
</script>
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
