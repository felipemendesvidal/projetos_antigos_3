<%@ Page Title="Colégio Almeida Santos" Language="C#" MasterPageFile="~/Pages/Site.Master" AutoEventWireup="true" CodeBehind="Albuns.aspx.cs" Inherits="SolutSoft.CAS.Pages.Albuns" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="Table1" runat="server" width="100%" >
        <tr>
            <td valign="top" >
                <asp:Label ID="lblTitulo" runat="server" CssClass="title" Text="GALERIA DE FOTOS" Width="100%"></asp:Label>
            </td>
        </tr>
    </table>
    <table>
        <tr valign="top" align="center">
            <td>
                <asp:Repeater ID="rptAlbuns" runat="server">
                    <ItemTemplate>
                        <div style="float:left;width:auto;height:auto;text-align:center;" class="albuns row1">
                            <a href='<%# Eval("Url") %>' style="text-decoration:none;">
                                <table style="max-height:200px; max-width:180px;" cellspacing="0">
                                    <tr align="center">
                                        <td align="center" colspan="0">
                                            <asp:Image ID="imbFoto" runat="server" ImageUrl='<%# Eval("DsCaminhoMiniatura")%>' CssClass="imagefoto" ImageAlign="Middle" BorderWidth="0" ></asp:Image>
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
                </asp:Repeater>
            </td>
        </tr>
    </table>
</asp:Content>
