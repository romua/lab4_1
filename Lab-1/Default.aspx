<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab_1.Defauls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Content/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="Content/style.css" />
    <script type="text/javascript">
        function validateData() {
            var firstNumber = document.getElementById("textBoxFirstNumber").value;
            var secondNumber = document.getElementById("textBoxSecondNumber").value;
            if (firstNumber === '')
            {
                alert("Enter firstNumber");
                return false;
            } else if (secondNumber === '')
            {
                alert("Enter secondNumber");
                return false;
            } else if (isNaN(firstNumber))
            {
                alert("firstNumber is NaN");
                return false;
            } else if (isNaN(secondNumber))
            {
                    alert("secondNumber is NaN");
                    return false;
                }
        }
     </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
                <div class="col-lg-12 text-center">
                    <h2>Git LAB1</h2>
                <div>
                    <asp:TextBox ID="textBoxFirstNumber" runat="server"></asp:TextBox>
                </div>
                <div class="btn-group">
                    <asp:Button CssClass="btn btn-primary" ID="buttonAdd" runat="server" Text="+" OnClick="btnAdd_Click" onClientClick="return validateData();" />
                    <asp:Button CssClass="btn btn-primary" ID="buttonSubtract" runat="server" Text="-" OnClick="btnSubtract_Click" onClientClick="return validateData();" />  
                    <asp:Button CssClass="btn btn-primary" ID="buttonDivide" runat="server" Text="/" OnClick="btnDivide_Click"  onClientClick="return validateData();"/>             
                    <asp:Button CssClass="btn btn-primary" ID="buttonMultiply" runat="server" Text="*" OnClick="btnMultiply_Click" onClientClick="return validateData();" />
                </div>
                <div>
                    <asp:TextBox ID="textBoxSecondNumber" runat="server"></asp:TextBox>
                </div>
                <div>
                    =
                </div>
                
                <div>
                    <asp:TextBox ID="textBoxResult" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
