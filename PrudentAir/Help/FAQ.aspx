	<%@ Page Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true"
    CodeBehind="FAQ.aspx.cs" Inherits="PrudentAir.Help" %>
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
   <h3>
                    1. How do I register with Prudent Air?</h3>
                </B>
                <BR>It is easy to
register with Prudent Air.
Just click the Register link on the top menu and complete the form.
Although one
does not need to register in order to book or search. You can complete
the
online booking process, and next time just use the same email
address.<BR>&nbsp;<BR><B>
                <h3>
                    2. Why should I register with Prudent Air?</h3>
                </B>
                <BR>We
don't
force you to register. However, if you register with Prudent Air we save 

 your details when you make a booking.
Additionally,
it also opens the option to receive great travel deals from us via email 
before
anybody else.<BR>&nbsp;<BR><B>
                <h3>
                    3. How I change my password?</h3>
                </B>
                <BR>Sign 
in to
your account From the My Bookings section, you can click on the
Change
Password link and reset your password.<BR>&nbsp;<BR><B>
                <h3>
                    4. How
do I sign in to
my account if I forget my password?</h3>
                </B>
                <BR>If you forgotten
your password,
click here, follow the on-screen instructions and we send you 
an email with
instructions.<BR>&nbsp;<BR><B>
                <h3>
                    5. How do I edit my account
information?</h3>
                </B>
                <BR>Sign in to your Prudent Air Account. From the My Bookings 
section,
you can click on the My Profile link and edit your 
account
information<BR>&nbsp;<BR><B>
                <h3>
                    6. Can I change my username?</h3>
                </B>
                <BR>The 
username is
a unique identity and cannot be changed. For a new username, you will 
need to
register on the website as a new member.<BR>&nbsp;<BR><B>
                <h3>
                    7. How do I log 
off of
the site when I am finished?</h3>
                </B>
                <BR>Click on &lt; Sign out&gt; on the 
main menu
and you will be logged off. 
                <BR>&nbsp;<BR><B>
                <h3>
                    8. Can I book on PrudentAir.com
if I am
a non-resident Indian?</h3>
                </B>
                <BR>Currently PrudentAir.com caters to Indian
residents
only.<BR>&nbsp;<BR><B>
                <h3>
                    9. Can I speak to someone in Customer
Support?</h3>
                </B>
                <BR>Prudent Air offers 24x7 customer support. You can call us at 
+91 212 444 0 849
. You can also <A =
href=3D"http://www.prudentair.com/feedback-suggestion.html"
target=3D_blank>write to our customer support team</A> and someone will
get back
to you within 4 hours of your inquiry.<br />
   
   &nbsp;Prudent Air Copyright © 2008 - 2011&nbsp;&nbsp;<a href="http://www.staralliance.com" target="_blank" title="A Star Alliance Member"><img src="/images/star_alliance_member.gif" alt="A Star Alliance Member" width="182" height="31" /></a>	
   </asp:Content>