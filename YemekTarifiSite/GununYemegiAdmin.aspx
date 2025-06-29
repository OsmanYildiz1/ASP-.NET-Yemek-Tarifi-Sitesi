<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="GununYemegiAdmin.aspx.cs" Inherits="GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="background-color:gray;">
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" Height="30px" OnClick="Button2_Click" Text="+" Width="30px" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" Height="30px" OnClick="Button1_Click" Text="-" Width="30px" />
                    </td>
                    <td>YEMEK LİSTESİ</td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style1" style="width: 94%">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>' Width="150px"></asp:Label>
                        </td>
                        <td><a href='YemekDuzenle.aspx?YemekId=<%# Eval("YemekId") %>'>
                            <asp:Image ID="Image3" runat="server" Height="35px" ImageAlign="Right" ImageUrl="~/Resimler/choice.png" Width="35px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

