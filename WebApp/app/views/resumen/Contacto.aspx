<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/ResumenMaster.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="WebApp.app.views.resumen.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <form id="form_contact" runat="server">
        <div class="form-group">
            <asp:Label ID="lbl_nombre_completo" runat="server" for="txtbox_nombre_completo" Text="Nombre Completo"></asp:Label>
            <asp:TextBox ID="txtbox_nombre_completo" runat="server"></asp:TextBox>
        </div>    
        <div class="form-group">
            <asp:Label ID="lbl_email" for="txtbox_email" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtbox_email" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="lbl_comentario" for="txtarea_comentario" runat="server" Text="Comentario"></asp:Label> 
            <textarea id="txtarea_comentario" name="S1"></textarea>
        </div>
        <div class="form-group">
             <asp:Button class="btn btn-primary col-lg-4" Text="Enviar" runat="server" ID="btn_submit_contact"/>
        </div>
        </form>
</asp:Content>
