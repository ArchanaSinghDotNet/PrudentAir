<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Calender.ascx.cs" Inherits="PrudentAir.Calender" %>
<table>
<tr>
<td>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</td>
<td>
    <asp:ImageButton ID="ImageButton1" runat="server" Height="53px" 
        onclick="ImageButton1_Click" ImageUrl="~/images/application.png" />
</td>
<td>
    <asp:Calendar ID="Calendar1" runat="server" Height="125px" 
        onselectionchanged="Calendar1_SelectionChanged" Visible="False" 
        BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
        ForeColor="#003399" onvisiblemonthchanged="Calendar1_VisibleMonthChanged" 
        SelectionMode="DayWeekMonth" Width="159px">
        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <WeekendDayStyle BackColor="#CCCCFF" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
            Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
    </asp:Calendar>
    </td>
</tr>
</table>
