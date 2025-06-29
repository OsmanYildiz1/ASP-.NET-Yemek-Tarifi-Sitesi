<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-weight: bold;text-align:right;">Ad Soyad:</td>
            <td class="auto-style2" style="margin-left: 40px">
                <asp:TextBox ID="txtAd" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold;text-align:right;">Mail Adresi:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txtMail" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold; text-align:right;">İçerik:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txtIcerik" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold;text-align:right;">Yemek:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txtYemek" runat="server" CssClass="tb5" style="margin-bottom: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin-left: 40px">
                <asp:Button ID="Button1" runat="server" CssClass="fb8" Text="Onayla" Width="209px" Font-Bold="True" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

