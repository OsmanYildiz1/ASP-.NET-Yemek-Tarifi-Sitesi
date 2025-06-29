<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
        width: 100%;
            height: 31px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3" style="text-align:center">
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="20px" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">
                        <span style="font-weight:bold; font-size:20px">Malzemeler:</span>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr
                <tr>
                </tr>
                </tr>
                <tr>
                    <td class="auto-style3">
                    </td>
                    <tr>
                        <td class="auto-style5">
                            <span style="font-weight:bold; font-size:20px">Tarif:</span>
                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                        </td>
                        <tr>
                            <td class="auto-style5">
                                <asp:Image ID="Image1" runat="server" Height="230px" ImageUrl='<%# Eval("YemekResim") %>' Width="414px" />
                            </td>
                        </tr>
                    </tr>
                </tr>
            </table>
                   <table class="auto-style4">
           <tr>
               <td style="text-align:left"><span style="font-weight:bold; font-size:20px">Puan:</span>&nbsp;<asp:Label ID="Label17" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                   &nbsp; </td>
           </tr>
           <tr>
               <td style="text-align:left"><span style="font-weight:bold; font-size:20px">Tarih:</span>
                   <asp:Label ID="Label18" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
               </td>
           </tr>
       </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

