<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Comparison.aspx.cs" Inherits="Comparison" Title="Comparison" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register assembly="Telerik.Charting" namespace="Telerik.Charting" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <telerik:RadScriptManager runat="server">
    </telerik:RadScriptManager>
<table width="100%">
<tr>
<td colspan="2">
    &nbsp;</td>
</tr>
<tr>
<td style="width:30%">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Small" ForeColor="Black" Text="Add Universities to compare:"></asp:Label>
</td>
<td align="left">
    <asp:DropDownList ID="UnivList" runat="server" DataSourceID="Universities" 
        DataTextField="University" DataValueField="siteID" BackColor="#6085CB">
    </asp:DropDownList>
    <asp:SqlDataSource ID="Universities" runat="server" 
        ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
        SelectCommand="SELECT University, siteID FROM Address"></asp:SqlDataSource>
    <asp:Button ID="AddUnivButton" runat="server" onclick="AddUnivButton_Click" 
        Text="Add" Width="50px" />
</td>
</tr>
<tr>
<td align="center" colspan="2">
    <asp:BulletedList ID="UnivBulletedList" runat="server" FirstBulletNumber="0" 
        Width="100%" BulletStyle="Numbered" BorderWidth="0px">
    </asp:BulletedList>
    
   </td>
</tr>
<tr>
<td style="width:0" align="center">
    <asp:Button ID="ClearButton" runat="server" onclick="ClearButton_Click" 
        Text="Clear" Width="50px" />
</td>

<td style="width:25px" width="50" align="center">
    <asp:Button ID="ComparisonButton" runat="server" Text="Chart" 
        onclick="ComparisonButton_Click" Width="50px" />
</td>

</tr>
<tr>
<td colspan="2">
    <telerik:RadChart ID="RadChart1" runat="server" CssClass="RadChart" 
        Height="500px" Width="620px">
        <Series>
<telerik:ChartSeries Name="Size">
    <Appearance>
        <FillStyle MainColor="#6600ff">
        </FillStyle>
        <LabelAppearance RotationAngle="90">
        </LabelAppearance>
        <TextAppearance TextProperties-Color="Red" maxlength="10">
        </TextAppearance>
        <Border Color="" />
    </Appearance>
            </telerik:ChartSeries>
<telerik:ChartSeries Name="Files">
    <Appearance>
        <FillStyle MainColor="White">
        </FillStyle>
        <LabelAppearance RotationAngle="90">
        </LabelAppearance>
        <TextAppearance TextProperties-Color="Red">
        </TextAppearance>
        <Border Color="" />
    </Appearance>
            </telerik:ChartSeries>
            <telerik:ChartSeries Name="Scholar">
                <Appearance>
                    <FillStyle MainColor="#ff3300">
                    </FillStyle>
                    <LabelAppearance RotationAngle="90">
                    </LabelAppearance>
                    <TextAppearance TextProperties-Color="Red">
                    </TextAppearance>
                    <Border Color="" />
                </Appearance>
            </telerik:ChartSeries>
            <telerik:ChartSeries Name="Visibility">
                <Appearance>
                    <FillStyle MainColor="#006600">
                    </FillStyle>
                    <LabelAppearance RotationAngle="90">
                    </LabelAppearance>
                    <TextAppearance TextProperties-Color="Red">
                    </TextAppearance>
                    <Border Color="" />
                </Appearance>
            </telerik:ChartSeries>
</Series>
        <ChartTitle>
            <TextBlock Text="Universities WebSites Comparison Chart">
            </TextBlock>
        </ChartTitle>
    </telerik:RadChart>
&nbsp;&nbsp;
</td>
</tr>
<tr>
<td colspan="2">
</td>
</tr>
</table>
    <telerik:RadAjaxManager runat="server" EnableHistory="True">
    </telerik:RadAjaxManager>
</asp:Content>

