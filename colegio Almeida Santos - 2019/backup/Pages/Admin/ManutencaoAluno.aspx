<%@ Page Title="Painel de Controle - CAS" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master"
    AutoEventWireup="true" CodeBehind="ManutencaoAluno.aspx.cs" Inherits="SolutSoft.CAS.Pages.Admin.ManutencaoAluno" %>

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
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="titlesimples" Text="Cadastro do aluno"></asp:Label><hr
                    class="barra1" />
            </td>
        </tr>
        <tr>
            <td width="100%">
                <table width="100%" cellspacing="0">
                    <tr>
                        <td width="55%">
                            <asp:Label ID="lblNome" runat="server" CssClass="title2" Text="Nome: "></asp:Label>
                        </td>
                        <td width="25%">
                            <asp:Label ID="lblRa" runat="server" CssClass="title2" Text="RA: "></asp:Label>
                        </td>
                        <td width="20%">
                        </td>
                    </tr>
                    <tr align="left">
                        <td>
                            <asp:TextBox ID="txtNome" runat="server" CssClass="textbox1" Width="90%" MaxLength="200"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtRa" runat="server" CssClass="textbox1 ra" Width="80%"></asp:TextBox>
                        </td>
                        <td>
                            <asp:CheckBox ID="chkAtivo" runat="server" CssClass="title2" Text="Matriculado" />
                        </td>
                    </tr>
                </table>
                <table width="100%" cellspacing="0">
                    <tr>
                        <td width="25%">
                            <asp:Label ID="lblSenha" runat="server" CssClass="title2" Text="Senha: "></asp:Label>
                        </td>
                        <td width="25%">
                            <asp:Label ID="lblAno" runat="server" CssClass="title2" Text="Ano: "></asp:Label>
                        </td>
                        <td width="25%">
                            <asp:Label ID="lblTurma" runat="server" CssClass="title2" Text="Turma: "></asp:Label>
                        </td>
                        <td width="20%">
                            <asp:Label ID="lblAnoLetivo" runat="server" CssClass="title2" Text="Ano letivo: "></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtSenha" runat="server" CssClass="textbox1" Width="70%" MaxLength="16"
                                TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlAno" CssClass="textbox1" runat="server" Height="30px" Width="70%"
                                AutoPostBack="true">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlTurma" CssClass="textbox1" runat="server" Height="30px"
                                Width="70%">
                                <asp:ListItem Selected="True" Value="0" Text=" "></asp:ListItem>
                                <asp:ListItem Value="A" Text="A"></asp:ListItem>
                                <asp:ListItem Value="B" Text="B"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlAnoLetivo" CssClass="textbox1" runat="server" Height="30px"
                                Width="70%" AutoPostBack="true">
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btnSalvar" runat="server" CssClass="button2" Text="Salvar" OnClick="btnSalvar_Click">
                </asp:Button>
                <asp:Button ID="btnNovo" runat="server" CssClass="button2" Text="Novo" Visible="true" OnClick="btnNovo_Click">
                </asp:Button>
            </td>
        </tr>
    </table>
</asp:Content>
