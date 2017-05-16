<%@ Page Title="" Language="C#" MasterPageFile="~/s2wrecords.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="s2wrecords.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/s2wrecords.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1>Admin Page</h1>


    <p><asp:Label ID="Label1" runat="server" Text="ID"></asp:Label></p>
    <p><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></p>

    <p><asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label></p>
    <p><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></p>

    <p><asp:Label ID="Label3" runat="server" Text="Description"></asp:Label></p>
    <p><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></p>

    <p><asp:Label ID="Label4" runat="server" Text="Price"></asp:Label></p>
    <p><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></p>


    <p><asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </p>

</asp:Content>

