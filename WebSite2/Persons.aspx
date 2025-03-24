<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Persons.aspx.cs" Inherits="Persons"
    trace="false"%>

<%@ Register src="PersonInfoControl.ascx" tagname="PersonCode" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <svg xmlns="http://www.w3.org/2000/svg" width="780" height="140" viewBox="0 0 780 140">
				<g fill="none" fill-rule="evenodd">
					<rect id="#00876c"  width="50" height="50" x="0" fill="#00876c"/>,
                    <rect id="#93af86"  width="50" height="50" x="160" fill="#93af86"/>,
                    <rect id="#e1dac3"  width="50" height="50" x="320" fill="#e1dac3"/>,
                    <rect id="#d9986c"  width="50" height="50" x="480" fill="#d9986c"/>,
                    <rect id="#d43d51"  width="50" height="50" x="640" fill="#d43d51"/>
				</g>
	</svg>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
         <asp:TextBox ID="TextBoxAge" runat="server" Font-Size="Large" Width="47px"></asp:TextBox>
        <asp:Button ID="Btn_ok" runat="server" Font-Size="Large" Text="Ok" OnClick="Btn_ok_Click" />
            <br />
           <br />
               <asp:ListBox ID="ListBoxPerson" runat="server" Font-Size="Large" Height="94px" Width="186px" AutoPostBack="True" OnSelectedIndexChanged="ListBoxPerson_SelectedIndexChanged"></asp:ListBox>
      
        <br/>
               <asp:Label ID="Lbl_vibor" runat="server" BackColor="#FFCCFF" BorderStyle="None" Height="33px" Text="Label" Width="92px" Font-Size="Medium" ValidateRequestMode="Disabled"></asp:Label>
        <br />
         
        
        <uc1:PersonCode ID="PersonCode1" runat="server" color="red" />
        <uc1:PersonCode ID="PersonCode2" runat="server"  color="green"/>
     
        
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
