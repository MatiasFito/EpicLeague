<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApp.app.views._default" %>

<%@ Register src="app/views/userControls/ucFooter.ascx" tagname="ucFooter" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" class="full">
    <head runat="server">
        <link href="/app/styles/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="/app/styles/main.css" rel="Stylesheet" type="text/css" />
        <title>Inicio</title>
    </head>
    <body class="container">
        <form id="form_index" runat="server">
            <div class="row">
                <h1> Bienvenido a la liga </h1>
                <h3> Seleccione una opcion para comenzar</h3>
            </div>
            <div class="row">
                <asp:Button class="btn btn-primary col-lg-4" Text="Administracion Equipos" runat="server" ID="btn_administracion_equipos" OnClick="btn_administracion_equipos_Click" />
                <span class="col-lg-1"></span>
                <asp:Button class="btn btn-primary col-lg-4" Text="Resumen Equipos" runat="server" ID="btn_resumen_equipos" OnClick="btn_resumen_equipos_Click" />
            </div>
        </form>
        <div class="row">
            <uc1:ucFooter ID="ucFooter1" runat="server" />
        </div>
    </body>
</html>
