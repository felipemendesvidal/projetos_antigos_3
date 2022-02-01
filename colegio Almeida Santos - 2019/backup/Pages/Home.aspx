<%@ Page Title="Colégio Almeida Santos" Language="C#" MasterPageFile="~/Pages/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SolutSoft.CAS.Pages.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Styles/screen.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="../Styles/lightbox.css" type="text/css" media="screen" />
    <script type="text/javascript" src="../Scripts/jquery-ui-1.8.18.custom.min.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.smooth-scroll.min.js"></script>
    <script type="text/javascript" src="../Scripts/lightbox.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $('a').smoothScroll({
                speed: 1000,
                easing: 'easeInOutCubic'
            });

            $('.showOlderChanges').on('click', function (e) {
                $('.changelog .old').slideDown('slow');
                $(this).fadeOut();
                e.preventDefault();
            })
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="pnlDestaque" runat="server" >
        <table id="Table1" runat="server" width="100%" style="margin-bottom:-20px;">
            <tr>
                <td valign="top" >
                    <asp:LinkButton ID="lkbTitulo1" runat="server" CssClass="title ho" Text="DESTAQUE" Width="100%" PostBackUrl="~/Pages/Lista.aspx?idmenu=47" ></asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="lblTextoDestaque" runat="server" CssClass="textodestaque" Width="97%" ></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <table id="Table2" runat="server" width="650px" style="padding-bottom:-40px;margin-bottom:-10px;">
        <tr valign="top">
            <td colspan="2">
                <br />
                <asp:LinkButton ID="lkbTitulo2" runat="server" CssClass="title ho" Text="NOTÍCIAS" Width="100%" PostBackUrl="~/Pages/Lista.aspx?idmenu=44"></asp:LinkButton>
            </td>
        </tr>
        <tr valign="top">
            <td>
                <asp:Repeater ID="rptConteudo" runat="server">
                    <ItemTemplate>
                        <div class="tabelanoticiashome">
                            <asp:LinkButton ID="lkbTitulo" runat="server" CssClass="titlenoticia" Width="100%" Text='<%# Eval("DsTitulo") %>' PostBackUrl='<%# Eval("Url") %>'></asp:LinkButton>
                            <asp:Label ID="lblTexto" runat="server" CssClass="textonoticia" Text='<%# Eval("DsTexto") %>'></asp:Label>
                            <asp:LinkButton ID="lblLeiaMais" runat="server" CssClass="leiamais" Text="Leia mais" PostBackUrl='<%# Eval("Url") %>'></asp:LinkButton><br /><hr class="barra1"/>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </td>
        </tr>
    </table>
    <table width="100%" style="padding-bottom:-40px;">
        <tr>
            <td style="width: 49%;" valign="top">
                <table id="Table4" runat="server" width="100%" >
                    <tr valign="top">
                        <td >
                            <asp:LinkButton ID="lkbTitulo3" runat="server" CssClass="title ho" Text="AGENDA" PostBackUrl="~/Pages/Agenda.aspx" Width="100%" ></asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <asp:Repeater ID="rptAgenda" runat="server">
                                <ItemTemplate>
                                    <asp:Image ID="imgCalendario" runat="server" ImageUrl="~/Pages/Admin/Images/Icones/Calendario.png" Width="23px" ImageAlign="Top"></asp:Image>
                                    <asp:LinkButton ID="lkbTituloAgenda" runat="server" CssClass="title9" Width="88%" Text='<%# Eval("DsTitulo") %>' PostBackUrl='<%# Eval("Url") %>'></asp:LinkButton>
                                </ItemTemplate>
                                <SeparatorTemplate>
                                    <hr class="barra1"/>
                                </SeparatorTemplate>
                            </asp:Repeater>
                            <hr class="barra1"/>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="width: 50%;" valign="top">
                <table id="Table3" runat="server" width="100%" style="padding-bottom:-40px;">
                    <tr valign="top">
                        <td valign="top" >
                            <asp:LinkButton ID="lkbTitulo4" runat="server" CssClass="title ho" Text="GALERIA DE FOTOS" PostBackUrl="~/Pages/Albuns.aspx" Width="100%" ></asp:LinkButton>
                            <asp:Repeater ID="rptAlbuns" runat="server">
                                <ItemTemplate>
                                    <div style="float:left;width:auto;height:auto;text-align:center;" class="albuns row1">
                                        <a href='<%# Eval("Url") %>' style="text-decoration:none;">
                                            <table width="127px" height="127px" cellspacing="0" >
                                                <tr align="center">
                                                    <td align="center" colspan="0">
                                                        <asp:Image ID="imbFoto" runat="server" ImageUrl='<%# Eval("DsCaminhoMiniatura")%>' CssClass="imagefotohome" ImageAlign="Middle" BorderWidth="0" ></asp:Image>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" valign="top">
                                                        <asp:Label ID="lblTituloAlbum" CssClass="title9" runat="server" Text='<%# Eval("DsTitulo")%>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </a>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>