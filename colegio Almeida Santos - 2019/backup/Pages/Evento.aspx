<%@ Page Title="Colégio Almeida Santos" Language="C#" MasterPageFile="~/Pages/Site.Master" AutoEventWireup="true" CodeBehind="Evento.aspx.cs" Inherits="SolutSoft.CAS.Pages.Evento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="Table1" runat="server" width="100%" >
        <tr>
            <td valign="top" >
                <asp:LinkButton ID="lkbTitulo" runat="server" CssClass="title ho" Text="AGENDA" PostBackUrl="~/Pages/Agenda.aspx" Width="100%"></asp:LinkButton>
            </td>
        </tr>
    </table>
    <table style="margin:0px 10px 20px 5px;">
        <tr>
            <td>
                <asp:Label ID="lblTitle" runat="server" CssClass="titlenoticia" Width="100%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTexto" runat="server" CssClass="textonoticia" ></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
