<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }

        .auto-style3 {
            height: 25px;
        }

        .auto-style4 {
            width: 157px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="32px" Text="Label" ForeColor="White"></asp:Label>
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Font-Size="25px" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: inset; border-bottom-width: thin";>
                            <asp:Label ID="Label7" runat="server" Font-Size="12px" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    <div style="background-color: #FFFFCC">YORUM YAPMA PANELİ</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="font-style: normal; font-weight: bold; text-align:right" class="auto-style4">Ad Soyad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-style: normal; font-weight: bold; text-align:right" class="auto-style4">Mail:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-style: normal; font-weight: bold; text-align:right" class="auto-style4">Yorumunuz:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td style="text-align:center">
                    <asp:Button ID="Button1" runat="server" Text="Yorum Yap" Font-Bold="True" Font-Size="14px" OnClick="Button1_Click" Width="130px"  />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </asp:Panel>
</asp:Content>

