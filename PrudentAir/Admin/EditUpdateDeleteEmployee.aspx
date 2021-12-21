<%@ Page Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true"
    CodeBehind="EditUpdateDeleteEmployee.aspx.cs" Inherits="PrudentAir.Admin.EmployeeManager" %>

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
                    <asp:Label runat="server" ID="Label1" Text="User Manager"></asp:Label>
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
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/deleteUser.aspx"
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
                    <asp:Label ID="Label2" runat="server" Text="Revenuee Manager"></asp:Label>
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
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="GridView1" runat="server" />
        </Triggers>
        <ContentTemplate>
            <div id='div1' style="width: 70%; height: 50%; overflow: auto;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Font-Names="Arial"
                    Font-Size="11pt" AlternatingRowStyle-BackColor="#CCCCCC" HeaderStyle-BackColor="Maroon"
                    AllowPaging="True" ShowFooter="True" OnPageIndexChanging="OnPaging" OnRowEditing="EditCustomer"
                    OnRowUpdating="UpdateCustomer" OnRowCreated="RowCreated" OnRowCancelingEdit="CancelEdit"
                    OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" CellPadding="4" ForeColor="#333333"
                    GridLines="None" Width="980px">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="EID">
                            <ItemTemplate>
                                <asp:Label ID="lblEmployeeID" runat="server" Text='<%# Eval("Eid")%>'></asp:Label>
                            </ItemTemplate>
                            <%-- <FooterTemplate>
                                <asp:TextBox ID="txtEmployeeID" Width="40px" MaxLength="5" runat="server"></asp:TextBox>
                            </FooterTemplate>--%>
                            <ControlStyle BorderStyle="None" ForeColor="#000066" />
                            <ItemStyle Width="30px" />
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="EFirst" ControlStyle-Width="30">
                            <ItemTemplate>
                                <asp:Label ID="lblEname" runat="server"  Text='<%# Eval("Ename")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEname" runat="server" Width="100" Text='<%# Eval("Ename")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtEname" runat="server" Width="100"></asp:TextBox>
                            </FooterTemplate>
                            <ControlStyle Width="30px" />
                            <FooterStyle Width="30px" />
                            <HeaderStyle Width="30px" />
                            <ItemStyle Width="100px" />
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="ELast ">
                            <ItemTemplate>
                                <asp:Label ID="lblELast" runat="server" Text='<%# Eval("ELast")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtELast" runat="server" Width="100" Text='<%# Eval("ELast")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtELast" runat="server" Width="100"></asp:TextBox>
                            </FooterTemplate>
                            <FooterStyle Width="30px" />
                            <HeaderStyle Width="30px" />
                            <ItemStyle Width="100px" />
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width="150px" HeaderText="UserID ">
                            <ItemTemplate>
                                <asp:Label ID="lblUid" runat="server" Text='<%# Eval("UserId")%>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtUid" runat="server" Width="40"></asp:TextBox>
                            </FooterTemplate>
                            <HeaderStyle Width="30px" />
                            <ItemStyle Width="30px" />
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="EAddress ">
                            <ItemTemplate>
                                <asp:Label ID="lblEAddress" runat="server" Text='<%# Eval("Address")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEAddress" runat="server" Width="100" Text='<%# Eval("Address")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtEAddress" runat="server" Width="100"></asp:TextBox>
                            </FooterTemplate>
                            <HeaderStyle Width="30px" />
                            <ItemStyle Width="100px" />
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="Contact ">
                            <ItemTemplate>
                                <asp:Label ID="lblEContactNumber" runat="server" Text='<%# Eval("ContactNumber")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEContactNumber" runat="server" Width="100" Text='<%# Eval("ContactNumber")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtEContactNumber" runat="server" Width="100"></asp:TextBox>
                            </FooterTemplate>
                            <HeaderStyle Width="30px" />
                            <ItemStyle Width="30px" />
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="EPassword ">
                            <ItemTemplate>
                                <asp:Label ID="lblEPassword" runat="server" Text='<%# Eval("Password")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEPassword" runat="server" Width="100" Text='<%# Eval("Password")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtEPassword" runat="server" Width="100"></asp:TextBox>
                            </FooterTemplate>
                            <HeaderStyle Width="30px" />
                            <ItemStyle Width="100px" />
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="Edob " >
                            <ItemTemplate>
                                <asp:Label ID="lblEdob" runat="server" Text='<%# Eval("dob")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEdob" runat="server"   Text='<%# Eval("dob")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtEdob" runat="server"></asp:TextBox>
                            </FooterTemplate>
                            <HeaderStyle Width="30px" />
                            <ItemStyle Width="100px" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkRemove" runat="server" CommandArgument='<%# Eval("eid")%>'
                                    OnClientClick="return confirm('Do you want to delete?')" Text="Delete" OnClick="DeleteCustomer"></asp:LinkButton>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="AddNewCustomer" />
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                    </Columns>
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Width="2" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
