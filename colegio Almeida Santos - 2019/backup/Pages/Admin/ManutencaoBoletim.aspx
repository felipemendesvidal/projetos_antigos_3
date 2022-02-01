<%@ Page Title="Painel de Controle - CAS" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master"
    AutoEventWireup="true" CodeBehind="ManutencaoBoletim.aspx.cs" Inherits="SolutSoft.CAS.Pages.Admin.ManutencaoBoletim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script language="javascript" type="text/javascript" src="../../Scripts/jquery.mask.js"></script>
    <script type="text/javascript">
        $(function () {
            $('.nota').mask('00,0', { reverse: true });
        });

        function myFunction(x) {
            x.style.background = "yellow";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="vertical-align: top;" width="100%">
        <tr>
            <td>
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="titlesimples" Text="Cadastro de notas do boletim"></asp:Label><hr
                    class="barra1" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lblInfo" runat="server" CssClass="title6"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 100%;">
                <asp:GridView ID="gvConteudo" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="gvConteudo_PageIndexChanging"
                    PageSize="30" Width="100%" CssClass="tableconteudo" OnRowDataBound="gvConteudo_RowDataBound">
                    <Columns>
                        <asp:TemplateField ShowHeader="true" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                            <HeaderTemplate>
                                <asp:Label ID="lblNome" runat="server" CssClass="titlegrid" Width="75%" Text="Nome do aluno"></asp:Label>
                                <asp:Label ID="lblDescricao" runat="server" CssClass="titlegrid" Width="7%" Text="Nota"></asp:Label>
                                <asp:Label ID="lblAnoTurma" runat="server" CssClass="titlegrid" Width="5%" Text="Faltas"></asp:Label>
                                <asp:Label ID="lblSituacao" runat="server" CssClass="titlegrid" Width="7%" Text=""></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblIdBoletim" runat="server" CssClass="textonoticia" Visible="false"
                                    Text='<%# Eval("IdBoletim") %>' ToolTip='<%# Eval("IdAluno") %>'></asp:Label>
                                <asp:Label ID="lblNomeAluno" runat="server" CssClass="textonoticia" Width="75%" Text='<%# Eval("DsAluno") %>'></asp:Label>
                                <asp:TextBox ID="txtNota" runat="server" Width="4%" CssClass="textbox1 nota" Text='<%# Eval("DsNota") %>'></asp:TextBox>&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtFalta" runat="server" Width="4%" CssClass="textbox1" MaxLength="3"
                                    Text='<%# Eval("DsFalta") %>'></asp:TextBox>
                                <asp:CheckBox ID="chkAprovado" runat="server" CssClass="textonoticia" Width="10%" Text="Aprovado" Checked='<%# Eval("FlAprovado") %>' Visible="false"></asp:CheckBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        Nenhum registro encontrado.
                    </EmptyDataTemplate>
                </asp:GridView>
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
