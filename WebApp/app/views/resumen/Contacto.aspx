<%@ Page Title="" Language="C#" MasterPageFile="~/app/views/masterpages/ResumenMaster.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="WebApp.app.views.resumen.Contacto" %>
<asp:Content ID="headerContacto" ContentPlaceHolderID="header" runat="server">
    <title>Formulario de contacto</title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <div class="alphadiv">
        <div class="row">
            <div class="col-lg-12">
                <form id="Form1" runat="server" class="form-inline">
                    <div class="alphadiv subgrupo">
                
                <asp:DetailsView ID="DetailsViewContacto" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="Id" DataSourceID="ObjectDataSourceContacto" DefaultMode="Insert" 
                    Height="50px" Width="125px">
                    <Fields>
                        <asp:TemplateField HeaderText="Id" SortExpression="Id">
                            <InsertItemTemplate>
                                <asp:TextBox ID="InsertContactoId" runat="server" Text='<%# Bind("Id") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredContactoId" ValidationGroup="InsertContacto" ControlToValidate="InsertContactoId" runat="server" Text="*" ErrorMessage="El campo Id es obligatorio"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegexId" ValidationGroup="InsertContacto" ControlToValidate="InsertContactoId" ValidationExpression="^[0-9]+$" runat="server" Text="*" ErrorMessage="El campo de ID solo puede contener numeros"></asp:RegularExpressionValidator>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre Completo" SortExpression="NombreCompleto">
                            <InsertItemTemplate>
                                <asp:TextBox ID="InsertContactoNombreCompleto" runat="server" Text='<%# Bind("NombreCompleto") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredContactoNombreCompleto" ValidationGroup="InsertContacto" ControlToValidate="InsertContactoNombreCompleto" runat="server" Text="*" ErrorMessage="El campo Nombre Completo es obligatorio"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email" SortExpression="Email">
                            <InsertItemTemplate>
                                <asp:TextBox ID="InsertContactoEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredContactoEmail" ValidationGroup="InsertContacto" ControlToValidate="InsertContactoEmail" runat="server" Text="*" ErrorMessage="El campo Email es obligatorio"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegexEmail" 
                                    ValidationGroup="InsertContacto" ControlToValidate="InsertContactoEmail" 
                                    runat="server" Text="*" ErrorMessage="El campo de Email es invalido" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Comentario" SortExpression="Comentario">
                            <InsertItemTemplate>
                                <asp:TextBox ID="InsertContactoComentario" runat="server" Text='<%# Bind("Comentario") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredContactoComentario" ValidationGroup="InsertContacto" ControlToValidate="InsertContactoComentario" runat="server" Text="*" ErrorMessage="El campo Comentario es obligatorio"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowInsertButton="True" ValidationGroup="InsertContacto" />
                    </Fields>
                </asp:DetailsView>
                        </div>

                        <asp:GridView ID="GridViewContacto" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Id" DataSourceID="ObjectDataSourceContacto">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ValidationGroup="EditContacto" />
                        <asp:TemplateField HeaderText="Id" SortExpression="Id">
                            <EditItemTemplate>
                                <asp:Label ID="EditContactoId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre Completo" SortExpression="NombreCompleto">
                            <EditItemTemplate>
                                <asp:TextBox ID="EditContactoNombreCompleto" runat="server" Text='<%# Bind("NombreCompleto") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredEditContactoNombreCompleto" ValidationGroup="EditContacto" ControlToValidate="EditContactoNombreCompleto" runat="server" Text="*" ErrorMessage="El campo Nombre Completo es obligatorio"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("NombreCompleto") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email" SortExpression="Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="EditContactoEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredEditContactoEmail" ValidationGroup="EditContacto" ControlToValidate="EditContactoEmail" runat="server" Text="*" ErrorMessage="El campo Email es obligatorio"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegexEmailEdit" 
                                    ValidationGroup="EditContacto" ControlToValidate="EditContactoEmail" 
                                    runat="server" Text="*" ErrorMessage="El campo de Email es invalido" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Comentario" SortExpression="Comentario">
                            <EditItemTemplate>
                                <asp:TextBox ID="EditContactoComentario" runat="server" Text='<%# Bind("Comentario") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredEditContactoComentario" ValidationGroup="EditContacto" ControlToValidate="EditContactoComentario" runat="server" Text="*" ErrorMessage="El campo Comentario es obligatorio"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label91" runat="server" Text='<%# Bind("Comentario") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSourceContacto" runat="server" 
                    DeleteMethod="EliminarContacto" InsertMethod="AgregarContacto" 
                    SelectMethod="ListarContactos" TypeName="DataModel.Contacto" 
                    UpdateMethod="ActualizarContacto">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="nombreCompleto" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="comentario" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="nombreCompleto" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="comentario" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <asp:ValidationSummary ID="ValidationSummaryEditContacto" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="EditContacto" />
                <asp:ValidationSummary ID="ValidationSummaryInsertContacto" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="InsertContacto" />
                </form>
            </div>
        </div>
    </div>
</asp:Content>
