<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/ResumenMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp.app.views.resumen.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Epic League</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li><a href="/index.aspx">Inicio</a></li>
        <li class="active"><a href="#">Resumen de Equipos</a></li>
        <li><a href="#">Contacto</a></li>
      </ul>
    </div>
  </div>
</nav>
</asp:Content>
