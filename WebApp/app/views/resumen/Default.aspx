<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/ResumenMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp.app.views.resumen.Default" %>

<%@ Register src="../userControls/ucListadoEquipos.ascx" tagname="ucListadoEquipos" tagprefix="uc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
     <div class="alphadiv">
        <div class="row">
            <div class="col-lg-12">
    <uc1:ucListadoEquipos ID="ucListadoEquipos1" runat="server" />
                </div>
            </div>
         </div>
</asp:Content>
