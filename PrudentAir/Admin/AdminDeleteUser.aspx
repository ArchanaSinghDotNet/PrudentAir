<%@ Page Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true"
    CodeBehind="AdminDeleteUser.aspx.cs" Inherits="PrudentAir.Admin.deleteUser" %>

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
                            <asp:HyperLink ID="lnkDefault" runat="server" NavigateUrl="~/Admin/EmployeeManager.aspx"
                                Text="Edit/Update/Delete Employee" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <asp:Label runat="server" ID="Label2" Text="User Manager"></asp:Label>
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
                    <asp:Label ID="Label3" runat="server" Text="Revenuee Manager"></asp:Label>
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
<asp:Content ContentPlaceHolderID="DefaultContentArea" runat="server">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="right">
                <asp:Label ID="Label1" runat="server" Text="Enter UserName:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSearchUserName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:ImageButton ID="Search_Username" runat="server" Text="Search" ImageUrl="~/images/search.gif"
                    Width="20" onclick="Search_Username_Click" />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td colspan="2">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="GridView1" runat="server" />
                    </Triggers>
                    <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" 
                            AllowPaging="True" AutoGenerateColumns="False"  
                            CellPadding="4" ForeColor="#333333" GridLines="None" Height="28px" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="418px">
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                    <asp:TemplateField  HeaderText="UserId">
                    <ItemTemplate>
                        <asp:Label ID="lblUserId" runat="server" Text='<%#Eval("UserId") %>'></asp:Label></ItemTemplate>
                        <ControlStyle Width="30px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="UserName">
                     <ItemTemplate>
                         <asp:Label ID="lblUserName" runat="server" Text='<%#Eval("UserName") %>'></asp:Label></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                     <ItemTemplate>
                                <asp:LinkButton ID="lnkRemove" runat="server" CommandArgument='<%# Eval("UserId")%>'
                                    OnClientClick="return confirm('Do you want to delete?')" Text="Delete" OnClick="GridView1_SelectedIndexChanged" ></asp:LinkButton>
                            </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                        
                        <asp:Label ID="lbldeleteUsername" runat="server" ForeColor="Red" 
                            Text="Updated Sucessfully!" Visible="False"></asp:Label>
                        
                    </ContentTemplate>
                    
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</asp:Content>
