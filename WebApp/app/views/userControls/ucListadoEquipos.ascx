<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucListadoEquipos.ascx.cs" Inherits="WebApp.app.views.userControls.ucListadoEquipos" %>

<form id="form_lista_equipos" runat="server">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="TeamListDataSource">
    <Columns>
        <asp:BoundField DataField="TeamName" HeaderText="Equipo" 
            SortExpression="TeamName" />
        <asp:BoundField DataField="TournamentName" HeaderText="Torneo" 
            SortExpression="TeamName" />
        <asp:TemplateField HeaderText="Estado del Torneo">
            <ItemTemplate><%# (Boolean.Parse(Eval("TournamentStatus").ToString())) ? "Activo" : "Inactivo" %></ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:ObjectDataSource ID="TeamListDataSource" runat="server" 
    SelectMethod="GetAll" TypeName="Model.orm.TeamORM"></asp:ObjectDataSource>
</form>
