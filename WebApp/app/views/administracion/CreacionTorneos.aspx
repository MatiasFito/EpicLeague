<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/AdministracionMaster.Master" AutoEventWireup="true" CodeBehind="CreacionTorneos.aspx.cs" Inherits="WebApp.app.views.administracion.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="alphadiv">
        <div class="row">
            <div class="col-lg-12">
                <form role="form" class="form-inline" runat="server">
                    <h2>Crear un nuevo torneo</h2>
                    <div class="alphadiv subgrupo">
                        <div class="form-group">
                            <asp:Label ID="lbl_torneo_id" for="txtbox_torneo_id" Text="Id del Toreno" runat="server"></asp:Label>
                            <input type="text" class="form-control" ID="txtbox_torneo_id" runat="server" required />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lbl_torneo_nombre" for="txtbox_torneo_nombre" Text="Nombre del Torneo" runat="server"></asp:Label>
                            <input type="text" class="form-control" ID="txtbox_torneo_nombre" runat="server" required />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lbl_torneo_esactivo" Text="Activo" runat="server"></asp:Label>
                            <asp:CheckBox ID="chk_torneo_esactivo" runat="server" />
                        </div>
                        <div class="form-group">
                            <asp:Button ID="btn_submit_creacion_torneo" class="btn btn-primary" runat="server" Text="Enviar" OnClick="btn_submit_creacion_torneo_Click1"/>
                        </div>
                    </div>

                    <div class="col-lg-12">
                    <asp:GridView ID="GridViewTorneos" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="OdsTorneos" CssClass="table table-hover" AllowPaging="True" 
                            DataKeyNames="Id">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="true" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:CheckBoxField DataField="Activo" HeaderText="Activo" SortExpression="Activo" />
                        </Columns>
                    </asp:GridView>

                    <asp:ObjectDataSource ID="OdsTorneos" runat="server" DeleteMethod="EliminarTorneo" InsertMethod="AgregarTorneo" SelectMethod="ListarTodosLosTorneos" TypeName="DataModel.Torneo" UpdateMethod="ActualizarTorneo">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                            <asp:Parameter Name="nombre" Type="String" />
                            <asp:Parameter Name="activo" Type="Boolean" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                            <asp:Parameter Name="nombre" Type="String" />
                            <asp:Parameter Name="activo" Type="Boolean" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                    <asp:ValidationSummary ID="ValidationSummaryEditTorneo" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="EditTorneo" />
                    <asp:ValidationSummary ID="ValidationSummaryInsertTorneo" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="InsertTorneo" />
                        </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
