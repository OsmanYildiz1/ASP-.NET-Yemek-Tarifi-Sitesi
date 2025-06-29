<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 39px;
            height: 34px;
        }

        .auto-style3 {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="background-color: gray;">
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" Height="30px" Text="+" Width="30px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" Height="30px" Text="-" Width="30px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style3">ONAYSIZ TARİF LİSTESİ</td>
                </tr>
            </table>
        </asp:Panel>
    </div>

    <div style="margin-bottom: 20px">
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="450px">
                <ItemTemplate>

                    <table class="auto-style1" style="width: 94%;">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>' Width="150px"></asp:Label>
                            </td>
                            <td>
                                <a href="TarifOnerDetay.aspx?TarifId=<%#Eval("TarifId") %>">
                                    <asp:Image ID="Image2" runat="server" Height="35px" ImageAlign="Right" ImageUrl="~/Resimler/suggestion.png" Width="35px" />
                                </a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </div>

        <div style="background-color: gray;">
        <asp:Panel ID="Panel3" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="Large" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"  />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="Large" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"  />
                    </td>
                    <td class="auto-style3">ONAYLI TARİF LİSTESİ</td>
                </tr>
            </table>
        </asp:Panel>
    </div>
        <div>
        <asp:Panel ID="Panel4" runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="450px">
                <ItemTemplate>

                    <table class="auto-style1" style="width: 94%;">
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("TarifAd") %>' Width="150px"></asp:Label>
                            </td>
                            <td>
                                <a href="TarifOnerDetay.aspx?TarifId=<%#Eval("TarifId") %>">
                                    <asp:Image ID="Image1" runat="server" Height="35px" ImageAlign="Right" ImageUrl="~/Resimler/suggestion.png" Width="35px" />
                                </a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </div>
</asp:Content>

