<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/AdministracionMaster.Master" AutoEventWireup="true" CodeBehind="CreacionJugadores.aspx.cs" Inherits="WebApp.app.views.administracion.CreacionJugadores" %>

 
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <div class="alphadiv">
        <div class="row">
            <div class="col-xs-12">
                <h2>Crear un nuevo jugador</h2>
                 <form role="form" class="form-inline" id="form_creacion_jugador" name="form_creacion_jugador" runat="server">
                     <div class="alphadiv subgrupo">

                          <div class="form-group">
                        <asp:Label ID="Label5" Text="Id" runat="server"></asp:Label>
                      
                        <asp:TextBox runat="server" id="IdJugador" type="some-HTML5-type" class="form-control" required></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbl_nombre_jugador" for="txtbox_nombre_jugador" Text="Nombre" runat="server"></asp:Label>
                        <input type="text" id="input_nombre_jugador" name="input_nombre_jugador" class="form-control" required runat="server">
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbl_apellido_jugador" for="txtbox_apellido_jugador" Text="Apellido" runat="server"></asp:Label>
                        <input type="text" id="input_apellido_jugador" class="form-control" required runat="server">
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbl_edad" Text="Edad" runat="server"></asp:Label>
                      
                        <asp:TextBox runat="server" id="input_edad" type="some-HTML5-type" class="form-control" required></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbl_equipo" Text="Equipo" runat="server"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" DataSourceID="ObjectDataSourceEquipos" DataTextField="Nombre" DataValueField="Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btn_submit_creacion_jugador" cssclass="btn btn-primary" Text="Enviar" runat="server" OnClick="btn_submit_creacion_jugador_Click1"/>
         
                    </div>
                </div>
                     <div class="col-lg-12">
                <asp:GridView ID="GridViewJugador" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Id" CssClass="table table-hover" DataSourceID="ObjectDataSourceJugador">
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
                     <asp:ObjectDataSource ID="ObjectDataSourceEquipos" runat="server" SelectMethod="ListarEquipos" TypeName="DataModel.Equipo">
                         <SelectParameters>
                             <asp:Parameter DefaultValue="true" Name="IncluirEquiposDeEquiposInactivos" Type="Boolean" />
                         </SelectParameters>
                     </asp:ObjectDataSource>
                <asp:ValidationSummary ID="ValidationSummaryEditJugador" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="EditJugador" />
                <asp:ValidationSummary ID="ValidationSummaryInsertJugador" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="InsertJugador" />
                         </div>
                </form>
               
            </div>
        </div>
    </div>
</asp:Content>
