<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/AdministracionMaster.Master" AutoEventWireup="true" CodeBehind="CreacionEquipos.aspx.cs" Inherits="WebApp.app.views.administracion.CreacionEquipos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <div class="alphadiv">
        <div class="row">
            <div class="col-lg-12">
                <h2>Crear un nuevo equipo</h2>
                <form role="form" class="form-inline" id="form_creacion_equipos" name="form_creacion_equipos" runat="server">
                    <div class="alphadiv subgrupo">

                        <div class="form-group">
                            <asp:Label ID="Label5" Text="Id" runat="server"></asp:Label>
                            <asp:TextBox runat="server" ID="input_id_equipo" type="some-HTML5-type" class="form-control" required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lbl_nombre_equipo" for="txtbox_nombre_equipo" Text="Nombre de Equipo" runat="server"></asp:Label>
                            <input type="text" id="input_nombre_equipo" name="input_nombre_equipo" class="form-control" required runat="server">
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lbl_monto" for="txtbox_monto" Text="Monto abonado" runat="server"></asp:Label>
                            <input type="text" id="input_monto" class="form-control" required runat="server">
                        </div>
                        <div class="form-group">

                            <asp:Label ID="lbl_torneo" Text="Torneo" runat="server"></asp:Label>
                            <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" DataSourceID="ObjectDataSourceTorneo" DataTextField="Nombre" DataValueField="Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>


                        </div>
                        <div class="form-group">
                            <asp:Button ID="btn_submit_creacion_equipo" CssClass="btn btn-primary" Text="Enviar" runat="server" OnClick="btn_submit_creacion_equipo_Click1" />
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <asp:GridView ID="GridViewEquipo" runat="server" CssClass="table table-hover" AutoGenerateColumns="False"
                            DataKeyNames="Id" DataSourceID="ObjectDataSourceEquipo">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"
                                    ValidationGroup="EditEquipo" />
                                <asp:TemplateField HeaderText="Id" SortExpression="Id">
                                    <EditItemTemplate>
                                        <asp:Label ID="EditEquipoId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Nombre" SortExpression="Nombre">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="EditEquipoNombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredEditEquipoNombre" ValidationGroup="EditEquipo" ControlToValidate="EditEquipoNombre" runat="server" Text="*" ErrorMessage="El campo Nombre es obligatorio"></asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="MontoAbonado" SortExpression="MontoAbonado">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="EditEquipoMontoAbonado" runat="server" Text='<%# Bind("MontoAbonado") %>'></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegexEditEquipoMontoAbonado" ValidationGroup="EditEquipo" ControlToValidate="EditEquipoMontoAbonado" ValidationExpression="^[0-9]*$" runat="server" Text="*" ErrorMessage="El campo de MontoAbonado solo puede contener numeros"></asp:RegularExpressionValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("MontoAbonado") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="IdTorneo" SortExpression="IdTorneo">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="EditEquipoIdTorneo" runat="server" Text='<%# Bind("IdTorneo") %>'></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegexEditEquipoIdTorneo" ValidationGroup="EditEquipo" ControlToValidate="EditEquipoIdTorneo" ValidationExpression="^[0-9]*$" runat="server" Text="*" ErrorMessage="El campo de TorneoId solo puede contener numeros"></asp:RegularExpressionValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("IdTorneo") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>

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
                        <asp:ObjectDataSource ID="ObjectDataSourceTorneo" runat="server" SelectMethod="ListarTodosLosTorneos" TypeName="DataModel.Torneo"></asp:ObjectDataSource>
                        <asp:ValidationSummary ID="ValidationSummaryEditEquipo" runat="server"
                            ShowMessageBox="True" ShowSummary="False" ValidationGroup="EditEquipo" />
                        <asp:ValidationSummary ID="ValidationSummaryInsertEquipo" runat="server"
                            ShowMessageBox="True" ShowSummary="False" ValidationGroup="InsertEquipo" />
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
