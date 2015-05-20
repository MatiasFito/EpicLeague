<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/ResumenMaster.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="WebApp.app.views.resumen.Contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <div class="alphadiv">
        <div class="row">
            <div class="col-lg-12">
                <form role="form" class="form-horizontal" id="form_contact" runat="server">
                    <div class="form-group">
                        <asp:Label class="control-label col-sm-2" ID="lbl_nombre_completo" runat="server" for="txtbox_nombre_completo" Text="Nombre Completo"></asp:Label>
                        <div class="col-sm-8">
                            <asp:TextBox class="form-control" ID="txtbox_nombre_completo" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator class="alert-text" SetFocusOnError="True" ID="validator_nombre_completo" runat="server" ControlToValidate="txtbox_nombre_completo" ErrorMessage="El nombre completo es un campo requerido"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator class="alert-text" SetFocusOnError="True" ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtbox_nombre_completo" ErrorMessage="El formato del nombre completo es incorrecto" ValidationExpression="^\w+\ (\w+|\w+\ \w+)$"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label class="control-label col-sm-2" ID="lbl_email" for="txtbox_email" runat="server" Text="Email"></asp:Label>
                        <div class="col-sm-8">
                            <asp:TextBox class="form-control" ID="txtbox_email" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator class="alert-text" SetFocusOnError="True" ID="validator_formato_email" runat="server" ControlToValidate="txtbox_email" ErrorMessage="El formato de email es incorrecto" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator class="alert-text" SetFocusOnError="True" ID="validator_requerido_email" runat="server" ControlToValidate="txtbox_email" ErrorMessage="El campo de correo electronico es requerido"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label class="control-label col-sm-2" ID="lbl_comentario" for="txtbox_comentario" runat="server" Text="Comentario"></asp:Label>
                        <div class="col-sm-8">
                            <asp:TextBox CssClass="form-control" ID="txtbox_comentario" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator class="alert-text" SetFocusOnError="True" runat="server" ControlToValidate="txtbox_comentario" ErrorMessage="El comentario es un campo requerido"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <span class="control-label col-sm-2"></span>
                        <div class="col-sm-8">
                            <asp:ValidationSummary runat="server" control-label="col-sm-8" ID="ValidationSummary1" DisplayMode="BulletList" ShowMessageBox="False" ShowSummary="True" CssClass="alert alert-danger" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="control-label col-sm-2">
                            <asp:Button class="btn btn-primary" Text="Enviar" runat="server" ID="btn_submit_contact" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
