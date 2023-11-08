<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="Login_Form_with_local_database.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registr</title>
    <style type="text/css">
        body{
            background-image: url("https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/rm222batch5-kul-03.jpg?w=1200&h=1200&dpr=1&fit=clip&crop=default&fm=jpg&q=75&vib=3&con=3&usm=15&cs=srgb&bg=F4F4F3&ixlib=js-2.2.1&s=1d2fcd9d642367d4c8c9b5c16cbd60e2");
            background-repeat: no-repeat;
        }
        .auto-style1 {
            width: 300px;
            margin: auto;
            border: 2px black ridge;
            font-family: sans-serif;
            width: 370px;
            height: 450px;
            background-color: #F5F7F8;
        }
        .auto-style2 {
            text-align: center;
            
        }
        .auto-style3 {
            width: 120px;
            height: 26px;
            text-align: center;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="2" class="auto-style5"><strong>SIGNUP FORM</strong></td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" style="text-align: left" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">FIRST NAME</td>
                <td>
                    <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstNameTextBox" ErrorMessage="Enter First Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">LAST NAME</td>
                <td>
                    <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastNameTextBox" ErrorMessage="Enter Last Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">GENDER</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="GenderDropDownList" runat="server" Width="128px" >
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="GenderDropDownList" ErrorMessage="Select Gender" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">EMAIL</td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Enter Correct Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Enter Email" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">USERNAME</td>
                <td>
                    <asp:TextBox ID="UserTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="UserTextBox" ErrorMessage="Enter Username" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">PASSWORD</td>
                <td>
                    <asp:TextBox ID="PassTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="PassTextBox" ErrorMessage="Enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PassTextBox" Display="Dynamic" ErrorMessage="Enter Correct assword" ForeColor="Red" ValidationExpression="^((?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])|(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[^a-zA-Z0-9])|(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[^a-zA-Z0-9])|(?=.*?[a-z])(?=.*?[0-9])(?=.*?[^a-zA-Z0-9])).{8,}$">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">CONFIRM PASSWORD</td>
                <td>
                    <asp:TextBox ID="ConfirmPassTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ConfirmPassTextBox" ErrorMessage="Enter Password Again" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PassTextBox" ControlToValidate="ConfirmPassTextBox" ErrorMessage="Password Not Matched" ForeColor="Red">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="SignUp" style="font-size: medium" OnClick="Button1_Click" BackColor="Black" ForeColor="White" Height="37px" Width="92px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">
                <a href="LoginForm.aspx">Go to Login Page</a>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
