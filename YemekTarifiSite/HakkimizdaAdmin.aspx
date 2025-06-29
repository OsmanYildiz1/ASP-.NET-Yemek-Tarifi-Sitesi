<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkimizdaAdmin.aspx.cs" Inherits="HakkimizdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 35px;
        }
        .auto-style3 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="background-color:gray;">
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" Height="30px" OnClick="Button2_Click1" Text="+" Width="30px" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" Height="30px" OnClick="Button1_Click" Text="-" Width="30px" />
                    </td>
                    <td>HAKKIMIZDA</td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style1">
            <tr>
                <td style="margin-left: 80px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="435px" Height="200px" style="margin-right: 0px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="margin-left: 80px; text-align:center">
                    <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="18px" Text="Güncelle" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>

