<%@ Page Title="Colégio Almeida Santos" Language="C#" MasterPageFile="~/Pages/Site.Master"
    AutoEventWireup="true" CodeBehind="Fotos.aspx.cs" Inherits="SolutSoft.CAS.Pages.Fotos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="../Scripts/lightbox-2.6.min.js"></script>
    <link href="../Styles/lightbox.css" type="text/css" rel="Stylesheet" />
    <link href="../Styles/screen.css" type="text/css" rel="Stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="Table1" runat="server" width="100%">
        <tr>
            <td valign="top">
                <asp:Label ID="lblTitulo" runat="server" CssClass="title" Text="FOTOS" Width="100%"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="margin: 0px 0px 0px 0px;">
        <tr>
            <td style="text-align: left;">
                <div class="imageRow">
                    <div class="set">
                        <asp:Repeater ID="rptFotos" runat="server">
                            <ItemTemplate>
                                <div class="single first last" style="height: 122px;">
                                    <a class="example-image-link" href='<%# Eval("DsCaminho") %>' data-lightbox="example-set"
                                        title='<%# Eval("DsLegenda") %>'>
                                        <img class="example-image" src='<%# Eval("DsCaminhoMiniatura") %>' alt="Fotos: Imagem 1 de 4"
                                            height="111px" /></a>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
