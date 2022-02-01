<%@ Page Title="Painel de Controle - CAS" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ListaOcorrencias.aspx.cs" Inherits="SolutSoft.CAS.Pages.Admin.ListaOcorrencias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script language="javascript" type="text/javascript" src="../../Scripts/jquery.mask.js"></script>
    <script type="text/javascript">
        $(function () {
            $('.ra').mask('000000000-0');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="vertical-align: top;" width="100%">
        <tr>
            <td>
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="titlesimples" Text="Ocorrências"></asp:Label><hr
                    class="barra1" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="lkbPublico" runat="server" Text="Ocorrências públicas" CssClass="btn1" OnClick="lkbPublico_Click" Width="20%"></asp:LinkButton>
                <asp:LinkButton ID="lkbRestrito" runat="server" Text="Ocorrências restritas" CssClass="btn2" OnClick="lkbRestrito_Click" Width="20%"></asp:LinkButton>
                <asp:Panel ID="pnlPublico" runat="server" Visible="true" BorderColor="#A9F5A9" BorderStyle="Solid" BorderWidth="5px">
                    <table style="margin:20px 0px 20px 0px;" width="100%">
                        <tr>
                            <td>
                                <asp:GridView ID="gvConteudoPub" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="gvConteudo_PageIndexChanging"
                                    PageSize="30" Width="100%" CssClass="tableconteudo" OnRowDataBound="gvConteudo_RowDataBound">
                                    <Columns>
                                        <asp:TemplateField ShowHeader="true" ControlStyle-CssClass="row" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Right">
                                            <HeaderTemplate>
                                                <asp:Label ID="lblTitulo" runat="server" CssClass="titlegrid" Width="100%" Text="Título"></asp:Label>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lkbEditarData" runat="server" Width="15%" CommandArgument='<%# Eval("IdOcorrencia") %>' Text='<%# Eval("DsData") %>' OnClick="lkbEditar_Click" />
                                                <asp:LinkButton ID="lkbEditarTitulo" runat="server" Width="80%" CommandArgument='<%# Eval("IdOcorrencia") %>' Text='<%# Eval("DsTitulo") %>' OnClick="lkbEditar_Click" />
                                                <asp:ImageButton ID="imbExcluir" runat="server" ImageAlign="Bottom" ImageUrl="~/Pages/Admin/Images/Icones/icone_fechar.png" CommandArgument='<%# Eval("IdOcorrencia") %>' OnClick="imbExcluir_Click" OnClientClick="return confirm('Quer realmente excluir esta ocorrência?');"/>
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
                </asp:Panel>
                <asp:Panel ID="pnlRestrito" runat="server" Visible="false" BorderColor="#A9D0F5" BorderStyle="Solid" BorderWidth="5px">
                    <table style="margin:20px 0px 20px 0px;" width="100%">
                        <tr>
                            <td>
                                <asp:GridView ID="gvConteudoRes" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="gvConteudo_PageIndexChanging"
                                    PageSize="30" Width="100%" CssClass="tableconteudo" OnRowDataBound="gvConteudo_RowDataBound" AllowPaging="True" PagerStyle-HorizontalAlign="Center" PagerStyle-VerticalAlign="Middle" PagerSettings-Position="TopAndBottom">
                                    <Columns>
                                        <asp:TemplateField ShowHeader="true" ControlStyle-CssClass="row" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Right">
                                            <HeaderTemplate>
                                                <asp:Label ID="lblTitulo" runat="server" CssClass="titlegrid" Width="100%" Text="Título"></asp:Label>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lkbEditarData" runat="server" Width="15%" CommandArgument='<%# Eval("IdOcorrencia") %>' Text='<%# Eval("DsData") %>' OnClick="lkbEditar_Click" />
                                                <asp:LinkButton ID="lkbEditarTitulo" runat="server" Width="80%" CommandArgument='<%# Eval("IdOcorrencia") %>' Text='<%# Eval("DsTitulo") %>' OnClick="lkbEditar_Click" />
                                                <asp:ImageButton ID="imbExcluir" runat="server" ImageAlign="Bottom" ImageUrl="~/Pages/Admin/Images/Icones/icone_fechar.png" CommandArgument='<%# Eval("IdOcorrencia") %>' OnClick="imbExcluir_Click" OnClientClick="return confirm('Quer realmente excluir esta ocorrência?');"/>
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
                </asp:Panel>
                
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btnNovo" runat="server" CssClass="button2" Text="Novo" OnClick="btnNovo_Click"></asp:Button>
            </td>
        </tr>
    </table>
</asp:Content>
