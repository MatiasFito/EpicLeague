<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/AdministracionMaster.Master" AutoEventWireup="true" CodeBehind="CreacionTorneos.aspx.cs" Inherits="WebApp.app.views.administracion.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="alphadiv">
        <div class="row">
            <div class="col-lg-12">
                <h2>Crear un nuevo torneo</h2>
                <form role="form" class="form-horizontal" id="form_creacion_torneo" runat="server">
                    <div class="form-group">
                        <asp:Label class="control-label col-sm-2" ID="lbl_nombre_torneo" for="txtbox_nombre_torneo" Text="Nombre del Torneo" runat="server"></asp:Label>
                        <div class="col-sm-8">
                            <asp:TextBox class="form-control" ID="txtbox_nombre_torneo" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator class="alert-text" SetFocusOnError="True" ID="TournamentNameValidator" runat="server" ControlToValidate="txtbox_nombre_torneo" ValidationExpression="^[a-zA-Z]+[a-zA-Z\ ]*$" ErrorMessage="El nombre del torneo solo puede contener letras y espacios"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator class="alert-text" SetFocusOnError="True" runat="server" ControlToValidate="txtbox_nombre_torneo" ErrorMessage="El nombre del torneo es un campo requerido"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label class="control-label col-sm-2" ID="lbl_estado_torneo" for="dropdown_estado_torneo" Text="Estado del Torneo" runat="server"></asp:Label>
                        <div class="col-sm-8">
                            <asp:CheckBox ID="chkbox_estado_torneo" runat="server" Checked="True" />
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
                            <asp:Button ID="btn_submit_creacion_torneo" class="btn btn-primary"
                                runat="server" Text="Enviar" OnClick="btn_submit_creacion_torneo_Click" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
