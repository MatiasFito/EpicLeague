<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApp.app.views._default" %>

<%@ Register src="app/views/userControls/ucFooter.ascx" tagname="ucFooter" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" class="full">
    <head runat="server">
        <link href="/app/styles/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="/app/styles/main.css" rel="Stylesheet" type="text/css" />
        <script type="text/javascript" src="/app/scripts/jquery-2.1.4.min.js"> </script>
        <script type="text/javascript" src="/app/scripts/index.js"> </script>
        <title>Inicio</title>
    </head>
    <body class="container-fluid">
        <div class="row">
            <div class="col-xs-12">
                <img class="img-responsive center-block logo" src="/app/img/epicleagueescudo.svg" alt="Imagen del escudo de Epic League" />
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <button class="btn btn-primary center-block" id="btn_administracion_equipos"> Administraci&oacute;n Equipos </button>
            </div>
            <div class="col-lg-6">
                <button class="btn btn-primary center-block" id="btn_resumen_equipos"> Resumen Equipos </button>
            </div>
        </div>
        <div class="row">
            <uc1:ucFooter ID="ucFooter1" runat="server" />
        </div>
    </body>
</html>
