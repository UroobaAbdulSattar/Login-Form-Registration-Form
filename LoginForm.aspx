<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="Login_Form_with_local_database.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        body{
            background-image: url("https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/rm222batch5-kul-03.jpg?w=1200&h=1200&dpr=1&fit=clip&crop=default&fm=jpg&q=75&vib=3&con=3&usm=15&cs=srgb&bg=F4F4F3&ixlib=js-2.2.1&s=1d2fcd9d642367d4c8c9b5c16cbd60e2");
            background-repeat: no-repeat;
        }
        .auto-style5 {            height: 78px;
        }
        .auto-style6 {
            height: 23px;
            text-align: center;
            font-family: sans-serif;
        }
        .auto-style7 {
            height: 23px;
        }

        table{
            margin: auto;
            padding: 1%;
            border:2px ridge black;
            font-size: 20px;
            height: 384px;
            width: 331px;
            background-color: #F5F7F8;
        }
        .auto-style9 {
            height: 23px;
            width: 117px;
        }
        .auto-style10 {
            height: 23px;
            width: 138px;
        }
        .auto-style11 {
            width: 138px;
            height: 78px;
        }
        .auto-style12 {
            font-size: small;
        }
        .auto-style13 {
            width: 117px;
            height: 35px;
        }
        .auto-style15 {
            text-align: left;
            text-align: center;
            height: 53px;
        }
        .auto-style16 {
            height: 51px;
        }
        .auto-style17 {
            width: 138px;
            height: 51px;
        }
        .auto-style18 {
            width: 138px;
            height: 35px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table >
            <tr>
                <td class="auto-style6" colspan="2">LOGIN FORM</td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">USER NAME</td>
                <td class="auto-style10">
                    <asp:TextBox ID="UserTextBox" runat="server" Width="108px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">PASSWORD</td>
                <td class="auto-style11">
                    <asp:TextBox ID="PassTextBox" runat="server" TextMode="Password" Width="108px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style17">
                    <input type="checkbox" onchange="document.getElementById('PassTextBox').type = this.checked ? 'text': 'password'"/><span class="auto-style12">Show Password
                </span>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style18">
                    <asp:Button ID="LoginButton" runat="server" Text="LOG IN" OnClick="LoginButton_Click" BackColor="Black" ForeColor="White" Height="34px" Width="73px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15" colspan="2">
                    <a href="RegistrationForm.aspx" style="font-size: medium">Not Registered yet ? Click Here</a>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
