<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="crearproducto.aspx.cs" Inherits="LibreriaOnlineUmes.libreria.crearproducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<link href="../css/style1.css" rel="stylesheet" type="text/css" />
<link href="../css/Style2.css" rel="stylesheet" type="text/css" />

            <ul>
                <li><a href="#">INGRESO LOTES</a>
                    <ul>
                    <li><a href="frmingresolote.aspx">CREAR LOTE</a></li>
                    <li><a href="buscarlote.aspx">MODIFICAR</a></li>       
                    <li><a href="entradamedicamento.aspx">INGRESAR LOTE CREADO</a></li>
                    <li><a href="javascript:void(0);" onclick="window.open('http://localhost:26418/aprobacion.aspx', 'popup', 'left=390, top=200, width=340, height=341, resizable=1')">ELIMINAR LOTE</a></li>
                    
                    </ul>
                
                </li>
                <li><a href="#">MOVIMIENTOS</a>
                <ul>
                    <li><a href="menuprincipalfacturas.aspx">INGRESO DE FACTURA</a></li>
                    <li><a href="javascript:void(0);" onclick="window.open('http://localhost:26418/reversionmed.aspx', 'popup', 'left=390, top=200, width=340, height=450, resizable=1')">REVERSION</a></li>        
                    <li><a href="javascript:void(0);" onclick="window.open('http://localhost:26418/ajusteentrada.aspx', 'popup', 'left=390, top=200, width=340, height=450, resizable=1')">AJUSTE ENTRADA</a></li>
                    <li><a href="javascript:void(0);" onclick="window.open('http://localhost:26418/ajustesalida.aspx', 'popup', 'left=390, top=200, width=340, height=450, resizable=1')">AJUSTE SALIDA</a></li>
                    <li><a href="javascript:void(0);" onclick="window.open('http://localhost:26418/aprobacionregistro.aspx', 'popup', 'left=390, top=200, width=340, height=341, resizable=1')">ELIMINAR LOTE</a></li>
                    <li><a href="#">????????</a></li>
                    
                    </ul>
                
                
                
                
                </li>
                
                <li><a href="#">PRODUCTO</a>
                
                <ul>
                <li><a href="javascript:void(0);" onclick="window.open('http://localhost:1341/../libreria/nombreproducto.aspx', 'popup', 'left=390, top=200, width=350, height=400, resizable=1')">NOMBRE PRODUCTO</a></li>
                <li><a href="javascript:void(0);" onclick="window.open('http://localhost:1341/../libreria/crearcodigodelproducto.aspx', 'popup', 'left=390, top=200, width=335, height=400, resizable=1')">CREAR PRODUCTO</a></li>
                <li><a href="javascript:void(0);" onclick="window.open('http://localhost:26418/proveedores.aspx', 'popup', 'left=390, top=200, width=335, height=341, resizable=1')">CREAR PROVEEDOR</a></li>
                
                 </ul>
                    
                </li>



                <li><a href="#">MEDICAMENTO</a>
                
                
                 <ul>
                
                <li><a href="javascript:void(0);" onclick="window.open('http://localhost:26418/crearmedicamento.aspx', 'popup', 'left=390, top=200, width=335, height=341, resizable=1')">CREAR MEDICAMENTO</a></li>

                </ul>
                </li>
                
              
               
                      
            </ul>   
        
        </div>

</asp:Content>
