<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="WebApp.app.test.test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Prueba de grid torneo</title>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                 
                Listado de torneos<asp:GridView ID="GridViewTorneos" runat="server" 
                    AutoGenerateColumns="False" DataSourceID="OdsTorneos">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" 
                            SortExpression="Id" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" 
                            SortExpression="Nombre" />
                        <asp:CheckBoxField DataField="Activo" HeaderText="Activo" 
                            SortExpression="Activo" />
                    </Columns>
                </asp:GridView>
                <asp:DetailsView ID="DetailsViewTorneos" runat="server" 
                    AutoGenerateRows="False" DataSourceID="OdsTorneos" DefaultMode="Insert" 
                    Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" 
                            SortExpression="Nombre" />
                        <asp:CheckBoxField DataField="Activo" HeaderText="Activo" 
                            SortExpression="Activo" />
                    </Fields>
                </asp:DetailsView>
                <asp:ObjectDataSource ID="OdsTorneos" runat="server" 
                    DeleteMethod="EliminarTorneo" InsertMethod="AgregarTorneo" 
                    SelectMethod="ListarTodosLosTorneos" TypeName="DataModel.Torneo" 
                    UpdateMethod="ActualizarTorneo">
                    <DeleteParameters>
                        <asp:Parameter Name="idTorneo" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="activo" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="idTorneo" Type="Int32" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="activo" Type="Boolean" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                 
            </div>
        </form>
    </body>
</html>
