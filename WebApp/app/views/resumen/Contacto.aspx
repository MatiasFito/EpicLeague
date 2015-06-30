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
                        <div class="form-group">
                            <asp:Label ID="lbl_contacto_id" for="lbl_contacto_id" Text="Id Contacto" runat="server"></asp:Label>
                            <asp:TextBox class="form-control" ID="txtbox_contacto_id" runat="server" required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lbl_nombre_contacto" for="lbl_nombre_contacto" Text="Nombre del Contacto" runat="server"></asp:Label>
                            <asp:TextBox class="form-control" ID="txtbox_nombre_contacto" runat="server" required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lbl_email" for="lbl_email" Text="Email" runat="server"></asp:Label>
                            <asp:TextBox class="form-control" ID="txtbox_email" runat="server" required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lbl_comentario" for="lbl_comentario" Text="Comentario" runat="server"></asp:Label>
                            <asp:TextBox class="form-control" ID="txtbox_comentario" runat="server" required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="btn_submit_contacto" class="btn btn-primary" runat="server" Text="Enviar" OnClick="btn_submit_contacto1" />
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <asp:GridView ID="GridViewContacto" runat="server" AutoGenerateColumns="False"
                            DataKeyNames="Id" DataSourceID="ObjectDataSourceContacto" CssClass="table table-hover" AllowPaging="True">
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
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
