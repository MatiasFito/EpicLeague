﻿<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/AdministracionMaster.Master" AutoEventWireup="true" CodeBehind="CreacionEquipos.aspx.cs" Inherits="WebApp.app.views.administracion.CreacionEquipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <h2>Crear un nuevo equipo</h2>
    <form id="form_creacion_equipo" runat="server">
        <div class="form-group">
            <asp:Label ID="lbl_nombre_equipo" for="txtbox_nombre_equipo" Text="Nombre del Equipo" runat="server"></asp:Label>
            <asp:TextBox ID="txtbox_nombre_equipo" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtbox_nombre_equipo" ErrorMessage="El nombre de equipo es un campo requerido"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="lbl_torneo" Text="Torneo" runat="server"></asp:Label>
            <asp:DropDownList ID="dropdown_torneo" runat="server">
                <asp:ListItem>Elija Torneo</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <asp:Label ID="lbl_monto" Text="Monto" runat="server"></asp:Label>
            <asp:TextBox ID="txtbox_monto" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtbox_monto"  ValidationExpression="^\d+\.\d{2}$" ErrorMessage="El formato del monto debe ser la parte entera seguida de un punto y dos dígitos decimales, ej:100.50"></asp:RegularExpressionValidator>
        </div>
        <div class="form-group">
            <asp:Button ID="btn_submit_creacion_equipo" class="btn btn-primary" 
                runat="server" Text="Enviar" onclick="btn_submit_creacion_equipo_Click" />
        </div>
    </form>
</asp:Content>
