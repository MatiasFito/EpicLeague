<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/AdministracionMaster.Master" AutoEventWireup="true" CodeBehind="CreacionTorneos.aspx.cs" Inherits="WebApp.app.views.administracion.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <h2>Crear un nuevo torneo</h2>
    <form id="form_creacion_torneo" runat="server">
        <div class="form-group">
            <asp:Label ID="lbl_nombre_torneo" for="txtbox_nombre_torneo" Text="Nombre del Torneo" runat="server"></asp:Label>
            <asp:TextBox ID="txtbox_nombre_torneo" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="lbl_estado_torneo" for="dropdown_estado_torneo" Text="Estado del Torneo" runat="server"></asp:Label>
            <asp:DropDownList ID="dropdown_estado_torneo" runat="server">
                <asp:ListItem Selected="True" Value="Active">Activo</asp:ListItem>
                <asp:ListItem Value="Inactive">Inactivo</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <asp:Button ID="btn_submit_creacion_torneo" class="btn btn-primary" runat="server" Text="Enviar" />
        </div>
    </form>
</asp:Content>
