<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShoppingCart.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
     <link href="Content/Style.css" rel="stylesheet" />
</head>
<body>

    
    <center>
    <form id="form1" runat="server">

    <div>
        
        <marquee><h1>WELCOME AND HAPPY SHOPPING TO YOU <3</h1></marquee>
            <center><h3>Shopping Cart</h3></center>
            <div class="Login">
                <div class="Username">
                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                    <asp:TextBox ID="textUsername" runat="server"></asp:TextBox>


                </div>
                <div class="Password">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="textPassword" runat="server" TextMode="Password"></asp:TextBox>


                </div>
                <div class="Button">
                   <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />

                </div>
                <div class="status">
                  <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>

                </div>
            </div>
        </div>
    </form>
        </center>
</body>
</html>
