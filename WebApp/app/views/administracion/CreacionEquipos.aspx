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
                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
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
                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" 
                            SortExpression="Nombre" />
                        <asp:BoundField DataField="MontoAbonado" HeaderText="MontoAbonado" 
                            SortExpression="MontoAbonado" />
                        <asp:BoundField DataField="IdTorneo" HeaderText="IdTorneo" 
                            SortExpression="IdTorneo" />
                        <asp:CommandField ShowInsertButton="True" />
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
                    
                </form>
			</div>
		</div>
	</div>
</asp:Content>
