<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About Us.aspx.cs" Inherits="About_Us" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%; height: 435px;" bgcolor="#CCCCCC">
    <tr>
        <td >
            <asp:ImageButton ID="ImageButton1" runat="server" Width="300px" Height="300px"
             ImageUrl="~/كليه الحاسبات.gif"  OnClientClick="f4();" />
         <%--   <asp:Image ID="Image2" runat="server" Width="300px" Height="300px" 
                ImageUrl="~/كليه الحاسبات.gif" ImageAlign="Top" />--%>
        </td>
        <td>
            <p class="MsoNormal" dir="RTL" style="text-align:right;direction:rtl;unicode-bidi:
embed">
                المملكه العربيه السعوديه </p>
            <p class="MsoNormal" dir="RTL" style="text-align:right;direction:rtl;unicode-bidi:
embed">
                وزاره التعليم العالي </p>
            <p class="MsoNormal" dir="RTL" style="text-align:right;direction:rtl;unicode-bidi:
embed">
                جامعه الملكـ&nbsp; عبدالعزيز </p>
            <p class="MsoNormal" dir="RTL" style="text-align:right;direction:rtl;unicode-bidi:
embed">
                كليه الحاسبات وتقنيه المعومات </p>
        </td>
    </tr>
    <tr>
        <td>
            <br />
            عمل الطالب
            <br />
            خالد عبد الله ناجي ثوابه<br />
            <a href="mailto:Email:kanthawaba247@hotmail.com">Email:kanthawaba247@hotmail.com</a><br />
            <a href="mailto:Email:kanthawaba247@gmail.com">Email:kanthawaba247@gmail.com</a>&nbsp;
            <br />
        </td>
        <td style="direction: rtl">
            اشراف الدكتور :<br />
            معتصم جراح&nbsp;&nbsp;
            <br />
            <a href="mailto:Email:motasem.jarrah@yahoo.com">Email:motasem.jarrah@yahoo.com</a><br />
            ُ</td>
    </tr>
</table>
</asp:Content>

