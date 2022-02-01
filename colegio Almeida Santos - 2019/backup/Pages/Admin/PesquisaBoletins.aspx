<%@ Page Title="Painel de Controle - CAS" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="PesquisaBoletins.aspx.cs" Inherits="SolutSoft.CAS.Pages.Admin.PesquisaBoletins" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="vertical-align: top;" width="100%">
        <tr>
            <td>
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="titlesimples" Text="Pesquisar Turma"></asp:Label><hr
                    class="barra1" />
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" cellspacing="0">
                    <tr>
                        <td style="width: 20%">
                            <asp:Label ID="lblAL" runat="server" CssClass="title2" Text="Ano letivo: "></asp:Label>
                        </td>
                        <td style="width: 30%">
                            <asp:Label ID="lblA" runat="server" CssClass="title2" Text="Ano: "></asp:Label>
                        </td>
                        <td style="width: 20%">
                            <asp:Label ID="lblT" runat="server" CssClass="title2" Text="Turma: "></asp:Label>
                        </td>
                    </tr>
                    <tr align="left">
                        <td>
                            <asp:DropDownList ID="ddlAnoLetivo" CssClass="textbox1" runat="server" 
                                style="width: 70%; height: 30px" AutoPostBack="true">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlAno" CssClass="textbox1" runat="server" Height="30px" Width="80%"
                                AutoPostBack="true" Enabled="false">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlTurma" CssClass="textbox1" runat="server" Height="30px"
                                Width="70%" AutoPostBack="true" Enabled="false">
                                <asp:ListItem Selected="True" Value="0" Text=" "></asp:ListItem>
                                <asp:ListItem Value="A" Text="A"></asp:ListItem>
                                <asp:ListItem Value="B" Text="B"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="4">
                            <asp:Button ID="btnPesquisar" runat="server" CssClass="button2" Text="Pesquisar"
                                OnClick="btnPesquisar_Click"></asp:Button>
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
        <asp:Panel ID="pnlResultado" runat="server" Visible="false">
            <tr>
                <td>
                    <asp:Label ID="lblResultado" runat="server" CssClass="titlesimples" Text="Resultado da pesquisa" ></asp:Label><hr
                        class="barra1" />
                </td>
            </tr>
        </asp:Panel>
        <asp:Panel ID="pnlResultadosDisc" runat="server" Visible="false">
            <tr>
                <td>
                    <asp:GridView ID="gvConteudoDisc" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="gvConteudoDisc_PageIndexChanging"
                        PageSize="30" Width="100%" CssClass="tableconteudo" OnRowDataBound="gvConteudoDisc_RowDataBound">
                        <Columns>
                            <asp:TemplateField ShowHeader="true" ControlStyle-CssClass="row" HeaderStyle-HorizontalAlign="Left">
                                <HeaderTemplate>
                                    <asp:Label ID="lblNome" runat="server" CssClass="titlegrid" Width="100%" Text="Disciplina"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lkbEditarDisc" runat="server" Width="100%" CommandArgument='<%# Eval("IdDisciplina") %>'
                                        Text='<%# Eval("DsNome") %>' OnClick="lkbEditarDisc_Click" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <asp:Label ID="lblEmpty" runat="server" CssClass="textonoticia" Width="100%" Text="Nenhum registro encontrado."></asp:Label>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </td>
            </tr>
        </asp:Panel>
        <asp:Panel ID="pnlResultadosBim" runat="server" Visible="false">
            <tr>
                <td>
                    <asp:GridView ID="gvConteudoBim" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="gvConteudoBim_PageIndexChanging"
                        PageSize="30" Width="100%" CssClass="tableconteudo" OnRowDataBound="gvConteudoBim_RowDataBound">
                        <Columns>
                            <asp:TemplateField ShowHeader="true" ControlStyle-CssClass="row" HeaderStyle-HorizontalAlign="Left">
                                <HeaderTemplate>
                                    <asp:Label ID="lblBimestre" runat="server" CssClass="titlegrid" Width="100%" Text="Bimestre"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lkbEditarBim" runat="server" Width="100%" CommandArgument='<%# Eval("IdBimestre") %>'
                                        Text='<%# Eval("DsBimestre") %>' OnClick="lkbEditarBim_Click" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <asp:Label ID="lblEmpty" runat="server" CssClass="textonoticia" Width="100%" Text="Nenhum registro encontrado."></asp:Label>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </td>
            </tr>
        </asp:Panel>
        <asp:Panel ID="pnlResultadosTurma" runat="server" Visible="false">
            <tr>
                <td>
                    <asp:GridView ID="gvConteudoTurma" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="gvConteudoTurma_PageIndexChanging"
                        PageSize="30" Width="100%" CssClass="tableconteudo" OnRowDataBound="gvConteudoTurma_RowDataBound">
                        <Columns>
                            <asp:TemplateField ShowHeader="true" ControlStyle-CssClass="row" HeaderStyle-HorizontalAlign="Left">
                                <HeaderTemplate>
                                    <asp:Label ID="lblNome" runat="server" CssClass="titlegrid" Width="100%" Text="Ano"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lkbEditarAno" runat="server" Width="100%" CommandArgument='<%# Eval("FlCiclo") %>'
                                        Text='<%# Eval("DsAno") %>' OnClick="lkbEditarAno_Click" />
                                    </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <asp:Label ID="lblEmpty" runat="server" CssClass="textonoticia" Width="100%" Text="Nenhum registro encontrado."></asp:Label>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </td>
            </tr>
        </asp:Panel>
        
    </table>
</asp:Content>
