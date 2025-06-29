<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server" >
    <div style="text-align:center; padding:10px">
   &nbsp;<asp:DataList ID="DataList3" runat="server">
            <ItemTemplate>
                <asp:Label  ID="Label4" runat="server"  Text='<%# Eval("Metin") %>' ></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </div>
     
       <br />
    <asp:Image runat="server" Height="265px" ImageUrl="~/Resimler/istockphoto-1157984877-612x612.jpg" Width="450px"></asp:Image>
</asp:Content>

