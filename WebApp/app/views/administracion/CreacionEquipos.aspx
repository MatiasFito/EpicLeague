<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/AdministracionMaster.Master" AutoEventWireup="true" CodeBehind="CreacionEquipos.aspx.cs" Inherits="WebApp.app.views.administracion.CreacionEquipos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
	<div class="alphadiv">
		<div class="row">
			<div class="col-lg-12">
				<h2>Crear un nuevo equipo</h2>
				<form role="form" class="form-horizontal" id="form_creacion_equipo" runat="server">
					<div class="form-group">
						<asp:Label class="control-label col-sm-2" ID="lbl_nombre_equipo" for="txtbox_nombre_equipo" Text="Nombre del Equipo" runat="server"></asp:Label>
						<div class="col-sm-8">
							<asp:TextBox class="form-control" ID="txtbox_nombre_equipo" runat="server"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbox_nombre_equipo" ErrorMessage="El nombre de equipo es un campo requerido"></asp:RequiredFieldValidator>
						</div>
                    </div>
					<div class="form-group">
					    <asp:Label class="control-label col-sm-2" ID="lbl_torneo" Text="Torneo" runat="server"></asp:Label>
					    <div class="col-sm-8">
					    	<asp:DropDownList class="form-control" ID="dropdown_torneo" runat="server">
						    	<asp:ListItem Text="Elija Torneo" Value=""></asp:ListItem>
						    </asp:DropDownList>
					    </div>
                    </div>
					<div class="form-group">
						<asp:Label class="control-label col-sm-2" ID="lbl_monto" Text="Monto" runat="server"></asp:Label>
						<div class="col-sm-8">
							<asp:TextBox class="form-control" ID="txtbox_monto" runat="server"></asp:TextBox>
							<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtbox_monto" ValidationExpression="^\d+\.\d{2}$" ErrorMessage="El formato del monto debe ser la parte entera seguida de un punto y dos dígitos decimales, ej:100.50"></asp:RegularExpressionValidator>
						</div>
					</div>
					<div class="form-group">
						<div class="control-label col-sm-2">
							<asp:Button ID="btn_submit_creacion_equipo" class="btn btn-primary"
								runat="server" Text="Enviar" OnClick="btn_submit_creacion_equipo_Click" />
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</asp:Content>
