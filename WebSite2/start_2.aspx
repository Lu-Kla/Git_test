<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="start_2.aspx.cs" Inherits="start_2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentHolder" Runat="Server">
    <h1> 
        <asp:TextBox ID="TxtBox_ima" runat="server"></asp:TextBox>
        <asp:Button ID="Button_ok" runat="server" Text="Button" OnClick="Button_ok_Click" />
    </h1>
   
</asp:Content>