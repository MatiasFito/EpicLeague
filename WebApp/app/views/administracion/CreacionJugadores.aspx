<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/AdministracionMaster.Master" AutoEventWireup="true" CodeBehind="CreacionJugadores.aspx.cs" Inherits="WebApp.app.views.administracion.CreacionJugadores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <h2>Crear un nuevo jugador</h2>
    <form id="form_creacion_jugador" runat="server">
        <div class="form-group">
            <asp:Label ID="lbl_nombre_jugador" for="txtbox_nombre_jugador" Text="Nombre del Jugador" runat="server"></asp:Label>
            <asp:TextBox ID="txtbox_nombre_jugador" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="lbl_apellido_jugador" for="txtbox_apellido_jugador" Text="Apellido del Jugador" runat="server"></asp:Label>
            <asp:TextBox ID="txtbox_apellido_jugador" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="lbl_edad" Text="Edad" runat="server"></asp:Label>
            <asp:TextBox ID="txtbox_edad" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="lbl_equipo" Text="Equipo" runat="server"></asp:Label>
            <asp:DropDownList ID="dropdown_equipo" runat="server">
                <asp:ListItem>Elija Equipo</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <asp:Button ID="btn_submit_creacion_jugador" class="btn btn-primary" 
                runat="server" Text="Enviar" onclick="btn_submit_creacion_jugador_Click" />
        </div>
    </form>
</asp:Content>
