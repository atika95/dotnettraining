<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Jquery.aspx.cs" Inherits="JqueryJavascript.Jquery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
        function Message() {
            alert($("#txtMessage").val());
        }
        $(document).ready(function(){
            $("#submit").on("click", function () {
                var a = parseInt($('#a').val());
                var b = parseInt($('#b').val());
                var sum = a + b;
                alert(sum);    
            })

        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <input  type="text"  id="txtMessage" />
    <input type="button" id="Button1" onclick="Message()" value="Submit" />
    </div>
    <br />
    <div>
        <input type="text" id="a" name="option" /> 
        <input type="text" id="b" name="task" /> 
        <input id="submit" type="button" value="Sum" />
    </div>
        </form>
</body>
</html>
