<%@ Page Language="C#" MasterPageFile="~/Master_Page.Master"  AutoEventWireup="true" CodeBehind="RevenueForAllFlight.aspx.cs" Inherits="PrudentAir.Admin.RevenueForAllFlight" %>
<asp:Content ContentPlaceHolderID="DefaultLeftContent" ID="c1" runat="server">
 <table border="0" align="center" cellpadding="0" cellspacing="0" style="text-align:left; width:80%;">
   <tr>
     <td valign="top">
           <table border="0" align="center" cellpadding="0" cellspacing="0" 
                   style="text-align: left; width: 134%;">
        <tr>
            <td valign="top">
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
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/admin/AdminCreateFlight.aspx"
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
                                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/admin/RevenueForAllFlightByCriteria.aspx"
                                            Text="Revenue By Criteria" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
     </td>
    </tr>
   <tr>
      <td>
          <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                                            
                    style="height: 173px; width: 274px; margin-top: 0px;"  ><param name="movie" value="../Advertisement/FloatingBubble.swf" /><param name="quality" value="high" /><param name="allowscriptaccess" "always" /><embed src="../Advertisement/FloatingBubble.swf" 
                            quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"
                                                type="application/x-shockwave-flash" height="368"  
                                                
                            <%if (!(Request.Browser.Browser == "IE"))
                                            {
                                                Response.Write("id=\"example\"");
                                            }
                                             %> 
                            style="width: 310px; margin-right: 0px;" ></embed>
                                        </object>

      </td>
   </tr>
</table>
</asp:Content>
<asp:Content ContentPlaceHolderID="DefaultContentArea" ID="c2" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
     <table>
        <tr>
        <td>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
               Width="352px">
           <Columns>
            <asp:TemplateField HeaderText="Flight No.">
             <ItemTemplate>
                 <asp:Label ID="lblFlightNo" runat="server" Text='<%#Eval("FNo")%>'></asp:Label>
             </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Total Amount">
             <ItemTemplate> 
                 <asp:Label ID="lblAmount" runat="server" Text='<%#Eval("Amount")%>'></asp:Label>
             </ItemTemplate>
            </asp:TemplateField>
           </Columns>
          </asp:GridView> 
      </ContentTemplate>
    </asp:UpdatePanel>
     </td>
        <td>
           <asp:Button ID="ExportToExcel" runat="server" OnClick="ExportToExcelSheet" 
               Text="ExportToExcel" ToolTip="Export To Excel" />
        </td>
        </tr>
        </table>
   </asp:Content>
