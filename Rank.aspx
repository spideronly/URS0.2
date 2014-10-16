<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Rank.aspx.cs" Inherits="Rank" Title="Evaluation And Quality control of Web sites Arabian University " %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>"
        
        
        
        
    
        SelectCommand="SELECT Symbol.Country, Address.University, Address.UAddress, Ranking.Ranking, Ranking.FinalResult FROM Address INNER JOIN Ranking ON Address.siteID = Ranking.siteID INNER JOIN Symbol ON Address.symbol = Symbol.symbol ORDER BY Ranking.Ranking">
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" BackColor="#6487CB" Height="45px" 
        Width="100%"></asp:Label>
    <table style="width: 100%">
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource1" 
        Width="100%" AutoGenerateColumns="False" ForeColor="Maroon" 
                    onselectedindexchanged="GridView2_SelectedIndexChanged">
                    <FooterStyle ForeColor="#40698F" />
        <RowStyle BackColor="#ECE9D8" BorderColor="#009999" />
                    <Columns>
                        <asp:BoundField DataField="Country" HeaderText="Country" 
                            SortExpression="Country" />
                        <asp:BoundField DataField="University" HeaderText="University" 
                            SortExpression="University" />
                        <asp:BoundField DataField="UAddress" HeaderText="UAddress" 
                            SortExpression="UAddress" />
                        <asp:BoundField DataField="Ranking" HeaderText="Ranking" 
                            SortExpression="Ranking" />
                        <asp:BoundField DataField="FinalResult" HeaderText="FinalResult" 
                            SortExpression="FinalResult" />
                    </Columns>
        <PagerStyle BackColor="Sienna" />
        <HeaderStyle BackColor="#6085CB" BorderColor="#204C9B" ForeColor="#FFFF66" />
    </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

