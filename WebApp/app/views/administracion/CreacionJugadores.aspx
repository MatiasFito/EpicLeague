<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/AdministracionMaster.Master" AutoEventWireup="true" CodeBehind="CreacionJugadores.aspx.cs" Inherits="WebApp.app.views.administracion.CreacionJugadores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <div class="alphadiv">
        <div class="row">
            <div class="col-xs-12">
                <h2>Crear un nuevo jugador</h2>
                <form id="Form1" runat="server">
                <asp:GridView ID="GridViewJugador" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Id" DataSourceID="ObjectDataSourceJugador">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ValidationGroup="EditJugador" />
                        <asp:TemplateField HeaderText="Id" SortExpression="Id">
                            <EditItemTemplate>
                                <asp:Label ID="EditJugadorId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre" SortExpression="Nombre">
                            <EditItemTemplate>
                                <asp:TextBox ID="EditJugadorNombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredEditJugadorNombre" ValidationGroup="EditJugador" ControlToValidate="EditJugadorNombre" runat="server" Text="*" ErrorMessage="El campo Nombre es obligatorio"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Apellido" SortExpression="Apellido">
                            <EditItemTemplate>
                                <asp:TextBox ID="EditJugadorApellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredEditJugadorApellido" ValidationGroup="EditJugador" ControlToValidate="EditJugadorApellido" runat="server" Text="*" ErrorMessage="El campo Apellido es obligatorio"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Edad" SortExpression="Edad">
                            <EditItemTemplate>
                                <asp:TextBox ID="EditJugadorEdad" runat="server" Text='<%# Bind("Edad") %>'></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegexEditJugadorEdad" ValidationGroup="EditJugador" ControlToValidate="EditJugadorEdad" ValidationExpression="^[0-9]*$" runat="server" Text="*" ErrorMessage="El campo de Edad solo puede contener numeros"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Edad") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="IdEquipo" SortExpression="IdEquipo">
                            <EditItemTemplate>
                                <asp:TextBox ID="EditJugadorIdEquipo" runat="server" Text='<%# Bind("IdEquipo") %>'></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegexEditJugadorIdEquipo" ValidationGroup="EditJugador" ControlToValidate="EditJugadorIdEquipo" ValidationExpression="^[0-9]*$" runat="server" Text="*" ErrorMessage="El campo de EquipoId solo puede contener numeros"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("IdEquipo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:DetailsView ID="DetailsViewJugador" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="Id" DataSourceID="ObjectDataSourceJugador" DefaultMode="Insert" 
                    Height="50px" Width="125px">
                    <Fields>
                        <asp:TemplateField HeaderText="Id" SortExpression="Id">
                            <InsertItemTemplate>
                                <asp:TextBox ID="InsertJugadorId" runat="server" Text='<%# Bind("Id") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredJugadorId" ValidationGroup="InsertJugador" ControlToValidate="InsertJugadorId" runat="server" Text="*" ErrorMessage="El campo Id es obligatorio"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegexId" ValidationGroup="InsertJugador" ControlToValidate="InsertJugadorId" ValidationExpression="^[0-9]+$" runat="server" Text="*" ErrorMessage="El campo de ID solo puede contener numeros"></asp:RegularExpressionValidator>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre" SortExpression="Nombre">
                            <InsertItemTemplate>
                                <asp:TextBox ID="InsertJugadorNombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredJugadorNombre" ValidationGroup="InsertJugador" ControlToValidate="InsertJugadorNombre" runat="server" Text="*" ErrorMessage="El campo Nombre es obligatorio"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Apellido" SortExpression="Apellido">
                            <InsertItemTemplate>
                                <asp:TextBox ID="InsertJugadorApellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredJugadorApellido" ValidationGroup="InsertJugador" ControlToValidate="InsertJugadorApellido" runat="server" Text="*" ErrorMessage="El campo Apellido es obligatorio"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Edad" SortExpression="Edad">
                            <InsertItemTemplate>
                                <asp:TextBox ID="InsertJugadorEdad" runat="server" Text='<%# Bind("Edad") %>'></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegexEdad" ValidationGroup="InsertJugador" ControlToValidate="InsertJugadorEdad" ValidationExpression="^[0-9]*$" runat="server" Text="*" ErrorMessage="El campo de Edad solo puede contener numeros"></asp:RegularExpressionValidator>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="IdEquipo" SortExpression="IdEquipo">
                            <InsertItemTemplate>
                                <asp:TextBox ID="InsertJugadorIdEquipo" runat="server" Text='<%# Bind("IdEquipo") %>'></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegexIdEquipo" ValidationGroup="InsertJugador" ControlToValidate="InsertJugadorIdEquipo" ValidationExpression="^[0-9]*$" runat="server" Text="*" ErrorMessage="El campo de IdEquipo solo puede contener numeros"></asp:RegularExpressionValidator>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowInsertButton="True" ValidationGroup="InsertJugador" />
                    </Fields>
                </asp:DetailsView>
                <asp:ObjectDataSource ID="ObjectDataSourceJugador" runat="server" 
                    DeleteMethod="EliminarJugador" InsertMethod="AgregarJugador" 
                    SelectMethod="ListarJugadores" TypeName="DataModel.Jugador" 
                    UpdateMethod="ActualizarJugador">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="apellido" Type="String" />
                        <asp:Parameter Name="edad" Type="Int32" />
                        <asp:Parameter Name="idEquipo" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="apellido" Type="String" />
                        <asp:Parameter Name="edad" Type="Int32" />
                        <asp:Parameter Name="idEquipo" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <asp:ValidationSummary ID="ValidationSummaryEditJugador" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="EditJugador" />
                <asp:ValidationSummary ID="ValidationSummaryInsertJugador" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="InsertJugador" />
                </form>
            </div>
        </div>
    </div>
</asp:Content>
