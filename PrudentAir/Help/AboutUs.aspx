	<%@ Page Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true"
    CodeBehind="AboutUs.aspx.cs" Inherits="PrudentAir.Help" %>
<asp:Content ContentPlaceHolderID="DefaultLeftContent" ID="c1" runat="server">
   <table border="0" align="center" cellpadding="0" cellspacing="0" style="text-align: left;
        width: 98%; height: 82px;">
        <tr>
            <td width="100%">
              <h3> PrudentAir HelpPage</h3>
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/bullet2.gif" Width="6" Height="10" />
                            <asp:HyperLink ID="lnkDefault" runat="server" NavigateUrl="~/Help/Help.aspx"
                                Text="General Help" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/bullet2.gif" Width="6" Height="10" />
                            <asp:HyperLink ID="lnkDefault0" runat="server" NavigateUrl="~/Help/FAQ.aspx"
                                Text="FAQ" />
                        </td>
                    </tr>
                    
                    
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <asp:Image ID="Image5" runat="server" ImageUrl="~/images/bullet2.gif" Width="6" Height="10" />
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Help/AboutUs.aspx"
                                Text="About Us" />
                        </td>
                    </tr>
                    
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <asp:Image ID="Image7" runat="server" ImageUrl="~/images/bullet2.gif" Width="6" Height="10" />
                            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Help/ContactUs.aspx"
                                Text="Contact Us" />
                        </td>
                    </tr>
                    
                </table>
            </td>
        </tr>
    </table>
    <table>
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
  Prudent Air will help businesses and consumers to book airline, railway 
														and bus tickets and reserve hotel rooms and car rentals by calling Yatra's call 
														center, or by going to the Internet website <U><A href="Help/AboutUs.aspx">http://www.PrudentAir.com/</A></U>
														
														
														<br />
														
														
														Prudent Air will provide travel-related information, pricing, 
														availability and reservations for airlines, hotels, railway, buses and car 
														rentals across 5000 large cities and small rural areas throughout India. Travel 
														World's multi-language customer service center will enable business and 
														family/leisure travelers to make well-informed and cost effective bookings 24 
														hours a day or night, 365 days a year, through its online, call center and 
														mobile support.
														<br />
														
														Prudent Air customers will benefit from first priority booking and customized 
														travel packages and deals for multiple large to small hotels, airlines, 
														railways, buses and car rentals at the lowest prices, as a result of strategic 
														relationships with the leading travel suppliers.
														
														<br />
														The company will also offer free travel-related news and travel advisory 
														services to a wide range of people.
														<br />
  &nbsp;Prudent Air Copyright © 2008 - 2011&nbsp;&nbsp;<a href="http://www.staralliance.com" target="_blank" title="A Star Alliance Member"><img src="/images/star_alliance_member.gif" alt="A Star Alliance Member" width="182" height="31" /></a>	
  </asp:Content>