<%@ Page Title="Painel de Controle - CAS" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManutencaoBanner.aspx.cs" Inherits="SolutSoft.CAS.Pages.Admin.ManutencaoBanner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="vertical-align: top;" width="100%">
        <tr>
            <td >
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="titlesimples" Text="Banner"></asp:Label><hr class="barra1" />
            </td>
        </tr>
        <tr>
            <td width="100%">
                <table width="100%" cellspacing="0">
                    <tr>
                        <td width="50%" >
                            <input type="file" id="fupBanner" runat="server" class="textbox1" />
                        </td>
                        <td>
                            <asp:CheckBox ID="chkAtivo" runat="server" CssClass="title2" Text="Ativo" />
                        </td>
                    </tr>
                    <tr>
                        <td width="50%">
                            <asp:Label ID="lblDescricao" runat="server" CssClass="title2" Text="Descrição: "></asp:Label>
                        </td>
                    </tr>
                    <tr align="left">
                        <td>
                            <asp:TextBox ID="txtDescricao" runat="server" CssClass="textbox1" Width="90%" MaxLength="70"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="rblExibicao" runat="server" CssClass="title2" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Topo" Value="Topo" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Direita" Value="Direita"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td valign="top">
                            <asp:Label ID="lblTamanhoT" runat="server" CssClass="title4" Text="Topo: Largura 824px x Altura 180px"></asp:Label><br />
                            <asp:Label ID="lblTamanhoD" runat="server" CssClass="title4" Text="Direita: Largura 163px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="50%">
                            <asp:Label ID="lblDestino" runat="server" CssClass="title2" Text="Url de destino: "></asp:Label>
                        </td>
                    </tr>
                    <tr align="left">
                        <td>
                            <asp:TextBox ID="txtDestino" runat="server" CssClass="textbox1" Width="90%" MaxLength="100"></asp:TextBox>
                        </td>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btnSalvar" runat="server" CssClass="button2" Text="Salvar"
                    OnClick="btnSalvar_Click"></asp:Button>
            </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        <tr>
            <td align="center">
                <asp:Image ID="imgBanner" runat="server" CssClass="imageview"></asp:Image>
            </td>
        </tr>
    </table>
</asp:Content>
