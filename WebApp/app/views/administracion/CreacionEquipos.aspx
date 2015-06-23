<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/AdministracionMaster.Master" AutoEventWireup="true" CodeBehind="CreacionEquipos.aspx.cs" Inherits="WebApp.app.views.administracion.CreacionEquipos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
	<div class="alphadiv">
		<div class="row">
			<div class="col-lg-12">
				<h2>Crear un nuevo equipo</h2>
                <form runat="server">
                    
                <asp:GridView ID="GridViewEquipo" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Id" DataSourceID="ObjectDataSourceEquipo">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" 
                            ReadOnly="True" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" 
                            SortExpression="Nombre" />
                        <asp:BoundField DataField="MontoAbonado" HeaderText="MontoAbonado" 
                            SortExpression="MontoAbonado" />
                        <asp:BoundField DataField="IdTorneo" HeaderText="IdTorneo" 
                            SortExpression="IdTorneo" />
                    </Columns>
                </asp:GridView>
                <asp:DetailsView ID="DetailsViewEquipo" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="Id" DataSourceID="ObjectDataSourceEquipo" DefaultMode="Insert" 
                    Height="50px" Width="125px">
                    <Fields>
                        <asp:TemplateField HeaderText="Id" SortExpression="Id">
                            <InsertItemTemplate>
                                <asp:TextBox ID="InsertEquipoId" runat="server" Text='<%# Bind("Id") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredEquipoId" ValidationGroup="InsertEquipo" ControlToValidate="InsertEquipoId" runat="server" Text="*" ErrorMessage="El campo Id es obligatorio"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegexId" ValidationGroup="InsertEquipo" ControlToValidate="InsertEquipoId" ValidationExpression="^[0-9]+$" runat="server" Text="*" ErrorMessage="El campo de ID solo puede contener numeros"></asp:RegularExpressionValidator>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre" SortExpression="Nombre">
                            <InsertItemTemplate>
                                <asp:TextBox ID="InsertEquipoNombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredEquipoNombre" ValidationGroup="InsertEquipo" ControlToValidate="InsertEquipoNombre" runat="server" Text="*" ErrorMessage="El campo Nombre es obligatorio"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="MontoAbonado" SortExpression="MontoAbonado">
                            <InsertItemTemplate>
                                <asp:TextBox ID="InsertEquipoMontoAbonado" runat="server" Text='<%# Bind("MontoAbonado") %>'></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegexMontoAbonado" ValidationGroup="InsertEquipo" ControlToValidate="InsertEquipoMontoAbonado" ValidationExpression="^[0-9]*$" runat="server" Text="*" ErrorMessage="El campo de MontoAbonado solo puede contener numeros"></asp:RegularExpressionValidator>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="IdTorneo" SortExpression="IdTorneo">
                            <InsertItemTemplate>
                                <asp:TextBox ID="InsertEquipoIdTorneo" runat="server" Text='<%# Bind("IdTorneo") %>'></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegexIdTorneo" ValidationGroup="InsertEquipo" ControlToValidate="InsertEquipoIdTorneo" ValidationExpression="^[0-9]*$" runat="server" Text="*" ErrorMessage="El campo de IdTorneo solo puede contener numeros"></asp:RegularExpressionValidator>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowInsertButton="True" ValidationGroup="InsertEquipo" />
                    </Fields>
                </asp:DetailsView>
                <asp:ObjectDataSource ID="ObjectDataSourceEquipo" runat="server" 
                    DeleteMethod="EliminarEquipo" InsertMethod="AgregarEquipo" 
                    SelectMethod="ListarEquipos" TypeName="DataModel.Equipo" 
                    UpdateMethod="ActualizarEquipo">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="montoAbonado" Type="Int32" />
                        <asp:Parameter Name="idTorneo" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter DefaultValue="true" Name="IncluirEquiposDeEquiposInactivos" 
                            Type="Boolean" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="montoAbonado" Type="Int32" />
                        <asp:Parameter Name="idTorneo" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <asp:ValidationSummary ID="ValidationSummaryInsertEquipo" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="InsertEquipo" />
                </form>
			</div>
		</div>
	</div>
</asp:Content>
