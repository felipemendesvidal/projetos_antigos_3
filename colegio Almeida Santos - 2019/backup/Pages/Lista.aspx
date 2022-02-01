<%@ Page Title="Colégio Almeida Santos" Language="C#" MasterPageFile="~/Pages/Site.Master" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="SolutSoft.CAS.Pages.Lista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="Table1" runat="server" width="100%" style="padding-bottom:-20px;">
        <tr>
            <td valign="top" >
                <asp:Label ID="lblTitulo1" runat="server" CssClass="title" Text="DESTAQUE" Width="100%" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Repeater ID="rptConteudo" runat="server">
                    <ItemTemplate>
                        <div class="tabelanoticias">
                            <asp:LinkButton ID="lkbTitulo" runat="server" CssClass="titlenoticia" Width="100%" Text='<%# Eval("DsTitulo") %>' PostBackUrl='<%# Eval("Url") %>'></asp:LinkButton>
                            <asp:Label ID="lblTexto" runat="server" CssClass="textonoticia" Text='<%# Eval("DsTexto") %>'></asp:Label>
                            <asp:LinkButton ID="lblLeiaMais" runat="server" CssClass="leiamais" Text="Leia mais" PostBackUrl='<%# Eval("Url") %>'></asp:LinkButton><br /><hr class="barra1"/>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </td>
        </tr>
    </table>
</asp:Content>
