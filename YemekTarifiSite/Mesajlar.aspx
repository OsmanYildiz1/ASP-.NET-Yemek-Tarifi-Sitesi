<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 42px;
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
                    <td class="auto-style4">MESAJ LİSTESİ</td>
                </tr>
            </table>
        </asp:Panel>
    </div>

    <div style="margin-bottom: 20px">
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="450px">
                <itemtemplate>

                    <table class="auto-style1" style="width: 94%;">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajGonderen") %>' Width="150px"></asp:Label>
                            </td>
                            <td>
                                <a href="MesajDetay.aspx?MesajId=<%#Eval("MesajId") %>">
                                    <asp:Image ID="Image2" runat="server" Height="35px" ImageAlign="Right" ImageUrl="~/Resimler/proof-reading.png" Width="35px" />
                                </a>
                            </td>
                        </tr>
                    </table>
                </itemtemplate>
            </asp:DataList>
        </asp:Panel>
    </div>

</asp:Content>

