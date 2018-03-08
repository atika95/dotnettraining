<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shopping Cart.aspx.cs" Inherits="ShoppingCart.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart</title>
    <link href="Content/Home.css" rel="stylesheet" />
    <link href="Content/Shoppingcart.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="logo"><a href="Home.aspx">Shopping Cart</a></h1>
        <div class="Login">
            <a href="Login.aspx">Login</a>
            <a href="Home.aspx">Logout</a>
        </div>

        <div class="menu">
            <ul>
                <li><a href="Home.aspx">Home</a> </li>

                <li><a href="Shopping Cart.aspx">Shopping Cart</a> </li>

            </ul>
        </div>
        <div id="EmptyCart" runat="server">
            Cart Empty !!!
        </div>
        <div id="CartItems" runat="server">
            <table class="cartlist" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Image</th>
                            <th>Product</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="CartListCartimg" runat="server">
                            <ItemTemplate>
                        <tr>
                            <td>
                                <img class="cartimg" src="<%#Eval("ProductImage")%>" /></td>
                            <td class="name"><span><%#Eval("ProductName")%></span></td>
                            <td class="price"><%#Eval("ProductPrice")%></td>
                            <td><%#Eval("Quantity")%></td>
                            <td><%#Eval("Total")%></td>
             
                        </tr>
                        </ItemTemplate>
                        </asp:Repeater>

                    </tbody>
            </table>
        </div>
        
        <div class="cart">
                    <asp:Button ID="btnCheckout" runat="server" Text="Checkout" OnClick="btnCheckout_Click" />
                </div>                

   
    </form>
</body>
</html>
