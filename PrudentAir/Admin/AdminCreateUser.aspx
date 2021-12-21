<%@ Page Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true"
    CodeBehind="AdminCreateUser.aspx.cs" Inherits="PrudentAir.Admin.AdminCreateUser" %>

<asp:Content ContentPlaceHolderID="DefaultLeftContent" ID="C1" runat="server">
    <table border="0" align="center" cellpadding="0" cellspacing="0" style="text-align: left;
        width: 98%; height: 82px;">
        <tr>
            <td width="100%">
                ARS Administrator
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <asp:Label runat="server" ID="lblemployeemgr" Text="Employee Manager"></asp:Label>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/bullet2.gif" Width="6" Height="10" />
                            <asp:HyperLink ID="lnkDefault" runat="server" NavigateUrl="~/Admin/EditUpdateDeleteEmployee.aspx"
                                Text="Edit/Update/Delete Employee" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <asp:Label runat="server" ID="Label4" Text="User Manager"></asp:Label>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/bullet2.gif" Width="6" Height="10" />
                            <asp:HyperLink ID="lnkDefault0" runat="server" NavigateUrl="~/Admin/AdminCreateUser.aspx"
                                Text="Create User" />
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/bullet2.gif" Width="6" Height="10" />
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/AdminDeleteUser.aspx"
                                Text="Delete User" />
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/bullet2.gif" Width="6" Height="10" />
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/admin/AdminUserDetail.aspx"
                                Text="User Details" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <asp:Label ID="lblFlightmanager" runat="server" Text="Flight Manager"></asp:Label>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <asp:Image ID="Image5" runat="server" ImageUrl="~/images/bullet2.gif" Width="6" Height="10" />
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/admin/FlightManager.aspx"
                                Text="Create Flight" />
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/images/bullet2.gif" Width="6" Height="10" />
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/admin/AdminEditDeleteFlight.aspx"
                                Text="Edit/Delete Flight" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <asp:Label ID="Label5" runat="server" Text="Revenuee Manager"></asp:Label>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <asp:Image ID="Image7" runat="server" ImageUrl="~/images/bullet2.gif" Width="6" Height="10" />
                            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/admin/RevenueForAllFlight.aspx"
                                Text="Revenue for All Flight" />
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <asp:Image ID="Image8" runat="server" ImageUrl="~/images/bullet2.gif" Width="6" Height="10" />
                            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/admin/deleteUser.aspx"
                                Text="Revenue By Criteria" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ContentPlaceHolderID="DefaultContentArea" ID="Content1" runat="server">
    <table>
        <tr>
            <td align="right">
                <asp:Label ID="Label1" runat="server" Text="Login Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtLoginName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="txtLoginName" ID="RequiredFieldValidator1"
                    runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:ImageButton ID="action_chk" runat="server" ImageUrl="~/images/action_check.png"
                    Visible="false" />
            </tr>
            <td>
                <asp:Button ID="chkavlibility" runat="server" Text="Check Availibality" OnClick="chkavlibility_Click">
                </asp:Button></td>
                <tr><td colspan="2" align="center">
                    <asp:Label ID="lblaction_chk" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label></td></tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="Label2" runat="server" Text="User Name:" ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="Label3" runat="server" Text="User Type:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlUserType" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="right">
                        <asp:Button ID="Button1" runat="server" Text="Create User" OnClick="Button1_Click">
                        </asp:Button>
                    </td>
                </tr>
    </table>
</asp:Content>
