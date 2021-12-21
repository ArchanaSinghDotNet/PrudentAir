<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master_Page.Master"
    CodeBehind="Reservation.aspx.cs" Inherits="PrudentAir.Reservation.Reservation" %>

<%@ Register TagPrefix="My" TagName="Calendar" Src="~/Calender.ascx" %>
<asp:Content ID="c1" runat="server" ContentPlaceHolderID="DefaultLeftContent">
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="DefaultContentArea">
    <table>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" Height="20px" OnClick="Button1_Click" Text="Seat Availability"
                    Width="111px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Select Date : "></asp:Label>
            </td>
            <td>
                <My:Calendar ID="calendarValidFrom" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
