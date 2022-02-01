﻿<%@ Page Title="Painel de Controle - CAS" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ListaBanners.aspx.cs" Inherits="SolutSoft.CAS.Pages.Admin.ListaBanners" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="vertical-align: top;" width="100%">
        <tr>
            <td>
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="titlesimples" Text="Banners"></asp:Label><hr
                    class="barra1" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvConteudo" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="gvConteudo_PageIndexChanging"
                    PageSize="30" Width="100%" CssClass="tableconteudo" OnRowDataBound="gvConteudo_RowDataBound" AllowPaging="True" PagerSettings-Position="TopAndBottom" PagerStyle-HorizontalAlign="Center" PagerStyle-VerticalAlign="Middle">
                    <Columns>
                        <asp:TemplateField ShowHeader="true" ControlStyle-CssClass="row" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Right">
                            <HeaderTemplate>
                                <asp:Label ID="lblPosicao" runat="server" CssClass="titlegrid" Width="20%" Text="Posição"></asp:Label>
                                <asp:Label ID="lblDescricao" runat="server" CssClass="titlegrid" Width="75%" Text="Descrição"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="lkbPosicao" runat="server" Width="20%" CommandArgument='<%# Eval("IdBanner") %>' Text='<%# Eval("FlPosicao") %>' OnClick="lkbEditar_Click" />
                                <asp:LinkButton ID="lkbEditar" runat="server" Width="75%" CommandArgument='<%# Eval("IdBanner") %>' Text='<%# Eval("DsDescricao") %>' OnClick="lkbEditar_Click" />
                                <asp:ImageButton ID="imbExcluir" runat="server" ImageAlign="Bottom" ImageUrl="~/Pages/Admin/Images/Icones/icone_fechar.png" OnClientClick="return confirm('Quer realmente excluir esta foto?');" OnClick="imbExcluir_Click" CommandArgument='<%# Eval("IdBanner") %>'/>
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
