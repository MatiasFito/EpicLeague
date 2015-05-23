<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/AdministracionMaster.Master" AutoEventWireup="true" CodeBehind="CreacionJugadores.aspx.cs" Inherits="WebApp.app.views.administracion.CreacionJugadores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <div class="alphadiv">
        <div class="row">
            <div class="col-xs-12">
                <h2>Crear un nuevo jugador</h2>
                <form role="form" class="form-horizontal" id="form_creacion_jugador" runat="server">
                    <div class="form-group">
                        <asp:Label class="control-label col-sm-2" ID="lbl_nombre_jugador" for="txtbox_nombre_jugador" Text="Nombre del Jugador" runat="server"></asp:Label>
                        <div class="col-sm-8">
                            <asp:TextBox class="form-control" ID="txtbox_nombre_jugador" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator class="alert-text" SetFocusOnError="True" runat="server" ControlToValidate="txtbox_nombre_jugador"  Display="Dynamic" Text="* Nombre del jugador es requerido" ErrorMessage="Nombre del jugador es requerido"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label class="control-label col-sm-2" ID="lbl_apellido_jugador" for="txtbox_apellido_jugador" Text="Apellido del Jugador" runat="server"></asp:Label>
                        <div class="col-sm-8">
                            <asp:TextBox class="form-control" ID="txtbox_apellido_jugador" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator class="alert-text" SetFocusOnError="True" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbox_apellido_jugador" Display="Dynamic" Text="* Apellido del jugador es requerido" ErrorMessage="Apellido del jugador es requerido"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label class="control-label col-sm-2" ID="lbl_edad" Text="Edad" runat="server"></asp:Label>
                        <div class="col-sm-8">
                            <asp:TextBox class="form-control" ID="txtbox_edad" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator class="alert-text" SetFocusOnError="True" runat="server" ControlToValidate="txtbox_edad" Display="Dynamic" Text="* El campo de edad solo puede contener numeros" ErrorMessage="El campo de edad solo puede contener numeros" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label class="control-label col-sm-2" ID="lbl_equipo" Text="Equipo" runat="server"></asp:Label>
                        <div class="col-sm-8">
                            <asp:DropDownList class="form-control" ID="dropdown_equipo" runat="server">
                                <asp:ListItem Value="" Text="Elija Equipo"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" class="alert-text" SetFocusOnError="True" ControlToValidate="dropdown_equipo" Display="Dynamic" Text="* El equipo es requerido" ErrorMessage="El equipo es requerido"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" class="alert-text" SetFocusOnError="True" runat="server" ErrorMessage="CompareValidator" ControlToValidate="dropdown_equipo" Operator="NotEqual" ValueToCompare='Elija Equipo'></asp:CompareValidator>
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
                            <asp:Button ID="btn_submit_creacion_jugador" class="btn btn-primary" runat="server" Text="Enviar" OnClick="btn_submit_creacion_jugador_Click" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
