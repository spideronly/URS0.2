<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TopTen.aspx.cs" Inherits="TopTen" Title=" Top Ten - Evaluation And Quality control of Web sites Arabian University " %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register assembly="Telerik.Charting" namespace="Telerik.Charting" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
    </telerik:RadScriptManager>
<table width="100%">
<tr>
<td colspan="2">
</td>
</tr>
<tr>
<td style="width:30%">
    &nbsp;</td>
<td align="left">
    &nbsp;</td>
</tr>
<tr>
<td align="center" colspan="2">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
        BackColor="White" BorderColor="#669999" BorderStyle="Double">
        <RowStyle BackColor="White" BorderColor="Red" />
        <SelectedRowStyle BackColor="White" BorderColor="#990000" />
        <HeaderStyle BackColor="#6085CB" BorderColor="Yellow" BorderStyle="Double" 
            ForeColor="#FFFF99" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
        SelectCommand="SELECT Address.UAddress, Address.University, Ranking.Ranking, Ranking.FinalResult, Symbol.Country FROM Address INNER JOIN Ranking ON Address.siteID = Ranking.siteID INNER JOIN Symbol ON Address.symbol = Symbol.symbol WHERE (Ranking.Ranking &lt;= @Ranking) ORDER BY Ranking.Ranking">
        <SelectParameters>
            <asp:Parameter DefaultValue="10" Name="Ranking" />
        </SelectParameters>
    </asp:SqlDataSource>
    </td>
</tr>
<tr>
<td style="width:0" align="center">
    &nbsp;</td>

<td style="width:25px" width="50" align="center">
    &nbsp;</td>

</tr>
<tr>
<td colspan="2">
    <telerik:RadChart ID="RadChart1" runat="server" CssClass="RadChart" 
        Height="500px" Width="620px" >
        <PlotArea>
         
        </PlotArea>
        <Series>
<telerik:ChartSeries Name="Final Result">
    <Appearance>
        <FillStyle MainColor="#3366cc">
        </FillStyle>
      
        <LabelAppearance RotationAngle="90">
            <Shadow Color="#173F34" Distance="1" />
        </LabelAppearance>
        <PointMark>
            <Shadow Color="AliceBlue" Distance="1" />
        </PointMark>
        <TextAppearance TextProperties-Color="Red" maxlength="0" Shadow-Color="Black"  >
<Shadow Color="Azure"></Shadow>
        </TextAppearance>
        <Border Color="" />
        <Shadow Color="AliceBlue" Distance="1" />
    </Appearance>
            </telerik:ChartSeries>
</Series>
        <PlotArea>
       
            <Appearance>
                <Shadow Color="AliceBlue" Distance="1" />
            </Appearance>
        </PlotArea>
        <Appearance>
            <Shadow Color="White" Distance="1" />
        </Appearance>
        <ChartTitle>
            <Appearance>
                <Shadow Color="AliceBlue" Distance="1" />
            </Appearance>
            <TextBlock Text="Comparison Chart Top Ten Universities">
            </TextBlock>
        </ChartTitle>
        <Legend>
            <Appearance Corners="Round, Round, Round, Round, 3">
                <Shadow Color="AliceBlue" Distance="1" />
            </Appearance>
        </Legend>
    </telerik:RadChart>
</td>
</tr>
<tr>
<td colspan="2">
</td>
</tr>
</table>
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" EnableHistory="True">
    </telerik:RadAjaxManager>
</asp:Content>



