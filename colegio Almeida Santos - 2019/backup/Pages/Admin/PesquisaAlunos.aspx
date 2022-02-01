<%@ Page Title="Painel de Controle - CAS" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master"
    AutoEventWireup="true" CodeBehind="PesquisaAlunos.aspx.cs" Inherits="SolutSoft.CAS.Pages.Admin.PesquisaAlunos" %>

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
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="titlesimples" Text="Pesquisar Alunos"></asp:Label><hr
                    class="barra1" />
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" cellspacing="0">
                    <tr>
                        <td width="75%">
                            <asp:Label ID="lblNome" runat="server" CssClass="title2" Text="Nome: "></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblRa" runat="server" CssClass="title2" Text="RA: "></asp:Label>
                        </td>
                    </tr>
                    <tr align="left">
                        <td>
                            <asp:TextBox ID="txtNome" runat="server" CssClass="textbox1" Width="90%" MaxLength="200"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtRa" runat="server" CssClass="textbox1 ra" Width="90%"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table width="100%" cellspacing="0">
                    <tr>
                        <td width="30%">
                            <asp:Label ID="lblAno" runat="server" CssClass="title2" Text="Ano: "></asp:Label>
                        </td>
                        <td width="20%">
                            <asp:Label ID="lblTurma" runat="server" CssClass="title2" Text="Turma: "></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="30%">
                            <asp:DropDownList ID="ddlAno" CssClass="textbox1" runat="server" Height="30px" Width="70%"
                                AutoPostBack="true">
                            </asp:DropDownList>
                        </td>
                        <td width="20%">
                            <asp:DropDownList ID="ddlTurma" CssClass="textbox1" runat="server" Height="30px"
                                Width="50%">
                                <asp:ListItem Selected="True" Value="0" Text=" "></asp:ListItem>
                                <asp:ListItem Value="A" Text="A"></asp:ListItem>
                                <asp:ListItem Value="B" Text="B"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td width="40%">
                            <asp:RadioButtonList ID="rblAtivo" runat="server" CssClass="title2" Width="100%" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Todos" Selected="True"/>
                                <asp:ListItem Text="Matriculado"/>
                                <asp:ListItem Text="Não matriculado"/>
                            </asp:RadioButtonList>
                            <%--<asp:CheckBox ID="chkAtivo" runat="server" CssClass="title2" Text="Matriculado" />--%>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3">
                            <asp:Button ID="btnPesquisar" runat="server" CssClass="button2" Text="Pesquisar"
                                OnClick="btnPesquisar_Click"></asp:Button>
                            <asp:Button ID="btnNovo" runat="server" CssClass="button2" Text="Novo" OnClick="btnNovo_Click">
                            </asp:Button>
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
        <asp:Panel ID="pnlResultados" runat="server" Visible="false">
            <tr>
                <td>
                    <asp:Label ID="lblResultado" runat="server" CssClass="titlesimples" Text="Resultado da pesquisa"></asp:Label><hr
                        class="barra1" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gvConteudo" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="gvConteudo_PageIndexChanging"
                        PageSize="30" Width="100%" CssClass="tableconteudo" OnRowDataBound="gvConteudo_RowDataBound" PagerStyle-HorizontalAlign="Center" PagerStyle-VerticalAlign="Middle" AllowPaging="True" PagerSettings-Position="TopAndBottom" PagerSettings-PageButtonCount="5" PagerSettings-Mode="NextPreviousFirstLast" PagerStyle-CssClass="numeropagina" HorizontalAlign="NotSet" PagerSettings-PreviousPageImageUrl="~/Pages/Admin/Images/anterior.png" PagerSettings-NextPageImageUrl="~/Pages/Admin/Images/proximo.png" PagerSettings-FirstPageImageUrl="~/Pages/Admin/Images/primeiro.png" PagerSettings-LastPageImageUrl="~/Pages/Admin/Images/ultimo.png" PagerSettings-Visible="True" EnableSortingAndPagingCallbacks="False">
                        <Columns>
                            <asp:TemplateField ShowHeader="true" ControlStyle-CssClass="row" HeaderStyle-HorizontalAlign="Left">
                                <HeaderTemplate>
                                    <asp:Label ID="lblNome" runat="server" CssClass="titlegrid" Width="50%" Text="Nome do aluno"></asp:Label>
                                    <asp:Label ID="lblDescricao" runat="server" CssClass="titlegrid" Width="15%" Text="R.A."></asp:Label>
                                    <asp:Label ID="lblAnoTurma" runat="server" CssClass="titlegrid" Width="23%" Text="Ano/Turma"></asp:Label>
                                    <asp:Label ID="lblOcorrencias" runat="server" CssClass="titlegrid" Width="10%" Text="Ocorrências"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lkbEditar" runat="server" Width="50%" CommandArgument='<%# Eval("IdAluno") %>'
                                        Text='<%# Eval("DsNome") %>' OnClick="lkbEditar_Click" />
                                    <asp:LinkButton ID="LinkButton1" runat="server" Width="15%" CommandArgument='<%# Eval("IdAluno") %>'
                                        Text='<%# Eval("NmRa") %>' OnClick="lkbEditar_Click" />
                                    <asp:LinkButton ID="LinkButton2" runat="server" Width="30%" CommandArgument='<%# Eval("IdAluno") %>'
                                        Text='<%# Eval("DsAno") %>' OnClick="lkbEditar_Click" />
                                    <asp:ImageButton ID="imbOcorrencias" runat="server" ImageAlign="Bottom"  ImageUrl="~/Pages/Admin/Images/Icones/ocorrencia.png" 
                                        CommandArgument='<%# Eval("IdAluno") %>' OnClick="imbOcorrencias_Click" ToolTip="Ocorrências"/>
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
