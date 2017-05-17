<%@ Page Title="" Language="C#" MasterPageFile="~/s2wrecords.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="s2wrecords.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/s2wrecords.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Login</h1>

    <p><asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label></p>
    <p><asp:TextBox ID="logemail" runat="server"></asp:TextBox></p>

    <p><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></p>
    <p><asp:TextBox ID="logpass" runat="server"></asp:TextBox></p>

    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
    <p><asp:Label ID="Label3" runat="server"></asp:Label></p>

</asp:Content>
