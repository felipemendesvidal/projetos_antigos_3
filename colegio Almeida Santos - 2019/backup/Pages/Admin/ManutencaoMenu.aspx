<%@ Page Title="Painel de Controle - CAS" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManutencaoMenu.aspx.cs" Inherits="SolutSoft.CAS.Pages.Admin.ManutencaoMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="vertical-align: top;" width="100%">
        <tr>
            <td>
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="titlesimples" Text="Conteúdo do Menu"></asp:Label><hr
                    class="barra1" />
            </td>
        </tr>
        <tr>
            <td width="100%">
                <table width="100%" cellspacing="0">
                    <tr>
                        <td width="60%">
                            <asp:Label ID="lblTitulo" runat="server" CssClass="title2" Text="Título: "></asp:Label>
                        </td>
                        <td width="40%">
                            <asp:Label ID="lblMenuPai" runat="server" CssClass="title2" Text="Menu pai: "></asp:Label>
                        </td>
                    </tr>
                    <tr align="left">
                        <td>
                            <asp:TextBox ID="txtTitulo" runat="server" CssClass="textbox1" Width="90%" MaxLength="50"></asp:TextBox>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlMenus" CssClass="textbox1" runat="server" Height="30px" Width="100%"></asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btnSalvar" runat="server" CssClass="button2" Text="Salvar"
                    OnClick="btnSalvar_Click"></asp:Button>
            </td>
        </tr>
    </table>
</asp:Content>
