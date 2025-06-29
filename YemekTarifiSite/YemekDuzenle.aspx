<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 32px;
        }
        .auto-style3 {
            height: 25px;
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
            <td class="auto-style2" style="text-align:right; font-weight: bold;">YEMEK AD:</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align:right; font-weight: bold;">MALZEMELER</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align:right; font-weight: bold;">TARİF:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align:right; font-weight: bold;" class="auto-style3">KATEGORİ:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="text-align:right; font-weight:bold">YEMEK FOTOÜRAFI:</td>
            <td style="text-align:center;">
                <asp:FileUpload ID="FileUpload1" runat="server" style="margin-left: 0px" Width="231px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align:center">
                <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="fb8" Width="126px" Font-Size="16px" Height="33px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align:center">
                <asp:Button ID="Button2" runat="server" CssClass="fb8" Font-Size="16px" OnClick="Button2_Click" Text="Günün Yemeği Seç" Width="158px" />
            </td>
        </tr>
    </table>
</asp:Content>

