<%@ Page Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" 
    CodeBehind="SearchFlight.aspx.cs" Inherits="PrudentAir.SearchFlights.SearchFlight" %>
<asp:Content ContentPlaceHolderID ="DefaultLeftContent" ID="c1" runat="server">
<table border="0" cellpadding="0" cellspacing="0" style="text-align:left; width:80%;">
   
    
   <tr>
      <td>
          <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
          codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                                            
                    style="height: 173px; width: 274px; margin-top: 0px;"  >
                    <param name="movie" value="../Advertisement/FloatingBubble.swf" />
                    <param name="quality" value="high" /><param name="allowscriptaccess" "always" />
                    <embed src="../Advertisement/FloatingBubble.swf" 
                     quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"
                     type="application/x-shockwave-flash" height="368"  
                                                
                            <%if (!(Request.Browser.Browser == "IE"))
                                            {
                                                Response.Write("id=\"example\"");
                                            }
                                             %> 
                            style="width: 310px; margin-right: 0px;" >
                            </embed>
                       </object>

      </td>
   </tr>
</table>
</asp:Content>
<asp:Content ContentPlaceHolderID="DefaultContentArea" ID="c2" runat="server">
<table>
 <tr>
            <td align="right">
                <asp:Label ID="lblSource" runat="server" Text="Source: "></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblSourceCountry" runat="server" Text="Country"></asp:Label>
                <asp:DropDownList ID="ddlSourceCountry" runat="server" AutoPostBack="True" 
                    Onselectedindexchanged="SourceCountry_SelectedIndexChanged">
                <asp:ListItem> Select </asp:ListItem>
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
                    Onselectedindexchanged="DestinationCountry_SelectedIndexChanged">
                <asp:ListItem> Select </asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblDestinationCity" runat="server" Text="City" Visible="False"></asp:Label>
                <asp:DropDownList ID="ddlDestinationCity" runat="server" Visible="False">
                </asp:DropDownList>
            </td>
        </tr>  
   <tr>
   <td colspan="2" align="right">
   <asp:Button ID="Search_flight" runat="server" Text="SearchFlight" onclick="Search_flight_Click" /> 
    </td>
    </tr>
    </table>
     <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager> 
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
      <ContentTemplate>
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
           AllowPaging="true" OnPageIndexChanging="OnPaging"> 
              
            <Columns>
             <asp:TemplateField HeaderText="FlightNo.">
              <ItemTemplate>
                  <asp:Label ID="lblFlightNo" runat="server" Text='<%#Eval("FNo")%>'></asp:Label>
              </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="FSource">
              <ItemTemplate>
                  <asp:Label ID="lblFSource" runat="server" Text='<%#Eval("FSource")%>'></asp:Label>
              </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="FDestination">
              <ItemTemplate>
                  <asp:Label ID="lblFDestination" runat="server" Text='<%#Eval("FDestination")%>'></asp:Label>
              </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="FBusinessCapacity">
              <ItemTemplate>
                  <asp:Label ID="lblFBusinessCapacity" runat="server" Text='<%#Eval("FBusinessCapacity")%>'></asp:Label>
              </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="FEconomicCapacity">
              <ItemTemplate>
                  <asp:Label ID="lblFEconomicCapacity" runat="server" Text='<%#Eval("FEconomicCapacity")%>'></asp:Label>
              </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="BussinessFare">
              <ItemTemplate>
                  <asp:Label ID="lblBussinessFare" runat="server" Text='<%#Eval("BussinessFare")%>'></asp:Label>
              </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="EcoFare">
              <ItemTemplate>
                  <asp:Label ID="lblEcoFare" runat="server" Text='<%#Eval("EcoFare")%>'></asp:Label>
              </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="FArrivalTime">
              <ItemTemplate>
                  <asp:Label ID="lblFArrivalTime" runat="server" Text='<%#Eval("FArrivalTime")%>'></asp:Label>
              </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="FDepartureTime">
              <ItemTemplate>
                  <asp:Label ID="lblFDepartureTime" runat="server" Text='<%#Eval("FDepartureTime")%>'></asp:Label>
              </ItemTemplate>
             </asp:TemplateField>
             
            <asp:TemplateField>
              <ItemTemplate>
             
              <asp:HyperLink ID="lnkReservation" NavigateUrl='<%#"~/Reservation/Reservation.aspx?FNo="+Eval("FNo") %>' Text="Reservation" runat="server" />
            
              </ItemTemplate>
             </asp:TemplateField>
            </Columns>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    
                    <AlternatingRowStyle BackColor="White" />
          </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
      </ContentTemplate>
      </asp:UpdatePanel> 

</asp:Content>