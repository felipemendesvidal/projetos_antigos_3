<%@ Page Title="Painel de Controle - CAS" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="SolutSoft.CAS.Pages.Admin.Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="vertical-align:top;" width="100%" >
        <tr>
            <td>
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="titlesimples" Text="Informações de Acesso"></asp:Label><hr class="barra1"/>
            </td>
        </tr>
        <tr>
            <td>
                <table width="500px" cellspacing="0">
                    <tr>
                        <td align="right" width="160px">
                            <asp:Label ID="lblNome" runat="server" CssClass="title2" Text="Usuário: "></asp:Label>
                        </td>
                        <td align="left" width="340px">
                            <asp:TextBox ID="txtNome" runat="server" CssClass="textbox" Width="250px" MaxLength="50" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblLogin" runat="server" CssClass="title2" Text="Login: "></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtLogin" runat="server" CssClass="textbox" Width="250px" MaxLength="20" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblSenha" runat="server" CssClass="title2" Text="Senha antiga: " ></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtSenha" runat="server" CssClass="textbox" TextMode="Password" MaxLength="16" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblNovSenha" runat="server" CssClass="title2" Text="Nova senha: " ></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtNovSenha" runat="server" CssClass="textbox" TextMode="Password" MaxLength="16" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblConfSenha" runat="server" CssClass="title2" Text="Confirme a senha: " ></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtConfSenha" runat="server" CssClass="textbox" TextMode="Password" MaxLength="16" ></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table style="vertical-align:top;" width="100%" >
        <tr>
            <td align="center">
                <asp:Button ID="btnSalvar" runat="server" CssClass="button2" Text="Salvar" OnClick="lkbSalvar_Click"></asp:Button>&nbsp;&nbsp;
                <asp:Button ID="btnVoltar" runat="server" CssClass="button2" Text="Cancelar" PostBackUrl="~/Pages/Admin/Home.aspx"></asp:Button>
            </td>
        </tr>
    </table>
</asp:Content>
