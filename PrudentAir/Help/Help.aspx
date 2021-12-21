	<%@ Page Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true"
    CodeBehind="Help.aspx.cs" Inherits="PrudentAir.Help" %>
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

		
	 
	<h1><a href="#" >Welcome to Prudent Air Help Page</a></h1> 
	
	<a title="Prudent Air" href="/Home.aspx"><img src="PrudentAir/images/logo.bmp" alt="Prudent Air" width="149" height="45" border="0" /></a>
	
	
	<ul id="globalnav"><li><a target="_top" href="/Home.aspx">Home</a></li></ul>
       
	            <h2 class=pageTitle>
                    Making Reservation</h2>
                <h3>
                    1. How can I make a reservation?</h3>
                <p>
                    You can make reservation through <a href="corporate/contact_us/offices.aspx">Prudent Air Sales Offices</a>, authorized sales agencies, Prudent Air Call Centers (+91 212 444 0 849 in India) and via our 
                    <a href="http://www.prudentair.com">web site</a>.</p>
                <h3>
                    2. What are the criteria in defining the order of the waitlist?</h3>
                <p>
                    Waitlist is ordered automatically by the system according to the waitlist date, preferred ticket fare and some other criteria. For the passengers who are listed as stand-by but not confirmed until day of departure should list themselves as stand-by on the ground by applying check-in desk. Waitlist order on the ground is ordered automatically by the system based on the type of the ticket and application time to the check-in desk.</p>
                <h3>
                    3. Will I be notified when my waitlisted reservation is confirmed? 
                </h3>
                <p>
                    When your reservation is confirmed, the sales agency or 
                    <a href="corporate/contact_us/offices.aspx">Prudent Air Sales Office</a> will notify you. You will be informed either by sms or e-mail and may be asked to call 444 0 849 to confirm your flight.</p>
                <h3>
                    4. What does &ldquo;class&rdquo; stand for?</h3>
                <p>
                    Class represents the reserved capacity groups for the various fares differentiated by minimum stay time in the destination point, purchasing time of the ticket etc. even though there is no difference in the cabin or service quality or seat quality in the same cabin.</p>
                <h3>
                    5. What are the reasons of class differences?</h3>
                <p>
                    Even though there is no difference in the cabin or service quality or seat quality in the same cabin, there are class differences caused by minimum stay time in the destination point, purchasing time of the ticket etc.</p>
                <h3>
                    6. Why are there available seats for higher fare classes and no available seats for the low fare classes on the flights I prefer? And why is there a difference among some fares?</h3>
                <p>
                    Even though there is no difference in the service quality or seat quality for the same cabin, various fares are applied on our flights differentiated by minimum stay time in the destination point, purchasing time of the ticket etc. Different capacities may be reserved for the classes of these differentiated fares on our flights considering the statistics. The capacity of class for any of the fares may be sold out due to excess demand but at the same time there may be available seats in the other classes for various fares.</p>
                <h3>
                    7. Do you cancel my reservation if I do not reconfirm on time? 
                </h3>
                <p>
                    There is a possibility of cancellation for the reservations, which are not reconfirmed although they required reconfirmation.</p>
                <h3>
                    8. What is a code-share flight?</h3>
                <p>
                    A flight operated by another airline for which Prudent Air has an agreement to sell seats using the &quot;TK&quot; airline code. 
                </p>
                <h3>
                    9. Will I be notified in case my flight is cancelled ?</h3>
                <p>
                    Our relavant departments will contact you via the phone number that you provided during your reservation to advise the cancellation and offer alternative flights if required. You will be informed either by sms or e-mail and may be asked to call 444 0 849 to learn about alternative flights.</p>
                <h3>
                    10. Are your aircrafts convertible? How do you arrange your cabin capacities?</h3>
                <p>
                    There are different kinds of aircraft in our fleet. Some of them are convertible some of them are not.</p>
                <p>
                    The cabin capacities in the convertible ones are defined according to the total demand for each cabin.</p>
                <h3>
                    11. Why do you overbook the flights?</h3>
                <p>
                    In order to minimize the effect of &lsquo;no shows&rsquo; and permit seats to be used by passengers who otherwise would not be able to travel on a chosen flight, carriers may overbook flights. Whilst carriers make every effort to provide seats for which confirmed reservations exist, seat availability is not guaranteed. Prudent Air operate compensation plans for international passengers with confirmed reservations who are denied boarding because of non-availability of seats caused by overbooking. For further information please contact&nbsp;<a href="corporate/contact_us/offices.aspx">Prudent Air Sales Offices.</a></p>
                <B>
                
&nbsp;Prudent Air Copyright © 2008 - 2011&nbsp;&nbsp;<a href="http://www.staralliance.com" target="_blank" title="A Star Alliance Member"><img src="/images/star_alliance_member.gif" alt="A Star Alliance Member" width="182" height="31" /></a>		
</asp:Content>
