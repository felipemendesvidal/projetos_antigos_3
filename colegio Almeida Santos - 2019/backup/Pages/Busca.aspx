<%@ Page Title="Colégio Almeida Santos" Language="C#" MasterPageFile="~/Pages/Site.Master" AutoEventWireup="true" CodeBehind="Busca.aspx.cs" Inherits="SolutSoft.CAS.Pages.Busca" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="Table1" runat="server" width="100%" cellspacing="0">
        <tr>
            <td valign="top">
                <asp:Label ID="lblTitulo" runat="server" CssClass="title" Text="RESULTADO DA BUSCA" Width="100%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td valign="middle">
                <br />
                &nbsp;
                <asp:LinkButton ID="lkbConteudo" runat="server" Text="Textos" CssClass="btn1" OnClick="lkbConteudo_Click"
                    Width="20%"></asp:LinkButton>
                <%--<asp:LinkButton ID="lkbImagens" runat="server" Text="Imagens" CssClass="btn2" OnClick="lkbImagens_Click"
                    Width="20%"></asp:LinkButton>--%>

                <asp:Panel ID="pnlConteudo" runat="server" Visible="true" BorderColor="#A9F5A9" BorderStyle="Solid"
                    BorderWidth="5px">
                    <table width="100%" cellpadding="0" cellspacing="0" style="padding: 20px 10px 10px 10px;">
                        <tr>
                            <td>
                                <asp:Repeater ID="rptConteudo" runat="server">
                                    <ItemTemplate>
                                        <div class="tabelanoticias">
                                            <asp:LinkButton ID="lkbTitulo" runat="server" CssClass="titlenoticia" Width="100%" Text='<%# Eval("DsTitulo") %>' PostBackUrl='<%# Eval("Url") %>'></asp:LinkButton>
                                            <asp:Label ID="lblTexto" runat="server" CssClass="textonoticia" Text='<%# Eval("DsTexto") %>'></asp:Label>
                                            <asp:LinkButton ID="lblLeiaMais" runat="server" CssClass="leiamais" Text="Leia mais" PostBackUrl='<%# Eval("Url") %>'></asp:LinkButton><br />
                                            <hr class="barra1" />
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>

                <asp:Panel ID="pnlAlbuns" runat="server" Visible="false" BorderColor="#A9D0F5" BorderStyle="Solid"
                    BorderWidth="5px">
                    <table width="100%">
                        <tr valign="top" align="center">
                            <td>
                                <%--<asp:Repeater ID="rptAlbuns" runat="server">
                                    <ItemTemplate>
                                        <div style="float: left; width: auto; height: auto; text-align: center;" class="albuns row1">
                                            <a href='<%# Eval("Url") %>' style="text-decoration: none;">
                                                <table style="max-height: 200px; max-width: 180px;" cellspacing="0">
                                                    <tr align="center">
                                                        <td align="center" colspan="0">
                                                            <asp:Image ID="imbFoto" runat="server" ImageUrl='<%# Eval("DsCaminhoMiniatura")%>' CssClass="imagefoto" ImageAlign="Middle" BorderWidth="0"></asp:Image>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" valign="top">
                                                            <asp:Label ID="lblTituloAlbum" runat="server" CssClass="title9" Text='<%# Eval("DsTitulo")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </a>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>--%>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
