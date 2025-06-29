<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminKategoriler.aspx.cs" Inherits="AdminKategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 33px;
        }
        .auto-style3 {
            width: 44px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server" >
    <div style="background-color:gray;">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" Height="30px" Text="+" Width="30px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" Height="30px" Text="-" Width="30px" OnClick="Button1_Click" />
                </td>
                <td>KATEGORİ LİSTESİ</td>
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
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>' Width="150px"></asp:Label>
                        </td>
                        <td>
                        <a href="AdminKategoriler.aspx?Kategoriid=<%#Eval("KategoriId")%>&islem=sil"> 
                            <asp:Image ID="Image2" runat="server" Height="33px" ImageAlign="Right" ImageUrl="~/Resimler/delete.png" Width="33px" />
                        </a>  
                        </td>
                        <td>
                         <a href="KategoriAdminDetay.aspx?KategoriId=<%#Eval("KategoriId") %>"><asp:Image ID="Image3" runat="server" Height="35px" ImageAlign="Right" ImageUrl="~/Resimler/UPDATE.png" Width="35px" /></a>
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
                   <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="Large" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"  />
               </td>
               <td class="auto-style3">
                   <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="Large" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"  />
               </td>
               <td>KATEGORİ EKLEME</td>
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
                <td>KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="fb8" Font-Bold="True" Font-Size="15px" Text="Ekle" Width="96px" OnClick="BtnEkle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>

