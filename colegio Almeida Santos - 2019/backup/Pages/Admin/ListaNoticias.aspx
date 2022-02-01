<%@ Page Title="Painel de Controle - CAS" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ListaNoticias.aspx.cs" Inherits="SolutSoft.CAS.Pages.Admin.ListaNoticias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="vertical-align: top;" width="100%">
        <tr>
            <td>
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="titlesimples" Text="Notícias"></asp:Label><hr
                    class="barra1" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvConteudo" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="gvConteudo_PageIndexChanging"
                    PageSize="30" Width="100%" CssClass="tableconteudo" OnRowDataBound="gvConteudo_RowDataBound" PagerSettings-Position="TopAndBottom" PagerStyle-HorizontalAlign="Center" PagerStyle-VerticalAlign="Middle">
                    <Columns>
                        <asp:TemplateField ShowHeader="true" ControlStyle-CssClass="row" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Right">
                            <HeaderTemplate>
                                <asp:Label ID="lblTitulo" runat="server" CssClass="titlegrid" Width="100%" Text="Título"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="lkbEditar" runat="server" Width="95%" CommandArgument='<%# Eval("IdConteudo") %>' Text='<%# Eval("DsTitulo") %>' OnClick="lkbEditar_Click" />
                                <asp:ImageButton ID="imbExcluir" runat="server" ImageAlign="Bottom" ImageUrl="~/Pages/Admin/Images/Icones/icone_fechar.png" CommandArgument='<%# Eval("IdConteudo") %>' OnClick="imbExcluir_Click" OnClientClick="return confirm('Quer realmente excluir este Conteúdo?');"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <asp:Label ID="lblEmpty" runat="server" CssClass="textonoticia" Width="100%" Text="Nenhum registro encontrado."></asp:Label>
                    </EmptyDataTemplate>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btnNovo" runat="server" CssClass="button2" Text="Novo" OnClick="btnNovo_Click"></asp:Button>
            </td>
        </tr>
    </table>
</asp:Content>
