<%@ Page Title="Colégio Almeida Santos" Language="C#" MasterPageFile="~/Pages/Site.Master" AutoEventWireup="true" CodeBehind="Conteudo.aspx.cs" Inherits="SolutSoft.CAS.Pages.Conteudo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="Table1" runat="server" width="100%" >
        <tr>
            <td valign="top" >
                <asp:Label ID="lblTitulo" runat="server" CssClass="title" Text="CONTEÚDO" Width="100%"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="margin:0px 0px 20px 0px;width:651px;">
        <tr>
            <td>
                <asp:Label ID="lblTexto" runat="server" CssClass="textonoticia" Width="100%"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
