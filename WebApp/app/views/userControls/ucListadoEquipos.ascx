<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucListadoEquipos.ascx.cs" Inherits="WebApp.app.views.userControls.ucListadoEquipos" %>

<div class="row">
    <p class="col-xs-12">
       
        <asp:GridView ID="GridView1" runat="server" DataSourceID="team_tournament_DataSource">
        </asp:GridView>
        <asp:ObjectDataSource ID="team_tournament_DataSource" runat="server"></asp:ObjectDataSource>
       
    </p>

</div>
