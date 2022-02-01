<%@ Page Title="Painel de Controle - CAS" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ListaEmailsNews.aspx.cs" Inherits="SolutSoft.CAS.Pages.Admin.ListaEmailsNews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="vertical-align: top;" width="100%">
        <tr>
            <td>
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="titlesimples" Text="E-mails da Newsletter"></asp:Label><hr
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
                                <asp:Label ID="lblMail" runat="server" CssClass="titlegrid" Width="100%" Text="E-mail"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblEmail" runat="server" Width="95%" Text='<%# Eval("DsEmail") %>'></asp:Label>
                                <asp:ImageButton ID="imbExcluir" runat="server" ImageAlign="Bottom" ImageUrl="~/Pages/Admin/Images/Icones/icone_fechar.png" CommandArgument='<%# Eval("IdEmail") %>' OnClick="imbExcluir_Click" OnClientClick="return confirm('Quer realmente excluir este e-mail?');"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <asp:Label ID="lblEmpty" runat="server" CssClass="textonoticia" Width="100%" Text="Nenhum registro encontrado."></asp:Label>
                    </EmptyDataTemplate>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
