<%@ Control Language="C#" 
    AutoEventWireup="true" 
    CodeFile="WebUserControl.ascx.cs" 
    Inherits="WebUserControl" %>
<style type="text/css">

    .auto-style4 {
        width: 120px;
        height: 27px;
    }
    .auto-style5 {
        height: 27px;
        width: 335px;
    }
    .auto-style1 {
        width: 120px;
    }
    .auto-style7 {
        width: 335px;
    }
</style>

<table  style="color:<% =Color%> ">
    <tr>
        <td class="auto-style4">Имя:</td>
        <td class="auto-style5">
            <asp:TextBox ID="Txt_name" runat="server" Width="139px" style="height: 23px" AutoPostBack="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Пароль:</td>
        <td class="auto-style5">
            <asp:TextBox ID="Txt_Pass" runat="server" Width="139px" style="height: 23px" AutoPostBack="True" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Подтверждение:</td>
        <td class="auto-style5">
            <asp:TextBox ID="Txt_PassPod" runat="server" Width="139px" style="height: 23px" AutoPostBack="True" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Возраст:</td>
        <td class="auto-style5">
            <asp:TextBox ID="Txt_age" runat="server" Width="139px" AutoPostBack="True" MaxLength="3" TextMode="Number" >0</asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">email</td>
        <td class="auto-style7">
            <asp:TextBox ID="Txt_email" runat="server" Width="139px" AutoPostBack="True" TextMode="Email"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style7">
            <asp:Button ID="Btn_ok" runat="server" OnClick="Btn_ok_Click" Text="OK" Width="138px" />
        </td>
    </tr>
</table>

