<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="loginpage.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f4f4f4;
        }
        .login-form {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 300px; /* Set a fixed width for the form */
            border:2px solid black;
        }

        .form-group {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }
        .form-label {
            color: #007BFF;
            margin-right: 10px;
            width: 30%; /* Adjust width as needed */
            text-align: right; /* Align text to the right */
        }
        .form-input {
            width: 70%; /* Adjust width as needed */
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 4px;
        }
        .form-input::placeholder {
            color: #6c757d;
        }
        .form-input:focus {
          border-color: #80bdff;
          outline: none;
 }
        .form-input:hover{
           border-color:#80bdff;

        }
        .form-login{
            background-color:green;
        }
        .form-login,.form-cancel{
            cursor: pointer;
            transition-property:all;
            
        }
        .form-cancel{
            background-color:red;
        }
        .button{
            transform:scale(1,1.15);
            margin-left:25%;
            margin-right:25%;
           
        }
        

    </style>
</head>
<body>
    <form id="form1" runat="server" class="login-form">
        <div class="form-group">
            <asp:Label ID="label1" runat="server" CssClass="form-label" AssociatedControlID="tb1">UserId:</asp:Label>
            <asp:TextBox ID="tb1" runat="server" CssClass="form-input" TextMode="SingleLine" Placeholder="Enter userid"  ></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="label2" runat="server" CssClass="form-label" AssociatedControlID="tb2">Password:</asp:Label>
            <asp:TextBox ID="tb2" runat="server" CssClass="form-input"  Placeholder="Enter password" TextMode="Password"  ></asp:TextBox>
        </div>
        <div class="button">
            <asp:Button ID="login" runat="server" Text="Login" CssClass="form-login" OnClick="login_Click" />
             <asp:BUTTON ID="cancel" runat="server" Text="Reset" CssClass="form-cancel"/>

        </div>
    </form>
   
</body>
</html>
