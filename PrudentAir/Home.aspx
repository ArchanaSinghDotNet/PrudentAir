<%@ Page Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="PrudentAir.Home" %>
<asp:Content ContentPlaceHolderID="DefaultLeftContent" ID="c1" runat="server">
<table border="0" align="center" cellpadding="0" cellspacing="0" style="text-align:left; width:80%;">
   <tr>
     <td valign="top">
           <asp:DataList ID="DataList1" runat="server" Width="272px">
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
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
           <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="false" 
                Width="588px" style="text-align: center; margin-left: 25px;">
            <Columns>
            <asp:TemplateField HeaderText="Flight No." HeaderStyle-Font-Bold="true" HeaderStyle-BackColor="BlueViolet" HeaderStyle-Height="30px">
             <ItemTemplate>
                 <asp:Label ID="lblFlightNo" runat="server" Text='<%#Eval("FNo") %>'></asp:Label>
             </ItemTemplate>
                <HeaderStyle BackColor="BlueViolet" Font-Bold="True" />
            </asp:TemplateField>
             <asp:TemplateField HeaderText="FlightDate" HeaderStyle-Font-Bold="true"  HeaderStyle-BackColor="BlueViolet">
               <ItemTemplate>
                <asp:Label ID="lblFlightDate" runat="server" Text='<%#Eval("FlightDate") %>'></asp:Label>
               </ItemTemplate>
                 <HeaderStyle BackColor="BlueViolet" Font-Bold="True" />
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Amout" HeaderStyle-Font-Bold="true" HeaderStyle-BackColor="BlueViolet">
               <ItemTemplate>
                   <asp:Label ID="lblAmount" runat="server" Text='<%#Eval("Amount") %>'></asp:Label>
               </ItemTemplate>
                 <HeaderStyle BackColor="BlueViolet" Font-Bold="True" />
             </asp:TemplateField>
            </Columns>
           </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

