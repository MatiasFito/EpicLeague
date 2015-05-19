<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/AdministracionMaster.Master" AutoEventWireup="true" CodeBehind="CreacionJugadores.aspx.cs" Inherits="WebApp.app.views.administracion.CreacionJugadores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <h2>Crear un nuevo jugador</h2>
    <form id="form_creacion_jugador" runat="server">
        <div class="form-group">
            <asp:Label ID="lbl_nombre_jugador" for="txtbox_nombre_jugador" Text="Nombre del Jugador" runat="server"></asp:Label>
            <asp:TextBox ID="txtbox_nombre_jugador" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtbox_nombre_jugador" ErrorMessage="El campo es requerido"></asp:RequiredFieldValidator> 
        </div>
        <div class="form-group">
            <asp:Label ID="lbl_apellido_jugador" for="txtbox_apellido_jugador" Text="Apellido del Jugador" runat="server"></asp:Label>
            <asp:TextBox ID="txtbox_apellido_jugador" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbox_apellido_jugador" ErrorMessage="El campo es requerido"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="lbl_edad" Text="Edad" runat="server"></asp:Label>
            <asp:TextBox ID="txtbox_edad" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtbox_edad" ErrorMessage="El campo de edad solo puede contener numeros" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="lbl_equipo" Text="Equipo" runat="server"></asp:Label>
            <asp:DropDownList ID="dropdown_equipo" runat="server">
                <asp:ListItem Value="" Text="Elija Equipo"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat=server ControlToValidate="dropdown_equipo" ErrorMessage="El campo es requerido"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToValidate="dropdown_equipo" Operator="NotEqual" ValueToCompare='Elija Equipo'></asp:CompareValidator>
        </div>
        <div class="form-group">
            <asp:Button ID="btn_submit_creacion_jugador" class="btn btn-primary" 
                runat="server" Text="Enviar" onclick="btn_submit_creacion_jugador_Click" />
        </div>
    </form>
</asp:Content>
