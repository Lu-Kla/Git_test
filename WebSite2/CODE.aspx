<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CODE.aspx.cs" Inherits="CODE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Вариант 1
            <%if (!IsPostBack)
                    this.Response.Write("<h1>" + DateTime.Now.ToShortDateString() +"</h1>");
                        %>
            <asp:Button ID="Btn_ok" runat="server" Text="Button" OnClick="Btn_ok_Click" EnableViewState="False" Height="27px" />
             <p style="width: 677px; text-align: center; margin-left: 80px">
                 &nbsp;</p>
            Вариант 2 (перемешиваем коды)
            <%
                if (!IsPostBack)
                {
            %>
            <h1 style= "color:red;text-align: center;" >
                <%
               this.Response.Write(DateTime.Now.ToShortDateString()+" -❄🌹🌹❄- "+ DateTime.Now.Month.ToString());
                }
             %>
             </h1>
            <h2 style= "color:blue;text-align: center;" >
                Вариант 3 &nbsp;&nbsp; 😉
                <p style= "color:blue;text-align: center;" >
                &nbsp;</p>
            <% Response.Write(2 * 3);%>
               <p style= "color:blueviolet;text-align: center;" >
                &nbsp; ♡ 
                   <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="18px" Width="123px">
                       <asp:ListItem>Мордовэнерго</asp:ListItem>
                       <asp:ListItem>Оренбургэнерго</asp:ListItem>
                   </asp:DropDownList>
                   <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                   <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="38px" Width="173px">
                   </asp:DropDownList>
            &nbsp;&nbsp; страны 
                   <asp:DropDownList ID="DropDownList_contr" runat="server" OnSelectedIndexChanged="DropDownList_contr_SelectedIndexChanged" Height="18px" Width="123px" AutoPostBack="True">
                   </asp:DropDownList>
                   <asp:DropDownList ID="DropDownList_gorod" runat="server" Height="18px" Width="123px">
                   </asp:DropDownList>
            </p>
            <p style= "color:blueviolet;text-align: center;" >
                &nbsp;</p>
            <p style= "color:blueviolet;text-align: center;" >
                &nbsp;</p>
            <p style= "color:blueviolet;text-align: center;" >
                &nbsp;</p>
            <% 
                ////inline code
                //или
                %>    
                <%  =2*6 %>

            </h2>
           
            <p style= "color:blue;text-align: center;" >
                &nbsp;</p>
           
            <p style= "color:blue;text-align: center;" >
                &nbsp;</p>
        </div>
    </form>
</body>
</html>
