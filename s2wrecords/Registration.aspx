<%@ Page Title="" Language="C#" MasterPageFile="~/s2wrecords.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="s2wrecords.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/s2wrecords.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Registration</h1>

    <p><asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label></p>
    <p><asp:TextBox ID="regname" runat="server"></asp:TextBox></p>

    <p><asp:Label ID="Label2" runat="server" Text="Email"></asp:Label></p>
    <p><asp:TextBox ID="regemail" runat="server"></asp:TextBox></p>

    <p><asp:Label ID="Label3" runat="server" Text="Password"></asp:Label></p>
    <p><asp:TextBox ID="regpass" runat="server" TextMode="Password"></asp:TextBox></p>

    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
        <p><asp:Label ID="Label4" runat="server"></asp:Label></p>

</asp:Content>
