<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calculator.aspx.cs" Inherits="Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            color: #0094ff;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="width: 677px; text-align: center; margin-left: 80px">
                Калькулятор
                </h1>
            <h1 style="width: 677px; text-align: center; margin-left: 80px">
                <asp:TextBox ID="TextBoxNum1" runat="server" Width="36px"></asp:TextBox>
                <span class="auto-style1">&nbsp;
               
                <asp:DropDownList ID="DropDownList_oper" runat="server">
                    <asp:ListItem>*</asp:ListItem>
                    <asp:ListItem>/</asp:ListItem>
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>+</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBoxNum2" runat="server" Width="38px"></asp:TextBox>
                <asp:Button ID="Button_ravno" runat="server" OnClick="Button_ravno_Click" Text="=" />
                <asp:Label ID="Label_Rez" runat="server" ForeColor="#3333CC" Text="?"></asp:Label>
                    <br />
                     </span><%= " очень приятно 🎄🎅🏻 ☃️ ❆❆❆ ❆❆❆ ❆❆❆ ☃️" %>
                </h1>
            <p style="width: 677px; text-align: center; margin-left: 80px">
                &nbsp;</p>
        </div>
    </form>
</body>
</html>
