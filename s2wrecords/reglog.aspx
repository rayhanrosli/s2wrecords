<%@ Page Title="" Language="C#" MasterPageFile="~/s2wrecords.Master" AutoEventWireup="true" CodeBehind="reglog.aspx.cs" Inherits="s2wrecords.reglog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="CSS/s2wrecords.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1></h1>

    <p><asp:Label ID="Label1" runat="server" Text="You have successfully log-in to the site."></asp:Label></p>
    <p><asp:Button ID="Button1" runat="server" Text="Log Out" OnClick="Button1_Click" /></p>

</asp:Content>
