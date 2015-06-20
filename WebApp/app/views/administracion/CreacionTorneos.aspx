<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/AdministracionMaster.Master" AutoEventWireup="true" CodeBehind="CreacionTorneos.aspx.cs" Inherits="WebApp.app.views.administracion.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="alphadiv">
        <div class="row">
            <div class="col-lg-12">
                <h2>Crear un nuevo torneo</h2>
                <form runat="server">
                    <asp:GridView 
                        ID="GridViewTorneos" runat="server" 
                        AutoGenerateColumns="False" DataSourceID="OdsTorneos" DataKeyNames="Id">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="true" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" 
                                SortExpression="Nombre" />
                            <asp:CheckBoxField DataField="Activo" HeaderText="Activo" 
                                SortExpression="Activo" />
                        </Columns>
                    </asp:GridView>
                    <asp:DetailsView ID="DetailsViewTorneos" runat="server" 
                        AutoGenerateRows="False" DataSourceID="OdsTorneos" DefaultMode="Insert" 
                        Height="50px" Width="125px" DataKeyNames="Id">
                        <Fields>
                            <asp:TemplateField HeaderText="Id" SortExpression="Id">
                                <InsertItemTemplate>
                                    <asp:TextBox ID="InsertId" runat="server" Text='<%# Bind("Id") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="InsertId" ErrorMessage="El Id es un campo requerido">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ControlToValidate="InsertId" 
                                        ErrorMessage="El campo 'Id' solo puede estar compuesto por  numeros positivos" 
                                        ValidationExpression="^[0-9]+$">*</asp:RegularExpressionValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nombre" SortExpression="Nombre">
                                <InsertItemTemplate>
                                    <asp:TextBox ID="InsertNombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="InsertNombre" ErrorMessage="El campo 'Nombre' es requerido">*</asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Activo" SortExpression="Activo">
                                <InsertItemTemplate>
                                    <asp:CheckBox ID="InsertActivo" runat="server" Checked='<%# Bind("Activo") %>' />
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:ObjectDataSource ID="OdsTorneos" runat="server" 
                        DeleteMethod="EliminarTorneo" InsertMethod="AgregarTorneo" 
                        SelectMethod="ListarTodosLosTorneos" TypeName="DataModel.Torneo" 
                        UpdateMethod="ActualizarTorneo">
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
                </form>
            </div>
        </div>
    </div>
</asp:Content>
