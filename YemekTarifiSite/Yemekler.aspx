<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 33px;
        }
        .auto-style3 {
            width: 44px;
        }
        .auto-style4 {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server" >
    <div style="background-color:gray;">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" Height="30px" Text="+" Width="30px" OnClick="Button2_Click1"  />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" Height="30px" Text="-" Width="30px" OnClick="Button1_Click" />
                </td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
        </asp:Panel>
       </div>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="450px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style1" style="width: 94%">
                    <tr>
                        <td>
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>' Width="150px"></asp:Label>
                        </td>
                        <td>
                        <a href="Yemekler.aspx?YemekId=<%# Eval("YemekId")%>&islem=sil"> 
                            <asp:Image ID="Image2" runat="server" Height="33px" ImageAlign="Right" ImageUrl="~/Resimler/delete.png" Width="33px" />
                        </a>  
                        </td>
                        <td>
                         <a href="YemekDuzenle.aspx?YemekId=<%# Eval("YemekId") %>"><asp:Image ID="Image3" runat="server" Height="35px" ImageAlign="Right" ImageUrl="~/Resimler/UPDATE.png" Width="35px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

       <asp:Panel ID="Panel3" runat="server" BackColor="Gray" style="margin-top:15px">
       <table class="auto-style1">
           <tr>
               <td class="auto-style2">
                   <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="Large" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"   />
               </td>
               <td class="auto-style3">
                   <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="Large" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"   />
               </td>
               <td>YEMEK EKLEME</td>
           </tr>
       </table>
       </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>YEMEK AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>MALZEMELER:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK TARİFİ:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">KATEGORİ:</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px" Height="30px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align:center">
                    <asp:Button ID="BtnEkle1" runat="server" CssClass="fb8" Font-Bold="True" Font-Size="15px" Text="Ekle" Width="150px" OnClick="BtnEkle1_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>

