<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/ResumenMaster.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="WebApp.app.views.resumen.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <form id="form_contact" runat="server">
        <div class="form-group">
            <asp:Label ID="lbl_nombre_completo" runat="server" for="txtbox_nombre_completo" Text="Nombre Completo"></asp:Label>
            <asp:TextBox ID="txtbox_nombre_completo" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="validator_nombre_completo" runat="server" 
                ControlToValidate="txtbox_nombre_completo" 
                ErrorMessage="El nombre completo es un campo requerido"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtbox_nombre_completo" 
                ErrorMessage="El formato del nombre completo es incorrecto" 
                ValidationExpression="^\w+\ (\w+|\w+\ \w+)$"></asp:RegularExpressionValidator>
        </div>    
        <div class="form-group">
            <asp:Label ID="lbl_email" for="txtbox_email" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtbox_email" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="validator_formato_email" runat="server" 
                ControlToValidate="txtbox_email" 
                ErrorMessage="El formato de email es incorrecto" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="validator_requerido_email" runat="server" 
                ControlToValidate="txtbox_email" 
                ErrorMessage="El campo de correo electronico es requerido"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="lbl_comentario" for="txtarea_comentario" runat="server" Text="Comentario"></asp:Label> 
            <textarea id="txtarea_comentario" name="S1" rows="5"></textarea>
        </div>
        <div class="form-group">
             <asp:Button class="btn btn-primary" Text="Enviar" runat="server" ID="btn_submit_contact"/>
        </div>
        </form>
</asp:Content>
