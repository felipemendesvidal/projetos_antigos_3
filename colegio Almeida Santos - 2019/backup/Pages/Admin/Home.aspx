<%@ Page Title="Painel de Controle - CAS" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SolutSoft.CAS.Pages.Admin.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="Table1" runat="server" width="100%" >
        <tr>
            <td valign="top" >
                <asp:Label ID="lblTitle" runat="server" CssClass="titlesimples" Text="Home"></asp:Label><hr
                    class="barra1" />
            </td>
        </tr>
    </table>
    <table style="margin:-10px 10px 20px 10px;">
        <tr>
            <td>
                <asp:Label ID="lblWel" runat="server" CssClass="textonoticia" Text="Seja bem-vindo ao painel de controle do Site Oficial do Colégio Almeida Santos!" ></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
