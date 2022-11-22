<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="waAgenda.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="E-mail"></asp:Label>
        <div>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
            <br />
            <asp:TextBox ID="txtSenha" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btLogar" runat="server" OnClick="btLogar_Click" Text="Logar" />
            <br />
            <asp:Label ID="lbMsg" runat="server" Text=" "></asp:Label>
        </div>
    </form>
</body>
</html>
