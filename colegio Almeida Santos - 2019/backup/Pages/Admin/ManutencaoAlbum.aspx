<%@ Page Title="Painel de Controle - CAS" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManutencaoAlbum.aspx.cs" Inherits="SolutSoft.CAS.Pages.Admin.ManutencaoAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script language="javascript" type="text/javascript" src="../../Scripts/jquery.mask.js"></script>
    <script type="text/javascript">
        $(function () {
            $('.date').mask('00/00/0000');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="vertical-align: top;" width="100%">
        <tr>
            <td>
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="titlesimples" Text="Álbum de fotos"></asp:Label><hr class="barra1" />
            </td>
        </tr>
        <tr>
            <td width="100%">
                <table width="100%" cellspacing="0">
                    <tr align="left" >
                        <td width="63%">
                            <asp:Label ID="lblTitulo" runat="server" CssClass="title2" Text="Título: "></asp:Label>
                        </td>
                        <td width="17%">
                            <asp:Label ID="lblData" runat="server" CssClass="title2" Text="Data: " ></asp:Label>
                        </td>
                    </tr>
                    <tr align="left" >
                        <td>
                            <asp:TextBox ID="txtTitulo" runat="server" Width="590px" CssClass="textbox1" ></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtData" runat="server" CssClass="textbox1 date" ></asp:TextBox>
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
        <asp:Panel ID="pnlAddFotos" runat="server" Visible="true">
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td>
                    <asp:Label ID="lblTituloPagina2" runat="server" CssClass="titlesimples" Text="Adicionar uma foto"></asp:Label><hr class="barra1"/>
                </td>
            </tr>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td width="60%" >
                                <input type="file" multiple="multiple" id="fupFoto" runat="server" class="textbox1"/>
                            </td>
                            <td width="30%" align="right">
                                <asp:Button ID="btnAdicionar" runat="server" CssClass="button2" Width="80%" OnClick="btnAdicionar_Click" Text="Adicionar foto"></asp:Button>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>
        <asp:Panel ID="pnlFotos" runat="server" Visible="false">
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblTituloPagina3" runat="server" CssClass="titlesimples" Text="Fotos"></asp:Label><hr class="barra1"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <table cellspacing="0" width="100%">
                        <tr>
                            <td>
                                <asp:Repeater ID="rptFotos" runat="server">
                                    <ItemTemplate>
                                        <div style="float:left;width:auto;height:auto" class="listafotos row1">
                                            <table width="145px" cellspacing="0">
                                                <tr align="center">
                                                    <td align="center" colspan="0">
                                                        <asp:Image ID="imgFoto" runat="server" ImageUrl='<%# Eval("DsCaminhoMiniatura")%>' height="90px" ImageAlign="Middle" ToolTip='<%# Eval("DsLegenda") %>' />
                                                    </td>
                                                    <td align="left" valign="top">
                                                        <asp:LinkButton ID="lkbEditar" runat="server" CssClass="menubutton5" Text=" Editar " Width="100px" Height="20px" PostBackUrl='<%# Eval("Url") %>' ></asp:LinkButton><br />
                                                        <asp:LinkButton ID="lkbExcluir" runat="server" CssClass="menubutton5" Text="Excluir" Width="100px" Height="20px" OnClientClick="return confirm('Quer realmente excluir esta foto?');" OnClick="lkbExcluir_Click" CommandArgument='<%# Eval("IdFoto") %>' ></asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>
    </table>
</asp:Content>
