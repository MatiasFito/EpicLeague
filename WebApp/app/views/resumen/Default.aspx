<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/ResumenMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp.app.views.resumen.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="TeamListDataSource">
        <Columns>
            <asp:BoundField DataField="TeamName" HeaderText="Equipo" ReadOnly="True" 
                SortExpression="TournamentName" />
            <asp:BoundField DataField="TournamentName" HeaderText="Torneo" 
                SortExpression="TournamentName" />
        </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="TeamListDataSource" runat="server" 
        SelectMethod="GetAll" TypeName="Model.orm.TeamORM"></asp:ObjectDataSource>
    </form>
</asp:Content>
