<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePrincipal.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="waAgenda.usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <h3>Lista de usuários</h3>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSourceUsuarios" DataKeyNames="email" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Excluir" ID="DeleteButton1" />
                    <asp:Button runat="server" CommandName="Edit" Text="Editar" ID="EditButton1" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel1" /></td>
                <td>
                    <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel1" /></td>
                <td>
                    <asp:Label Text='<%# Eval("senha") %>' runat="server" ID="senhaLabel1" /></td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Update" Text="Atualizar" ID="UpdateButton1" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Cancelar" ID="CancelButton1" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel2" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox2" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("senha") %>' runat="server" ID="senhaTextBox2" /></td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>Nenhum dado foi retornado.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Insert" Text="Inserir" ID="InsertButton2" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Limpar" ID="CancelButton2" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox3" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox3" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("senha") %>' runat="server" ID="senhaTextBox3" /></td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Excluir" ID="DeleteButton3" />
                    <asp:Button runat="server" CommandName="Edit" Text="Editar" ID="EditButton3" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel4" /></td>
                <td>
                    <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel4" /></td>
                <td>
                    <asp:Label Text='<%# Eval("senha") %>' runat="server" ID="senhaLabel4" /></td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server">email</th>
                                <th runat="server">nome</th>
                                <th runat="server">senha</th>
                            </tr>
                            <tr runat="server" id="itemPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager runat="server" ID="DataPager1">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Excluir" ID="DeleteButton4" />
                    <asp:Button runat="server" CommandName="Edit" Text="Editar" ID="EditButton4" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel5" /></td>
                <td>
                    <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel5" /></td>
                <td>
                    <asp:Label Text='<%# Eval("senha") %>' runat="server" ID="senhaLabel5" /></td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource runat="server" ID="SqlDataSourceUsuarios" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' 
        DeleteCommand="DELETE FROM [usuario] WHERE [email] = @email" 
        InsertCommand="INSERT INTO [usuario] ([email], [nome], [senha]) VALUES (@email, @nome, @senha)" 
        SelectCommand="SELECT [email], [nome], [senha] FROM [usuario]" 
        UpdateCommand="UPDATE [usuario] SET [nome] = @nome, [senha] = @senha WHERE [email] = @email">
        <DeleteParameters>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
            <asp:Parameter Name="nome" Type="String"></asp:Parameter>
            <asp:Parameter Name="senha" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nome" Type="String"></asp:Parameter>
            <asp:Parameter Name="senha" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
