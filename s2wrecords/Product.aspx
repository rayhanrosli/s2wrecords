<%@ Page Title="" Language="C#" MasterPageFile="~/s2wrecords.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="s2wrecords.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/s2wrecords.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>Select Your Vinyl</h1>

   <div class="Wrapper">
     
    <a href="ProductDetails.aspx?Id=1">
     <img src="ProductImages/abbaarrival.jpg" alt="ABBA Arrival Album" width="200" height="200"/></a>
      
     <a href="ProductDetails.aspx?Id=2">
     <img src="ProductImages/acdccover.png" alt="ACDC Back to Black Album" width="200" height="200"/></a>

     <a href="ProductDetails.aspx?Id=3">
     <img src="ProductImages/beatlestwistandshout.jpg" alt="Twist and Shout Album" width="200" height="200"/></a>
     
     <a href="ProductDetails.aspx?Id=4">
     <img src="ProductImages/bobmarleyexodus.jpg" alt="Exodus Album" width="200" height="200" /></a>
      
     <a href="ProductDetails.aspx?Id=5">
     <img src="ProductImages/chuckberry.jpg" alt="Chuck Berry Album" width="200" height="200" /></a>       
     
     <a href="ProductDetails.aspx?Id=6">
     <img src="ProductImages/greendaycover.png" alt="American Idiots Album" width="200" height="200" /></a>     
   
     <a href="ProductDetails.aspx?Id=7">
     <img src="ProductImages/metallicacover.jpg" alt="Load Album" width="200" height="200" /></a>
 
     <a href="ProductDetails.aspx?Id=8">
     <img src="ProductImages/mjbad.jpg" alt="Bad Album" width="200" height="200" /></a>

    <a href="ProductDetails.aspx?Id=9">
     <img src="ProductImages/pinkfloydcover.jpg" alt="The Endless River Album" width="200" height="200"/></a>

    <a href="ProductDetails.aspx?Id=10">
     <img src="ProductImages/rollingstoneaftermath.jpg" alt="After Math Album" width="200" height="200"/></a>

    <a href="ProductDetails.aspx?Id=11">
     <img src="ProductImages/tameimpalacovercurrent.jpg" alt="Current Album" width="200" height="200"/></a>

    <a href="ProductDetails.aspx?Id=12">
     <img src="ProductImages/tdcccover.jpg" alt="Beacon Album" width="200" height="200"/></a>
        
   </div>

</asp:Content>
