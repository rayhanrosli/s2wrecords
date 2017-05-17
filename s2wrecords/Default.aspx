    <%@ Page Title="" Language="C#" MasterPageFile="~/s2wrecords.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="s2wrecords.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/s2wrecords.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome to your one-stop music destination</h1>
 
    <h2>Featured Product</h2>
     
    <h3>These are the most top rated vinyl record voted by the people</h3>
   
   <div class="Wrapper">
     
     <a href="ProductDetails.aspx?Id=2">
     <img src="ProductImages/acdccover.png" alt="acdccover" width="200" height="200"/></a>
     
     <a href="ProductDetails.aspx?Id=7">
     <img src="ProductImages/metallicacover.jpg" alt="metallicacover" width="200" height="200" /></a>
      
     <a href="ProductDetails.aspx?Id=6">
     <img src="ProductImages/greendaycover.png" alt="greendaycover" width="200" height="200" /></a>       
     
     <a href="ProductDetails.aspx?Id=10">
     <img src="ProductImages/rollingstoneaftermath.jpg" alt="rollingstonecover" width="200" height="200" /></a>     
   
     <a href="ProductDetails.aspx?Id=9">
     <img src="ProductImages/pinkfloydcover.jpg" alt="pinkfloydcover" width="200" height="200" /></a>
 
     <a href="ProductDetails.aspx?Id=12">
     <img src="ProductImages/tdcccover.jpg" alt="tdcccover" width="200" height="200" /></a>
        
   </div>

</asp:Content>
