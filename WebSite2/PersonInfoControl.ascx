<%@ Control Language="C#" 
    AutoEventWireup="true" 
    CodeFile="PersonInfoControl.ascx.cs" 
    Inherits="PersonCode" %>
<style type="text/css">
    .auto-style1 {
        width: 120px;
    }
    .auto-style2 {
        width: 27%;
        margin-right: 0px;
    }
    .auto-style4 {
        width: 120px;
        height: 27px;
    }
    .auto-style5 {
        height: 27px;
        width: 160px;
    }
    .auto-style7 {
        width: 303px;
    }
</style>

<fieldset style ="width: 150px";>    <%// рамочка!!!!!!! %>

<table  style="color:<% =Color%> ">
    <tr>
        <td class="auto-style4">Имя:</td>
        <td class="auto-style5">
            <asp:TextBox ID="Txt_name" runat="server" Width="139px" style="height: 23px" AutoPostBack="True"></asp:TextBox>
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
            <asp:TextBox ID="Txt_email" runat="server" Width="139px" AutoPostBack="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style7">
            <asp:Button ID="Btn_ok" runat="server" OnClick="Btn_ok_Click" Text="OK" Width="138px" />
        </td>
    </tr>
</table>
</fieldset><asp:Panel ID="Panel1" runat="server">
</asp:Panel>
