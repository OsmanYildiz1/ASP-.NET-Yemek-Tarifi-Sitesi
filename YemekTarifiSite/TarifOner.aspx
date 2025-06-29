<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            height: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight:bold; text-align:right">Tarif Ad:</td>
            <td>
                <asp:TextBox ID="txtTarifAd" runat="server" Width="315px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-weight:bold; text-align:right">Malzemeler:</td>
            <td>
                <asp:TextBox ID="txtMalzemeler" runat="server" Width="316px" Height="80px" TextMode="MultiLine" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-weight:bold;text-align:right">Tarif:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txtTarif" runat="server" Width="316px" Height="150px" TextMode="MultiLine" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-weight:bold;text-align:right">Resim:</td>
            <td style="margin-left: 40px">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="322px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td style="font-weight:bold;text-align:right">Tarif Öneren:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txtTarifOneren" runat="server" Width="316px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-weight:bold; text-align:right">Mail Adresi:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txtMailAdresi" runat="server" Width="316px" TextMode="Email" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-weight:bold" class="auto-style4"></td>
            <td style="text-align:center;" class="auto-style4">
                <asp:Button ID="btnTarifOner" runat="server" Text="Tarif Öner" BackColor="#FF9999" Width="150px" Font-Bold="True" Font-Italic="False" ForeColor="White" Height="40px" style="margin-top:10px; margin-right:25px" OnClick="btnTarifOner_Click"  />
            </td>
        </tr>
        <tr>
            <td style="font-weight:bold">&nbsp;</td>
            <td style="margin-left: 40px; text-align:center;">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

