<%@ Page Title="Colégio Almeida Santos" Language="C#" MasterPageFile="~/Pages/Site.Master" AutoEventWireup="true" CodeBehind="Mensagem.aspx.cs" Inherits="SolutSoft.CAS.Pages.Mensagem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="margin:0px 10px 20px 5px;">
        <tr>
            <td>
                <asp:Label ID="lblTexto" runat="server" CssClass="titlesimples" Text="Desculpe, o conteúdo parece não estar disponível no momento."></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>