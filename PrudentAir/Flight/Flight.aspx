
<%@ Page Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true"
    CodeBehind="Flight.aspx.cs" Inherits="PrudentAir.Flight" %>
<asp:Content ContentPlaceHolderID="DefaultLeftContent" ID="c1" runat="server">
<table border="0" align="center" cellpadding="0" cellspacing="0" style="text-align:left; width:80%;">
   <tr>
     <td valign="top">
           <asp:DataList ID="DataList2" runat="server" Width="272px">
             <HeaderTemplate>
              <table cellpadding="0" cellspacing="0" border="1" align="center" width="100%" style="text-align:center" >
                <tr>
                  <td>
                      Most Popular
                  </td>
                </tr>
             </table>
             </HeaderTemplate>
             <ItemTemplate>
                <table border="0" cellpadding="0" cellspacing="0" width="100%" style="background-color:White">
                  <tr>
                    <td style="color:Purple">
                       <asp:Image ID="Image1" runat="server" Width="13" Height="11" ImageUrl="~/images/bullet.gif"/>
                        <asp:HyperLink ID="HyperLink1" runat="server" Text='<%#Eval("FNo")%>' NavigateUrl='<%# "~/Flight/FlightHome.aspx" %>'/>
                        (
                        <asp:HyperLink ID="HyperLink2" runat="server" Text='<%#Eval("FSource") %>' NavigateUrl='<%# "~/Flight/FlightHome.aspx" %>'/>
                        To
                        <asp:HyperLink ID="HyperLink3" runat="server" Text='<%#Eval("FDestination") %>' NavigateUrl='<%# "~/Flight/FlightHome.aspx" %>'/>
                        )
                    </td>
                 </tr>
                </table>
             </ItemTemplate>
           </asp:DataList>
     </td>
    </tr>
    <tr><td>    </td></tr>
    <tr><td>    </td></tr>
    <tr><td>    </td></tr>
    <tr><td>    </td></tr>
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
   <table width="612px" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF"
                                style="border: 3px solid #4c77a7; border-top: none; margin-left: 4px;">
                                <tr>
                                    <td height="8px;" valign="top">
                                    </td>
                                </tr>
                                <tr class="heading">
                                    <td align="center">
                                        Available Flight Details :
                                    </td>
                                </tr>
                                <td valign="top">
                                    <table border="0" align="center" cellpadding="0" cellspacing="0" 
                                        class="tablegrid">
                                        <tr height="22">
                                         <th scope="col"  class="tablegridth" valign="middle" style="width: 21%">
                                                Flight Number :
                                            </th>
                                            <th scope="col" class="tablegridth" valign="middle" style="width: 31%">
                                                Flight Source :
                                            </th>
                                            <th scope="col" class="tablegridth" valign="middle" style="width: 37%">
                                                Flight Destination :
                                            </th>
                                           
                                        </tr>
                                        <tr>
                                            <td colspan="6">
                                                <asp:GridView ID="grdFlights" runat="server" AutoGenerateColumns="False" 
                                                    Width="98%" Font-Size="Small" 
                                                    Height="107px">
                                               
                                                    <EmptyDataTemplate>
                                                        <div style="text-align: center">
                                                            No results found</div>
                                                    </EmptyDataTemplate>
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <tr class="tablegridtr" height="35">
                                                                <td width="10%" height="19" align="left">
                                                                        <asp:HyperLink ID="PlayButton" NavigateUrl='<%#"~/Flight/FlightDetails.aspx?fid="+Eval("FNo") %>'
                                                                            Text= '<%# Eval("FNo") %>'  runat="server" />
                                                                    </td>
                                                                    <td width="20%" height="19" align="center" >
                                                                        <%# Eval("FSource") %>
                                                                    </td>
                                                                    <td width="15%" height="19" align="left">
                                                                        <%# Eval("FDestination") %>
                                                                    </td>
                                                                    
                                                                </tr>
                                                            </ItemTemplate>
                                                            <AlternatingItemTemplate>
                                                                <tr class="tablegridtreven" height="35">
                                                                   <td width="10%" height="19" align="left">
                                                                        <asp:HyperLink ID="PlayButton" NavigateUrl='<%#"~/Flight/FlightDetails.aspx?fid="+Eval("FNo") %>'
                                                                            Text= '<%# Eval("FNo") %>'  runat="server" />
                                                                    </td>
                                                                    <td width="20%" height="19" align="center" >
                                                                        <%# Eval("FSource") %>
                                                                    </td>
                                                                    <td width="15%" height="19" align="left">
                                                                        <%# Eval("FDestination") %>
                                                                    </td>
                                                                  
                                                                </tr>
                                                            </AlternatingItemTemplate>
                                                        </asp:TemplateField>
                                                        <%--<asp:ButtonField ButtonType="Button" CommandName="Edit" Text="Play" />--%>
                                                    </Columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4" height="8px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                    </tr>
                    <tr>
                        <td height="8px">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td height="8px;" bgcolor="#82a0c2">
                        </td>
                    </tr>
                </table>
</asp:Content>

