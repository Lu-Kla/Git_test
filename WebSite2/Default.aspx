<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default_my" %>

<!DOCTYPE html>
<script runat="server">

   
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #0094ff;
        }
        #File1 {
            width: 303px;
            margin-bottom: 10px;
        }
        .auto-style2 {
            width: 412px;
            height: 51px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     //   <%=r %>&nbsp;
        <input type="text" name="line-control" />
        <input type="text" id ="html_servercontrol" runat="server" class="auto-style2"/>
        <div>
            <h1 style="width: 424px; margin-left: 80px">
                My первый WEB-</h1>
            <h1 style="width: 439px; text-align: center; margin-left: 80px">
                &nbsp; <span class="auto-style1">ого дорогуШ!</span></h1>
        </div>
        Введите имя:<asp:TextBox ID="TextBoxUserName" runat="server" style="margin-left: 19px" Width="263px" EnableViewState="False"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 13px" Text="ok" />
        <asp:Button ID="But_red" runat="server" Height="29px" OnClick="But_red_Click" Text="Red" Width="80px" />
        <br />
        <asp:Label ID="LabelVisits" runat="server" Font-Size="Larger" ForeColor="Red" Text="LabelVisits"></asp:Label>
    </form>
           
        </body>
</html>
