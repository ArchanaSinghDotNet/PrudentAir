<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PrudentAir.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        h3{font-family:Book Antiqua;
           Color:Gray;
           
           }
    </style>
</head>
<body>
    <form id="LoginForm" runat="server">
    <center>
        <table  width="390" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 80px;">
            <tr style="background-image: url(../images/login-bg.gif);background-repeat: no-repeat;width: 386px;
	height: 384px;" >
                <td valign="top" >
                    <table width="350" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td height="80" valign="bottom">
                              <marquee> <h3>Welcome To ARS Login</h3></marquee>
                            </td>
                            <td width="59" valign="bottom">  
                                &nbsp;</td>
                                
                        </tr>
                        <tr> 
                            <td colspan="2" align="left">
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td style="color: #FF0000;">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="u_name">
                                            Username
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="UserName" Text="" runat="server" CssClass="login-input-text" 
                                               />
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                                ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="u_name">
                                            Password
                                        </td>
                                    </tr>
                                    <tr>
                                    <td>
                                    
                                        <asp:TextBox ID="Password" runat="server" style="width: 128px" 
                                            TextMode="Password"></asp:TextBox>
                                    
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                                ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    
                                    </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <%--<td><asp:CheckBox ID="RememberMe" runat="server" Checked="True" Text="Remember me" /></td>--%>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="LoginButton" runat="server" CommandName="Login" ValidationGroup="Login1"
                                                ImageUrl="~/images/login-btn.gif" Width="75" Height="31" AlternateText="Login"
                                                OnClick="LoginButton_Click" />
                                        </td>
                                    </tr> 
                                    <tr>
                                    <td>
                                    </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </center>
    </form>
</body>
</html>
