<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="font-style: normal; font-weight: bold; text-align:right">Tarif Ad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="font-style: normal; font-weight: bold; text-align:right">Tarif Malzemeler:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="font-style: normal; font-weight: bold; text-align:right">Yapılış:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"style="text-align:right; font-weight:bold">Tarif Resim:</td>
                <td style="text-align:center">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="263px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align:right; font-weight:bold">Tarif Öneren:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align:right; font-weight:bold">Öneren Mail:</td>
                <td style="margin-left: 80px">
                    <asp:TextBox ID="TextBox5" runat="server" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align:right; font-weight:bold">Kategori:</td>
                <td style="text-align:center" class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="260px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td style="text-align:center">
                    <asp:Button ID="Button2" runat="server" CssClass="fb8" Font-Bold="True" Font-Size="14px" OnClick="Button1_Click" Text="Onayla" Width="130px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

