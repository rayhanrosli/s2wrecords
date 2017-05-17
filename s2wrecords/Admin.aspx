<%@ Page Title="" Language="C#" MasterPageFile="~/s2wrecords.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="s2wrecords.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/s2wrecords.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1>Admin Page</h1>

   <p>
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="448px">
           <Columns>
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
               <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
               <asp:BoundField DataField="Product" HeaderText="Product" SortExpression="Product" />
               <asp:BoundField DataField="Information" HeaderText="Information" SortExpression="Information" />
               <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
               <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="UploadProduct.aspx?id={0}" InsertVisible="False" Text="Set Image" />
               <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="ProductDetails.aspx?Id={0}" Text="View Product" />
           </Columns>
       </asp:GridView>   
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626508_1626508_co5027 %>" DeleteCommand="DELETE FROM [Product] WHERE [ID] = @original_ID AND (([Product] = @original_Product) OR ([Product] IS NULL AND @original_Product IS NULL)) AND (([Information] = @original_Information) OR ([Information] IS NULL AND @original_Information IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))" InsertCommand="INSERT INTO [Product] ([ID], [Product], [Information], [Price]) VALUES (@ID, @Product, @Information, @Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Product] = @Product, [Information] = @Information, [Price] = @Price WHERE [ID] = @original_ID AND (([Product] = @original_Product) OR ([Product] IS NULL AND @original_Product IS NULL)) AND (([Information] = @original_Information) OR ([Information] IS NULL AND @original_Information IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))">
           <DeleteParameters>
               <asp:Parameter Name="original_ID" Type="Int32" />
               <asp:Parameter Name="original_Product" Type="String" />
               <asp:Parameter Name="original_Information" Type="String" />
               <asp:Parameter Name="original_Price" Type="Decimal" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="ID" Type="Int32" />
               <asp:Parameter Name="Product" Type="String" />
               <asp:Parameter Name="Information" Type="String" />
               <asp:Parameter Name="Price" Type="Decimal" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="Product" Type="String" />
               <asp:Parameter Name="Information" Type="String" />
               <asp:Parameter Name="Price" Type="Decimal" />
               <asp:Parameter Name="original_ID" Type="Int32" />
               <asp:Parameter Name="original_Product" Type="String" />
               <asp:Parameter Name="original_Information" Type="String" />
               <asp:Parameter Name="original_Price" Type="Decimal" />
           </UpdateParameters>
       </asp:SqlDataSource>
   </p>
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                ID:
                <p><asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                </p>
                Product:
                <p><asp:TextBox ID="ProductTextBox" runat="server" Text='<%# Bind("Product") %>' />
                </p>                
                Information:
                <p><asp:TextBox ID="InformationTextBox" runat="server" Text='<%# Bind("Information") %>' />
                </p>                
                Price:
                <p><asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                </p>  
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ID:
                <p><asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                </p>  
                Product:
                <p><asp:TextBox ID="ProductTextBox" runat="server" Text='<%# Bind("Product") %>' />
                </p>  
                Information:
                <p><asp:TextBox ID="InformationTextBox" runat="server" Text='<%# Bind("Information") %>' />
                </p>  
                Price:
                <p><asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                </p>  
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ID:
                <p><asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </p>  
                Product:
                <p><asp:Label ID="ProductLabel" runat="server" Text='<%# Bind("Product") %>' />
                </p>  
                Information:
                <p><asp:Label ID="InformationLabel" runat="server" Text='<%# Bind("Information") %>' />
                </p>  
                Price:
                <p><asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                </p>  
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    </p>
</asp:Content>

