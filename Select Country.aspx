<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Select Country.aspx.cs" Inherits="Comparison" Title="Evaluation And Quality control of Web sites Arabian University " %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register assembly="Telerik.Charting" namespace="Telerik.Charting" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <telerik:RadScriptManager runat="server">
    </telerik:RadScriptManager>
<table width="100%">
<tr>
<td colspan="2">
    <asp:DropDownList ID="ListCountry" runat="server" DataSourceID="SqlDataSource1" 
        DataTextField="Country" DataValueField="Country" BackColor="#6085CB" 
        Visible="False">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
        SelectCommand="SELECT [Country] FROM [Symbol]"></asp:SqlDataSource>
    <asp:Button ID="ButtonShowCountry" runat="server" 
        onclick="ButtonShowCountry_Click" Text="Show" />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
        SelectCommand="SELECT Address.University, Address.UAddress, Ranking.FinalResult, Ranking.Ranking, Symbol.Country FROM Address INNER JOIN Ranking ON Address.siteID = Ranking.siteID INNER JOIN Symbol ON Address.symbol = Symbol.symbol WHERE (Symbol.Country = @cout) ORDER BY Ranking.FinalResult DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="ListCountry" Name="cout" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" BackColor="#ECE9D8">
        <Columns>
            <asp:BoundField DataField="University" HeaderText="University" 
                SortExpression="University" />
            <asp:BoundField DataField="UAddress" HeaderText="UAddress" 
                SortExpression="UAddress" />
            <asp:BoundField DataField="FinalResult" HeaderText="FinalResult" 
                SortExpression="FinalResult" />
            <asp:BoundField DataField="Ranking" HeaderText="Ranking" 
                SortExpression="Ranking" />
            <asp:BoundField DataField="Country" HeaderText="Country" 
                SortExpression="Country" />
                <asp:TemplateField HeaderText="Rank In Country">
             
                <ItemTemplate>
            <%#getrankcountry()%>  
                </ItemTemplate>
                </asp:TemplateField>
                
        </Columns>
        <HeaderStyle BackColor="#6085CB" Font-Bold="True" Font-Italic="True" 
            ForeColor="#FFFF99" />
    </asp:GridView>
    
   </td>
</tr>
<tr>
<td align="center" colspan="2">
    <asp:Label ID="LibalnotFound" runat="server"></asp:Label>
</td>

</tr>
<tr>
<td colspan="2">
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

