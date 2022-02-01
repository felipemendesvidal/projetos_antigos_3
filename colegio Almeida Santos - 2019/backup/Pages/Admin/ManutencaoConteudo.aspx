<%@ Page Title="Painel de Controle - CAS" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master"
    AutoEventWireup="true" CodeBehind="ManutencaoConteudo.aspx.cs" Inherits="SolutSoft.CAS.Pages.Admin.MenutencaoConteudo" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="vertical-align: top;" width="100%">
        <tr>
            <td>
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="titlesimples" Text="Conteúdo do Menu"></asp:Label><hr
                    class="barra1" />
            </td>
        </tr>
        <tr>
            <td width="100%">
                <asp:Panel ID="pnlInfo" runat="server" >
                    <table width="100%" cellspacing="0">
                        <tr>
                            <td width="60%">
                                <asp:Label ID="lblTitulo" runat="server" CssClass="title2" Text="Título: "></asp:Label>
                            </td>
                            <td width="40%">
                                <asp:Label ID="lblMenu" runat="server" CssClass="title2" Text="Menu: "></asp:Label>
                            </td>
                        </tr>
                        <tr align="left">
                            <td>
                                <asp:TextBox ID="txtTitulo" runat="server" CssClass="textbox1" Width="90%" MaxLength="200"></asp:TextBox>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlMenus" CssClass="textbox1" runat="server" Height="30px"
                                    Width="100%">
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <asp:Panel ID="pnlConteudo" runat="server" Visible="true">
            <tr>
                <td>
                    <br />
                    <CKEditor:CKEditorControl ID="CKEditor1" runat="server" ToolbarCanCollapse="False"
                        ResizeDir="Vertical" Skin="kama" FilebrowserBrowseUrl="/about.aspx" FilebrowserImageBrowseUrl="/browser/browse.php?type=Images"
                        FilebrowserImageUploadUrl="/uploader/upload.php?type=Images" FilebrowserUploadUrl="/uploader/upload.php">
                    </CKEditor:CKEditorControl>
                </td>
            </tr>
        </asp:Panel>
        <tr>
            <td align="center">
                <asp:Button ID="btnSalvar" runat="server" CssClass="button2" Text="Salvar" OnClick="btnSalvar_Click">
                </asp:Button>
            </td>
        </tr>
    </table>
</asp:Content>
