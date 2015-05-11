<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/main.Master" AutoEventWireup="true" CodeBehind="_default.aspx.cs" Inherits="WebApp.app._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>P&aacute;gina de inicio</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row">
        <h1>Bienvenido</h1>
        <h3> Elige una de las secciones para comenzar </h3>
    </div>
    <div class="row">
        <div class="col-xs-5">
            <asp:Button id="btn_administracion_equipos" Text="Administraci&oacute;n Equipos" class="btn btn-primary col-xs-12" runat="server" />
        </div>
        <div class="col-xs-5">
            <asp:Button id="btn_resumen_equipos" Text="Resumen Equipos" class="btn btn-primary col-xs-12" runat="server" />
        </div>        
    </div>
</asp:Content>
