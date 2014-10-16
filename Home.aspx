<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" Title="Evaluation And Quality control of Web sites Arabian University " %>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    
    <table style="width: 100%">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label1" runat="server" Text="Insert Address" BackColor="#0F4BAD" 
                Font-Names="Arial Black" ForeColor="White" Width="100%"></asp:Label>
        </td>
        <td colspan="2">
            <asp:Label ID="Label2" runat="server" Text="Insert Address or Country" BackColor="#0F4BAD" 
                Font-Names="Arial Black" ForeColor="White" Width="100%"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="eval" runat="server" Text="Evaluation" 
                onclick="Button2_Click" BackColor="#0F4BAD" ValidationGroup="evaVal" 
                ForeColor="White" Font-Bold="True" />
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" 
                Width="139px" ValidationGroup="evaVal"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="*" 
                ValidationExpression="(http(s)?://)?([\w-]+\.)+([edu-]||[ac-]||[rnu-])(\.)?([\w-]+)?" 
                ValidationGroup="evaVal"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="*" ValidationGroup="evaVal"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" 
                BackColor="#0F4BAD" Width="73px" ValidationGroup="SearchVal" 
                Font-Bold="True" ForeColor="White" />
        </td>
        <td style="width: 200px">
            <asp:TextBox ID="TextBox1" runat="server" Width="139px" 
                ValidationGroup="SearchVal"></asp:TextBox>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="SearchVal"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Label ID="ErrorLabel" runat="server" Font-Names="Arial" Font-Size="9pt" 
                ForeColor="#CC0000" Width="100%" Height="23px" style="margin-top: 0px"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:DropDownList ID="ListCountry" runat="server" DataSourceID="SqlDataSource3" 
                DataTextField="Country" DataValueField="Country" Visible="False">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonContinua" runat="server" onclick="ButtonContinua_Click1" 
                Text="Continua" Visible="False" BackColor="#6085CB" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
                SelectCommand="SELECT [Country] FROM [Symbol]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" AllowSorting="True" 
                Font-Bold="True" ForeColor="#FFFFCC">
                <RowStyle BackColor="#336699" />
                <Columns>
                    <asp:BoundField DataField="UAddress" HeaderText="UAddress" 
                        SortExpression="UAddress" />
                    <asp:BoundField DataField="University" HeaderText="University" 
                        SortExpression="University" />
                    <asp:BoundField DataField="Ranking" HeaderText="Ranking" 
                        SortExpression="Ranking" />
                    <asp:BoundField DataField="FinalResult" HeaderText="FinalResult" 
                        SortExpression="FinalResult" />
                    <asp:BoundField DataField="Country" HeaderText="Country" 
                        SortExpression="Country" />
                </Columns>
                <HeaderStyle BackColor="#6085CB" />
            </asp:GridView>
            <table style="width: 100%">
                <tr>
                    <td>
            <asp:Label ID="Label3" runat="server" ForeColor="#FF3399" Width="100%"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:projectConnectionString.ProviderName %>" 
                
                
                
                SelectCommand="SELECT Address.UAddress, Address.University, Ranking.Ranking, Ranking.FinalResult, Symbol.Country FROM Address INNER JOIN Ranking ON Address.siteID = Ranking.siteID INNER JOIN Symbol ON Address.symbol = Symbol.symbol WHERE (Address.UAddress = @URL) AND (Ranking.siteID = (SELECT MAX(siteID) AS Expr1 FROM Ranking AS Ranking_1))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox2" DefaultValue="&quot;&quot;" 
                        Name="URL" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource2">
                <RowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="UAddress" HeaderText="UAddress" 
                        SortExpression="UAddress" />
                    <asp:BoundField DataField="University" HeaderText="University" 
                        SortExpression="University" />
                    <asp:BoundField DataField="Ranking" HeaderText="Ranking" 
                        SortExpression="Ranking" />
                    <asp:BoundField DataField="FinalResult" HeaderText="FinalResult" 
                        SortExpression="FinalResult" />
                    <asp:BoundField DataField="Country" HeaderText="Country" 
                        SortExpression="Country" />
                </Columns>
                <HeaderStyle BackColor="#6085CB" ForeColor="#FFFF99" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
                
                
                
                
                
                SelectCommand="SELECT Address.UAddress, Address.University, Ranking.Ranking, Ranking.FinalResult, Symbol.Country FROM Ranking INNER JOIN Address ON Ranking.siteID = Address.siteID INNER JOIN Symbol ON Address.symbol = Symbol.symbol WHERE (Address.UAddress = @URL) OR (Symbol.Country = @Count) ORDER BY Ranking.Ranking">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="URL" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1" Name="Count" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>

        
</asp:Content>
