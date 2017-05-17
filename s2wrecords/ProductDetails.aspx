<%@ Page Title="" Language="C#" MasterPageFile="~/s2wrecords.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="s2wrecords.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/s2wrecords.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626508_1626508_co5027 %>" SelectCommand="SELECT * FROM [Product] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
<asp:Image ID="Image1" runat="server" />
</asp:Content>
