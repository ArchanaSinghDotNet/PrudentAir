<%@ Page Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true"
    CodeBehind="PNREnquiry.aspx.cs" Inherits="PrudentAir.Enquiry.PNREnquiry" %>

<asp:Content ContentPlaceHolderID="DefaultLeftContent" ID="c1" runat="server">
    <table border="0" align="center" cellpadding="0" cellspacing="0" style="text-align: left;
        width: 80%;">
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
            <td style="width: 166px">
                <asp:Label ID="Label1" runat="server" Text="PNR NO."></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPNRNo" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="GO&gt;&gt;" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" PageSize="10"
                Width="633px">
                <Columns>
                    <asp:TemplateField HeaderText="PName">
                        <ItemTemplate>
                            <asp:Label ID="lblPName" runat="server" Text='<%#Eval("PName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PAddress">
                        <ItemTemplate>
                            <asp:Label ID="lblPAdd" runat="server" Text='<%#Eval("PAddress") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="A/C No">
                        <ItemTemplate>
                            <asp:Label ID="lblAccountNo" runat="server" Text='<%#Eval("AccountNumber") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Age">
                        <ItemTemplate>
                            <asp:Label ID="lblAge" runat="server" Text='<%#Eval("Age") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PContactNo">
                        <ItemTemplate>
                            <asp:Label ID="lblPContactNo" runat="server" Text='<%#Eval("PContactNo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SeatNo">
                        <ItemTemplate>
                            <asp:Label ID="lblSheatNo" runat="server" Text='<%#Eval("SeatNumber") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Class">
                        <ItemTemplate>
                            <asp:Label ID="lblClass" runat="server" Text='<%#Eval("Class") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Amount">
                        <ItemTemplate>
                            <asp:Label ID="lblAmount" runat="server" Text='<%#Eval("Amount") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FNo">
                        <ItemTemplate>
                            <asp:Label ID="lblFNo" runat="server" Text='<%#Eval("FNo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FlightDate">
                        <ItemTemplate>
                            <asp:Label ID="lblFlightDate" runat="server" Text='<%#Eval("FlightDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
