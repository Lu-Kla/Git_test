<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MultiControl.aspx.cs" Inherits="MultiControl" trace="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Btn_eche" runat="server" OnClick="Btn_eche_Click" Text="Eще " />
            <asp:Panel ID="Panel1" runat="server">
            </asp:Panel>
        </div>
    </form>
</body>
</html>
