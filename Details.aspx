<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" Title="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td bgcolor="#40698F" style="color: #CCFF66; height: 2px;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            Size&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
            Visibilty&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            Rich File&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
            Scholar&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" Width="75%" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="UAddress" HeaderText="UAddress" 
                        SortExpression="UAddress" />
                    <asp:BoundField DataField="Google" HeaderText="Google" 
                        SortExpression="Google" />
                    <asp:BoundField DataField="Yahoo" HeaderText="Yahoo" SortExpression="Yahoo" />
                    <asp:BoundField DataField="LiveSearch" HeaderText="LiveSearch" 
                        SortExpression="LiveSearch" />
                    <asp:BoundField DataField="Exalead" HeaderText="Exalead" 
                        SortExpression="Exalead" />
                    <asp:BoundField DataField="YahooV" HeaderText="YahooV" 
                        SortExpression="YahooV" />
                    <asp:BoundField DataField="ppt" HeaderText="ppt" SortExpression="ppt" />
                    <asp:BoundField DataField="doc" HeaderText="doc" SortExpression="doc" />
                    <asp:BoundField DataField="pdf" HeaderText="pdf" SortExpression="pdf" />
                    <asp:BoundField DataField="ps" HeaderText="ps" SortExpression="ps" />
                    <asp:BoundField DataField="GoogleScholar" HeaderText="GoogleScholar" 
                        SortExpression="GoogleScholar" />
                </Columns>
                <HeaderStyle BackColor="#6085CB" ForeColor="#FFFF99" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
                
                
                
                SelectCommand="SELECT Address.UAddress, Size.Google, Size.Yahoo, Size.LiveSearch, Size.Exalead, Visibilty.YahooV, RichFile.ppt, RichFile.doc, RichFile.pdf, RichFile.ps, Scholar.GoogleScholar FROM Address INNER JOIN RichFile ON Address.siteID = RichFile.SiteID INNER JOIN Scholar ON Address.siteID = Scholar.SiteID INNER JOIN Size ON Address.siteID = Size.SiteID INNER JOIN Visibilty ON Address.siteID = Visibilty.siteID">
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

