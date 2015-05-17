<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/ResumenMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp.app.views.resumen.Default" %>

<%@ Register src="../userControls/ucListadoEquipos.ascx" tagname="ucListadoEquipos" tagprefix="uc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <uc1:ucListadoEquipos ID="ucListadoEquipos1" runat="server" />
</asp:Content>
