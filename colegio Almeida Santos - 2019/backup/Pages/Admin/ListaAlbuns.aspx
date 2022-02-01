<%@ Page Title="Painel de Controle - CAS" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master"
    AutoEventWireup="true" CodeBehind="ListaAlbuns.aspx.cs" Inherits="SolutSoft.CAS.Pages.Admin.ListaAlbuns" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="vertical-align: top;" width="100%">
        <tr>
            <td>
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="titlesimples" Text="Álbuns de fotos"></asp:Label><hr
                    class="barra1" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvAlbum" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="gvAlbum_PageIndexChanging"
                    PageSize="30" Width="100%" CssClass="tableconteudo" OnRowDataBound="gvAlbum_RowDataBound" AllowPaging="True" PagerSettings-Position="TopAndBottom" PagerStyle-HorizontalAlign="Center" PagerStyle-VerticalAlign="Middle">
                    <Columns>
                        <asp:TemplateField ShowHeader="true" ControlStyle-CssClass="row" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                            <HeaderTemplate>
                                <asp:Label ID="lblCapa" runat="server" CssClass="titlegrid" Width="50px" Text="Capa"></asp:Label>
                                <asp:Label ID="lblTitulo" runat="server" CssClass="titlegrid" Width="85%" Text="Nome do Álbum"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Table runat="server" Width="100%">
                                    <asp:TableRow Height="20px">
                                        <asp:TableCell Width="50px">
                                            <asp:ImageButton ID="imbEditar" runat="server" CssClass="capacd" CommandArgument='<%# Eval("IdAlbum") %>' OnClick="imbEditar_Click" ImageUrl='<%# Eval("DsCaminhoMiniatura") %>'></asp:ImageButton>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:LinkButton ID="lkbEditar" runat="server" Width="100%" Height="100%" CommandArgument='<%# Eval("IdAlbum") %>' Text='<%# Eval("DsTitulo") %>' OnClick="lkbEditar_Click"></asp:LinkButton>
                                        </asp:TableCell>
                                        <asp:TableCell Width="10px">
                                            <asp:ImageButton ID="imbExcluir" runat="server" ImageAlign="Bottom" ImageUrl="~/Pages/Admin/Images/Icones/icone_fechar.png"
                                                CommandArgument='<%# Eval("IdAlbum") %>' OnClick="imbExcluir_Click" OnClientClick="return confirm('Quer realmente excluir este Álbum?');" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
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
