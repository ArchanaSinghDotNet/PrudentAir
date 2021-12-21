<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master_Page.Master"
    CodeBehind="FlightManager.aspx.cs" Inherits="PrudentAir.Admin.FlightManager" %>

<asp:Content ContentPlaceHolderID="DefaultLeftContent" ID="C1" runat="server">
    <table border="0" align="center" cellpadding="1" cellspacing="0" style="text-align: left;
        width: 80%; height: 517px">
        <tr>
            <td valign="top" class="style1" style="width: 227px">
                <table border="0" align="center" cellpadding="0" cellspacing="0" style="text-align: left;
                    width: 100%; height: 312px; background-color:white">
                    <tr>
                        <td style="width: 110%">
                            <h3 style="color:Blue">
                                ARS Administrator</h3>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 110%">
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
                        <td style="width: 110%">
                            <table>
                                <asp:Label runat="server" ID="Label1" Text="User Manager" Width="188px"></asp:Label>
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
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/AdminDeleteUser.aspx"
                                            Text="Delete User" />
                                    </td>
                                </tr>
                                <tr>
                                    <td bgcolor="#FFFFFF">
                                        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/bullet2.gif" Width="6" Height="10" />
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="" Text="User Details" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 110%">
                            <table>
                                <asp:Label ID="lblFlightmanager" runat="server" Text="Flight Manager"></asp:Label>
                                <tr>
                                    <td bgcolor="#FFFFFF">
                                        <asp:Image ID="Image5" runat="server" ImageUrl="~/images/bullet2.gif" Width="6" Height="10" />
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Admin/FlightManager.aspx"
                                            Text="Create Flight" />
                                    </td>
                                </tr>
                                <tr>
                                    <td bgcolor="#FFFFFF">
                                        <asp:Image ID="Image6" runat="server" ImageUrl="~/images/bullet2.gif" Width="6" Height="10" />
                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Admin/AdminEditDeleteFlight.aspx" Text="Edit/Delete Flight" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 110%">
                            <table>
                                <asp:Label ID="Label2" runat="server" Text="Revenuee Manager"></asp:Label>
                                <tr>
                                    <td bgcolor="#FFFFFF">
                                        <asp:Image ID="Image7" runat="server" ImageUrl="~/images/bullet2.gif" Width="6" Height="10" />
                                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Admin/RevenueForAllFlight.aspx" Text="Revenue for All Flight" />
                                    </td>
                                </tr>
                                <tr>
                                    <td bgcolor="#FFFFFF">
                                        <asp:Image ID="Image8" runat="server" ImageUrl="~/images/bullet2.gif" Width="6" Height="10" />
                                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="" Text="Revenue By Criteria" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style1" style="width: 227px">
                <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                    style="height: 193px; width: 227px; margin-top: 0px;">
                    <param name="movie" value="../Advertisement/FloatingBubble.swf" />
                    <param name="quality" value="high" />
                    <param name="allowscriptaccess" "always" />
                    <embed src="../Advertisement/FloatingBubble.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"
                        type="application/x-shockwave-flash" width="423" height="368" %>></embed>
                </object>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ContentPlaceHolderID="DefaultContentArea" runat="server">
    <table border="2" cellpadding="2" cellspacing="0" align="center" 
        style="height: 458px; width: 473px; background-color:White">
        <tr>
            <td colspan="3" align="center">
                <h3 style="color:Blue">Flight Creation Form</h3></td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblSource" runat="server" Text="Source: "></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblSourceCountry" runat="server" Text="Country"></asp:Label>
                <asp:DropDownList ID="ddlSourceCountry" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="SourceCountry_SelectedIndexChanged">
                <asp:ListItem> Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblSourceCity" runat="server" Text="City" Visible="False"></asp:Label>
                <asp:DropDownList ID="ddlSourceCity" runat="server" Visible="False">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblDestination" runat="server" Text="Destination:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblDestinationCountry" runat="server" Text="Country"></asp:Label>
                <asp:DropDownList ID="ddlDestinationCountry" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DestinationCountry_SelectedIndexChanged">
                <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblDestinationCity" runat="server" Text="City" Visible="False"></asp:Label>
                <asp:DropDownList ID="ddlDestinationCity" runat="server" Visible="False" 
                    onselectedindexchanged="ddlDestinationCity_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label9" runat="server" Text="BussinessCapacity:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBussinessCapacity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBussinessCapacity" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label10" runat="server" Text="EconomicCapacity:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextEconomicCapacity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextEconomicCapacity" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td align="right">
            <asp:Label ID="Label11" runat="server" Text="BussinessFare:"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBussinessFare" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBussinessFare" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
           </tr>
            <tr><td align="right">
                <asp:Label ID="Label12" runat="server" Text="EconomicFare:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextEconomicFare" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextEconomicFare" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr><td align="right">
                    <asp:Label ID="Label13" runat="server" Text="FlightArrival:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextFlightArrival" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="TextFlightArrival" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td></tr>
                        <tr><td align="right">
                            <asp:Label ID="Label14" runat="server" Text="FlightDeparture:"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextFlightDeparture" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="TextFlightDeparture" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td></tr>
                                <tr><td colspan="2" align="right">
                                    <asp:Button ID="Create_flight" runat="server" Text="CreateFlight" onclick="Create_flight_Click" 
                                        /></td></tr>
                                    <tr><td colspan ="2" align="center">
                                        <asp:Label ID="lblFlightcreation_confirm" runat="server" Text="Flight Created Sucessfully!" 
                                            Visible="False" ForeColor="#33CC33"></asp:Label></td></tr>
    </table>
</asp:Content>
