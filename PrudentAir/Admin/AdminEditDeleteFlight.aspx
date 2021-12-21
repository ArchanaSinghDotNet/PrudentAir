<%@ Page Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="AdminEditDeleteFlight.aspx.cs" Inherits="PrudentAir.Admin.AdminEditDeleteFlight" %>

<asp:Content ContentPlaceHolderID="DefaultLeftContent" ID="c1" runat="server">
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
        <tr>
            <td>
            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                                            
                    style="height: 173px; width: 280px; margin-top: 0px;"  >
                                            <param name="movie" value="../Advertisement/FloatingBubble.swf" />
                                            <param name="quality" value="high" />
                                            <param name="allowscriptaccess" "always" />
                                            <embed src="../Advertisement/FloatingBubble.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"
                                                type="application/x-shockwave-flash" width="423" height="368"  
                                                <%if (!(Request.Browser.Browser == "IE"))
                                            {
                                                Response.Write("id=\"example\"");
                                            }
                                             %> ></embed>
                                        </object>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ContentPlaceHolderID="DefaultContentArea" ID="c2" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="GridView1" runat="server" />
    </Triggers>
     <ContentTemplate>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowEditing="EditFlight"
           OnRowUpdating="UpdateFlight" OnRowCancelingEdit="CancelEdit" 
              AllowPaging="true" OnPageIndexChanging="OnPaging"
              onselectedindexchanged="GridView1_SelectedIndexChanged">
           <Columns>
             <asp:TemplateField HeaderText="Flight No.">
              <ItemTemplate>
                  <asp:Label ID="lblFlightNo" runat="server" Text='<%#Eval("FNo")%>'></asp:Label>
              </ItemTemplate>
              <%--<EditItemTemplate>
                  <asp:TextBox ID="txtFlightNo" runat="server" Text='<%#Eval("FNo")%>'></asp:TextBox>
              </EditItemTemplate>--%>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="FSource">
              <ItemTemplate>
                  <asp:Label ID="lblFSource" runat="server" Text='<%#Eval("FSource")%>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                  <asp:TextBox ID="txtFSource" runat="server" Text='<%#Eval("FSource")%>'></asp:TextBox>
              </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="FDestination">
              <ItemTemplate>
                  <asp:Label ID="lblFDestination" runat="server" Text='<%#Eval("FDestination")%>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                  <asp:TextBox ID="txtFDestination" runat="server" 
                      Text='<%#Eval("FDestination")%>'></asp:TextBox>
              </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="FBusinessCapacity">
              <ItemTemplate>
                  <asp:Label ID="lblFBusinessCapacity" runat="server" 
                      Text='<%#Eval("FBusinessCapacity")%>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                  <asp:TextBox ID="txtFBusinessCapacity" runat="server" 
                      Text='<%#Eval("FBusinessCapacity")%>'></asp:TextBox>
              </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="FEconomicCapacity">
              <ItemTemplate>
                  <asp:Label ID="lblFEconomicCapacity" runat="server" 
                      Text='<%#Eval("FEconomicCapacity")%>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                  <asp:TextBox ID="txtFEconomicCapacity" runat="server" 
                      Text='<%#Eval("FEconomicCapacity")%>'></asp:TextBox>
              </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="BussinessFare">
              <ItemTemplate>
                  <asp:Label ID="lblBussinessFare" runat="server" 
                      Text='<%#Eval("BussinessFare")%>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                  <asp:TextBox ID="txtBussinessFare" runat="server" 
                      Text='<%#Eval("BussinessFare")%>'></asp:TextBox>
              </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="EcoFare">
              <ItemTemplate>
                  <asp:Label ID="lblEcoFare" runat="server" Text='<%#Eval("EcoFare")%>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                  <asp:TextBox ID="txtEcoFare" runat="server" Text='<%#Eval("EcoFare")%>'></asp:TextBox>
              </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="FArrivalTime">
              <ItemTemplate>
                  <asp:Label ID="lblFArrivalTime" runat="server" Text='<%#Eval("FArrivalTime")%>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                  <asp:TextBox ID="txtFArrivalTime" runat="server" 
                      Text='<%#Eval("FArrivalTime")%>'></asp:TextBox>
              </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="FDepartureTime">
              <ItemTemplate>
                  <asp:Label ID="lblFDepartureTime" runat="server" 
                      Text='<%#Eval("FDepartureTime")%>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                  <asp:TextBox ID="txtFDepartureTime" runat="server" 
                      Text='<%#Eval("FDepartureTime")%>'></asp:TextBox>
              </EditItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField>
              <ItemTemplate>
                  <asp:LinkButton ID="lnkRemove" runat="server" 
                      CommandArgument='<%#Eval("FNo")%>' OnClick="DeleteFlight"
                  OnClientClick="return confirm('Do you want to delete?')" Text="Delete"></asp:LinkButton>
              </ItemTemplate>
             </asp:TemplateField>
             <asp:CommandField ShowEditButton="true" />
            </Columns>
          </asp:GridView>
       </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>