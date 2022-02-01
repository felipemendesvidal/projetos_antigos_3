<%@ Page Title="Painel de Controle - CAS" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" 
    AutoEventWireup="true" CodeBehind="ManutencaoOcorrencia.aspx.cs" Inherits="SolutSoft.CAS.Pages.Admin.ManutencaoOcorrencia" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script language="javascript" type="text/javascript" src="../../Scripts/jquery.mask.js"></script>
    <script type="text/javascript">
        $(function () {
            $('.dt').mask('00/00/0000');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="vertical-align: top;" width="100%">
        <tr>
            <td>
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="titlesimples" Text="Ocorrência"></asp:Label><hr
                    class="barra1" />
            </td>
        </tr>
        <tr>
            <td width="100%">
                <table width="100%" cellspacing="0">
                    <tr>
                        <td width="55%">
                            <asp:Label ID="lblTitulo" runat="server" CssClass="title2" Text="Título: "></asp:Label>
                        </td>
                        <td width="20%">
                            <asp:Label ID="lblData" runat="server" CssClass="title2" Text="Data: "></asp:Label>
                        </td>
                    </tr>
                    <tr align="left">
                        <td>
                            <asp:TextBox ID="txtTitulo" runat="server" CssClass="textbox1" Width="90%" MaxLength="60"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtData" runat="server" CssClass="textbox1 dt" Width="100%"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:RadioButtonList ID="rblPublico" runat="server" CssClass="title2" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Público" Value="true" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Restrito" Value="false"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                </table>
                <asp:Panel ID="pnlConteudo" runat="server" Visible="true">
                    <table width="100%" cellspacing="0">
                        <tr>
                            <td width="100%">
                                <asp:Label ID="lblDetalhes" runat="server" CssClass="title2" Text="Detalhes: "></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                                <CKEditor:CKEditorControl ID="CKEditor1" runat="server" ToolbarCanCollapse="False"
                                    ResizeDir="Vertical" Skin="kama" FilebrowserBrowseUrl="/about.aspx" FilebrowserImageBrowseUrl="/browser/browse.php?type=Images"
                                    FilebrowserImageUploadUrl="/uploader/upload.php?type=Images" FilebrowserUploadUrl="/uploader/upload.php">
                                </CKEditor:CKEditorControl>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btnSalvar" runat="server" CssClass="button2" Text="Salvar" OnClick="btnSalvar_Click">
                </asp:Button>
            </td>
        </tr>
    </table>
</asp:Content>
