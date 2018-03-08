<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Home.aspx.cs" Inherits="ShoppingCart.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="Content/Home.css" rel="stylesheet" />
</head>
  
<body>
     
    <form id="form1" runat="server">
        <h1 class="logo"><a href="Home.aspx">Shopping Cart</a></h1>
         <div class="Login">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
        </div>
             
        <div class="menu">
            <ul>
                <li><a href="Home.aspx">Home</a> </li>

                <li><a href="Shopping Cart.aspx">Shopping Cart</a> </li>

            </ul>
        </div>
          
        <div class="List">
        <asp:Repeater ID="ProductList" runat="server">
            <ItemTemplate>
                <div class="product">
            <div id="image">
                <img src="<%#Eval("ProductImage")%>" />

            </div>
            <div class="name"><span><%#Eval("ProductName")%></span></div>
            <div class="price"><%#Eval("ProductPrice")%></div>
            <div class="cart">
                <asp:Button ID="btnAddToCart" OnCommand="btnAddToCart_Command" CommandArgument='<%#Eval("ProductId")%>' runat="server" Text="Add To Cart" />
             </div>
             </div>
          </div>
            </ItemTemplate>
        </asp:Repeater>
            
    </form>
</body>
      
</html>
