<%@ Page Title="Painel de Controle - CAS" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Foto.aspx.cs" Inherits="SolutSoft.CAS.Pages.Admin.Foto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="vertical-align: top;" width="100%">
        <tr>
            <td>
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="titlesimples" Text="Foto"></asp:Label><hr
                    class="barra1" />
            </td>
        </tr>
        <tr>
            <td width="100%">
                <table width="100%" cellspacing="0">
                    <tr align="left" >
                        <td width="63%">
                            <asp:Label ID="lblTitulo" runat="server" CssClass="title2" Text="Legenda: "></asp:Label>
                        </td>
                        <td width="17%">
                            &nbsp;
                        </td>
                    </tr>
                    <tr align="left" >
                        <td>
                            <asp:TextBox ID="txtLegenda" runat="server" Width="590px" CssClass="textbox1" ></asp:TextBox>
                        </td>
                        <td>
                            <asp:CheckBox ID="chkCapa" runat="server" Text="Capa do álbum" CssClass="title2"></asp:CheckBox>
                        </td>
                    </tr>
                </table>
                <table width="100%">
                    <tr>
                        <td align="center">
                            <asp:Button ID="btnSalvar" runat="server" CssClass="button2" Text="Salvar"
                                OnClick="btnSalvar_Click"></asp:Button>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        <tr>
            <td align="center">
                <asp:Image ID="imgFoto" runat="server" Width="80%"></asp:Image>
            </td>
        </tr>
    </table>
</asp:Content>
