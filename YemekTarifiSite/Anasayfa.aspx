<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Anasayfa.aspx.cs" Inherits="Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <asp:DataList ID="DataList2" runat="server" Width="445px">
        <ItemTemplate>
            <table class="auto-style2">
                <tr>
                    <td style="background-color: #FFFFCC;" class="anasayfa-yemekler" >
                        <a href="YemekDetay.aspx?YemekId=<%# Eval("YemekId")%>">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="20px" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </a>


                    </td>
                </tr>
                <tr>
                    <td><span style="font-weight: bold">Malzemeler:</span>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><span style="font-weight: bold">Yemek Tarifi:</span>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><span style="font-weight: bold">Eklenme Tarihi:</span>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekTarih") %>' ForeColor="Silver"></asp:Label>
                        &nbsp;- <span style="font-weight: bold;">Puan:</span>
                        <asp:Label Style="font-style: italic" ID="Label9" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: solid; border-bottom-color: #FFFFFF; border-bottom-width: medium">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

</asp:Content>

