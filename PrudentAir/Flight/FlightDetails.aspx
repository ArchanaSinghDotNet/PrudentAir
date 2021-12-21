<%@ Page Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true"
    CodeBehind="FlightDetails.aspx.cs" Inherits="PrudentAir.FlightDetails" %>

<asp:Content ContentPlaceHolderID="DefaultLeftContent" ID="c1" runat="server">
    <table border="0" align="center" cellpadding="0" cellspacing="0" style="text-align: left;
        width: 80%;">
        <tr>
            <td valign="top">
                <asp:DataList ID="DataList2" runat="server" Width="272px">
                    <HeaderTemplate>
                        <table cellpadding="0" cellspacing="0" border="1" align="center" width="100%" style="text-align: center">
                            <tr>
                                <td>
                                    Most Popular
                                </td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <table border="0" cellpadding="0" cellspacing="0" width="100%" style="background-color: White">
                            <tr>
                                <td style="color: Purple">
                                    <asp:Image ID="Image1" runat="server" Width="13" Height="11" ImageUrl="~/images/bullet.gif" />
                                    <asp:HyperLink ID="HyperLink1" runat="server" Text='<%#Eval("FNo")%>' NavigateUrl='<%# "~/Flight/FlightHome.aspx" %>' />
                                    (
                                    <asp:HyperLink ID="HyperLink2" runat="server" Text='<%#Eval("FSource") %>' NavigateUrl='<%# "~/Flight/FlightHome.aspx" %>' />
                                    To
                                    <asp:HyperLink ID="HyperLink3" runat="server" Text='<%#Eval("FDestination") %>' NavigateUrl='<%# "~/Flight/FlightHome.aspx" %>' />
                                    )
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                    style="height: 173px; width: 274px; margin-top: 0px;">
                    <param name="movie" value="../Advertisement/FloatingBubble.swf" />
                    <param name="quality" value="high" />
                    <param name="allowscriptaccess" "always" />
                    <embed src="../Advertisement/FloatingBubble.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"
                        type="application/x-shockwave-flash" height="368" <%if (!(Request.Browser.Browser == "IE"))
                                            {
                                                Response.Write("id=\"example\"");
                                            }
                                             %> style="width: 310px; margin-right: 0px;"></embed>
                </object>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ContentPlaceHolderID="DefaultContentArea" ID="c2" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="lblFlightId" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblName" runat="server" Font-Bold="true" Font-Size="Small"> </asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" Text="Flight No:" runat="server"> </asp:Label>
            </td>
            <td>
                <asp:Label ID="lblFno" runat="server"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label2" Text="FSource:" runat="server"> </asp:Label>
            </td>
            <td>
                <asp:Label ID="lblFSource" runat="server"> </asp:Label>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label4" Text="FDestination:" runat="server"> </asp:Label>
            </td>
            <td>
                <asp:Label ID="lblFDestination" runat="server"> </asp:Label>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label6" Text="FBusinessCapacity:" runat="server"> </asp:Label>
            </td>
            <td>
                <asp:Label ID="lblFBusinessCapacity" runat="server"> </asp:Label>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label8" Text="FEconomicCapacity:" runat="server"> </asp:Label>
            </td>
            <td>
                <asp:Label ID="lblFEconomicCapacity" runat="server"> </asp:Label>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label10" Text="BussinessFare:" runat="server"> </asp:Label>
            </td>
            <td>
                <asp:Label ID="lblBussinessFare" runat="server"> </asp:Label>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label12" Text="EcoFare:" runat="server"> </asp:Label>
            </td>
            <td>
                <asp:Label ID="lblEcoFare" runat="server"> </asp:Label>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label14" Text="FArrivalTime:" runat="server"> </asp:Label>
            </td>
            <td>
                <asp:Label ID="lblFArrivalTime" runat="server"> </asp:Label>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label16" Text="FDepartureTime:" runat="server"> </asp:Label>
            </td>
            <td>
                <asp:Label ID="lblFDepartureTime" runat="server"> </asp:Label>
            </td>
        </tr>
        <tr >
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Go >> Reservation" 
                    onclick="Button1_Click" />
                
                    </td>
            
        </tr>
    </table>
  
</asp:Content>
