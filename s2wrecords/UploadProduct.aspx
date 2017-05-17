<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadProduct.aspx.cs" Inherits="s2wrecords.UploadProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <p><asp:FileUpload ID="UploadFileImageControl" runat="server" /></p>    
         
        <p><asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" /></p>

        <p><asp:Image ID="CurrentImage" runat="server" /></p>
    </div>
    </form>
</body>
</html>
