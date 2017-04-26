<%@ Page Title="" Language="C#" MasterPageFile="~/s2wrecords.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="s2wrecords.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="CSS/s2wrecords.css" rel="stylesheet" type="text/css" />
    <script src="Js/JavaScript.js"></script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Contact Us</h1>

    <h3>You can get in touch with us by using this contact form below if you have any questions</h3>
    
    <p><asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></p>
    <p><asp:TextBox ID="name" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="nameval" runat="server" ErrorMessage="Please Enter a Legit Name." ControlToValidate="name" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
    </p>

    <p><asp:Label ID="Label2" runat="server" Text="Email"></asp:Label></p>
    <p><asp:TextBox ID="email" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="emailval" runat="server" ErrorMessage="Invalid Email! Please input the correct Email." ControlToValidate="email" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
    </p>
    
    <p><asp:Label ID="Label3" runat="server" text="Subject"></asp:Label></p>
    <p><asp:Textbox ID="subject" runat="server"></asp:Textbox></p>

    <p><asp:Label ID="Label4" runat="server" text="Your Message"></asp:Label></p>
    <p><asp:Textbox ID="message" runat="server"></asp:Textbox></p>

    <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
   <p><asp:Label ID="label" runat="server"></asp:Label></p>
    
 
    <h2>Where to Find Us</h2>
 
   
<div id="googleMap" style="width:400px;height:300px;"></div>


<script async defer 
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBFDDfYGWdUdAaPTw_Lc3g7sbrBAAA9Uh8&callback=myMap"></script>

    
</asp:Content>
