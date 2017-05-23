<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="crearproducto.aspx.cs" Inherits="LibreriaOnlineUmes.libreria.crearproducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<link href="../css/style1.css" rel="stylesheet" type="text/css" />
<link href="../css/Style2.css" rel="stylesheet" type="text/css" />

            <ul>
                <li><a href="#">INGRESO LOTES</a>
                    <ul>
                    <li><a href="javascript:void(0);" onclick="window.open('http://localhost:1341/../libreria/crearlote.aspx', 'popup', 'left=390, top=200, width=350, height=400, resizable=1')">CREAR LOTE</a></li>
                    <li><a href="javascript:void(0);" onclick="window.open('http://localhost:1341/../libreria/registrooperacionconproveedor.aspx', 'popup', 'left=390, top=200, width=350, height=400, resizable=1')">INGRESO LOTE YA CREADO</a></li>     
                    
                    
                    
                    </ul>
                
                </li>
                <li><a href="#">MOVIMIENTOS</a>
                <ul>
                    
                    <li><a href="javascript:void(0);" onclick="window.open('http://localhost:26418/reversionmed.aspx', 'popup', 'left=390, top=200, width=340, height=450, resizable=1')">REVERSION</a></li>        
                    
                    
                    </ul>
                
                
                
                
                </li>
                
                <li><a href="#">PRODUCTO</a>
                
                <ul>
                <li><a href="javascript:void(0);" onclick="window.open('http://localhost:1341/../libreria/nombreproducto.aspx', 'popup', 'left=390, top=200, width=350, height=400, resizable=1')">NOMBRE PRODUCTO</a></li>
                <li><a href="javascript:void(0);" onclick="window.open('http://localhost:1341/../libreria/crearcodigodelproducto.aspx', 'popup', 'left=390, top=200, width=335, height=400, resizable=1')">CREAR PRODUCTO</a></li>
                <li><a href="javascript:void(0);" onclick="window.open('http://localhost:1341/../libreria/crearproveedor.aspx', 'popup', 'left=390, top=200, width=335, height=341, resizable=1')">CREAR PROVEEDOR</a></li>
                
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
