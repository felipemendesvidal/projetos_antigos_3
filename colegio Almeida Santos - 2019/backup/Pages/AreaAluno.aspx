<%@ Page Title="Colégio Almeida Santos" Language="C#" MasterPageFile="~/Pages/Site.Master"
    AutoEventWireup="true" CodeBehind="AreaAluno.aspx.cs" Inherits="SolutSoft.CAS.Pages.AreaAluno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="Table1" runat="server" width="100%" cellspacing="0">
        <tr>
            <td valign="top">
                <asp:Label ID="lblTitulo" runat="server" CssClass="title" Text="ÁREA DO ALUNO" Width="100%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td valign="middle">
                <br />
                &nbsp;
                <asp:LinkButton ID="lkbInicio" runat="server" Text="Início" CssClass="btn1" OnClick="lkbInicio_Click"
                    Width="18%"></asp:LinkButton>
                <asp:LinkButton ID="lkbBoletim" runat="server" Text="Boletim" CssClass="btn2" OnClick="lkbBoletim_Click"
                    Width="18%"></asp:LinkButton>
                <asp:LinkButton ID="lkbAgenda" runat="server" Text="Agenda" CssClass="btn3" OnClick="lkbAgenda_Click"
                    Width="18%"></asp:LinkButton>
                <asp:LinkButton ID="lkbDocumentos" runat="server" Text="Documentos" CssClass="btn4" OnClick="lkbDocumentos_Click"
                    Width="18%"></asp:LinkButton>
                <asp:LinkButton ID="lkbOcorrencias" runat="server" Text="Ocorrências" CssClass="btn5" OnClick="lkbOcorrencias_Click"
                    Width="18%"></asp:LinkButton>
                <asp:Panel ID="pnlInicio" runat="server" Visible="true" BorderColor="#A9F5A9" BorderStyle="Solid"
                    BorderWidth="5px">
                    <table style="margin: 0px 5px 20px 5px;">
                        <tr>
                            <td>
                                <asp:Label ID="lblTexto" runat="server" CssClass="textonoticia">Início</asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="pnlBoletim" runat="server" Visible="false" BorderColor="#A9D0F5" BorderStyle="Solid"
                    BorderWidth="5px">
                    <table width="100%" cellpadding="0" cellspacing="0" style="padding: 20px 10px 10px 10px;">
                        <tr>
                            <td colspan="11" align="center">
                                <asp:Label ID="Label1" runat="server" CssClass="title5" Text="Boletim do ano de "></asp:Label>
                                <asp:Label ID="lblAnoLetivo" runat="server" CssClass="title5"></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text=" - " CssClass="title5"></asp:Label>
                                <asp:Label ID="lblAno" runat="server" CssClass="title8"></asp:Label>
                                <asp:Label ID="Label3" runat="server" Text=" do Ensino " CssClass="title5"></asp:Label>
                                <asp:Label ID="lblCiclo" runat="server" CssClass="title5"></asp:Label>
                                <asp:Label ID="Label4" runat="server" Text=" - " CssClass="title5"></asp:Label>
                                <asp:Label ID="lblTurma" runat="server" CssClass="title8"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="11" align="center">
                                <asp:Label ID="Label5" runat="server" Text="Aluno: " CssClass="title5"></asp:Label>
                                <asp:Label ID="lblNome" runat="server" CssClass="title6"></asp:Label>&nbsp;&nbsp;
                                <asp:Label ID="Label12" runat="server" Text="RA: " CssClass="title5"></asp:Label>
                                <asp:Label ID="lblRa" runat="server" CssClass="title6"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr align="center">
                            <td style="border-bottom: 1px solid #BDBDBD;">&nbsp;
                            </td>
                            <td colspan="2" class="bim1">
                                <asp:Label ID="Label6" runat="server" CssClass="title4" Text="1º Bim."></asp:Label>
                            </td>
                            <td colspan="2" class="bim2">
                                <asp:Label ID="Label7" runat="server" CssClass="title4" Text="2º Bim."></asp:Label>
                            </td>
                            <td colspan="2" class="bim3">
                                <asp:Label ID="Label8" runat="server" CssClass="title4" Text="3º Bim."></asp:Label>
                            </td>
                            <td colspan="2" class="bim4">
                                <asp:Label ID="Label9" runat="server" CssClass="title4" Text="4º Bim."></asp:Label>
                            </td>
                            <td colspan="2" class="bimfinal">
                                <asp:Label ID="Label35" runat="server" CssClass="title4" Text="Final"></asp:Label>
                            </td>
                        </tr>
                        <tr align="center">
                            <td class="disc">
                                <asp:Label ID="Label10" runat="server" CssClass="title3" Text="Disciplina"></asp:Label>
                            </td>
                            <td class="bim1">
                                <asp:Label ID="Label11" runat="server" CssClass="title3" Text="N"></asp:Label>
                            </td>
                            <td class="bim1">
                                <asp:Label ID="Label13" runat="server" CssClass="title3" Text="F"></asp:Label>
                            </td>
                            <td class="bim2">
                                <asp:Label ID="Label14" runat="server" CssClass="title3" Text="N"></asp:Label>
                            </td>
                            <td class="bim2">
                                <asp:Label ID="Label15" runat="server" CssClass="title3" Text="F"></asp:Label>
                            </td>
                            <td class="bim3">
                                <asp:Label ID="Label16" runat="server" CssClass="title3" Text="N"></asp:Label>
                            </td>
                            <td class="bim3">
                                <asp:Label ID="Label17" runat="server" CssClass="title3" Text="F"></asp:Label>
                            </td>
                            <td class="bim4">
                                <asp:Label ID="Label18" runat="server" CssClass="title3" Text="N"></asp:Label>
                            </td>
                            <td class="bim4">
                                <asp:Label ID="Label19" runat="server" CssClass="title3" Text="F"></asp:Label>
                            </td>
                            <td class="bimfinal">
                                <asp:Label ID="Label20" runat="server" CssClass="title3" Text="N"></asp:Label>
                            </td>
                            <td class="bimfinal">
                                <asp:Label ID="Label21" runat="server" CssClass="title3" Text="F"></asp:Label>
                            </td>
                        </tr>
                        <asp:Repeater ID="rptConteudoBoletim" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td class="disc">
                                        <asp:Label ID="Label22" runat="server" CssClass="title3" Text='<%# Eval("DsDisciplina") %>'></asp:Label>
                                    </td>
                                    <td class="bim1">
                                        <asp:Label ID="Label23" runat="server" CssClass="title4" Text='<%# Eval("DsNota1") %>'></asp:Label>
                                    </td>
                                    <td class="bim1">
                                        <asp:Label ID="Label24" runat="server" CssClass="title4" Text='<%# Eval("DsFalta1") %>'></asp:Label>
                                    </td>
                                    <td class="bim2">
                                        <asp:Label ID="Label25" runat="server" CssClass="title4" Text='<%# Eval("DsNota2") %>'></asp:Label>
                                    </td>
                                    <td class="bim2">
                                        <asp:Label ID="Label26" runat="server" CssClass="title4" Text='<%# Eval("DsFalta2") %>'></asp:Label>
                                    </td>
                                    <td class="bim3">
                                        <asp:Label ID="Label27" runat="server" CssClass="title4" Text='<%# Eval("DsNota3") %>'></asp:Label>
                                    </td>
                                    <td class="bim3">
                                        <asp:Label ID="Label28" runat="server" CssClass="title4" Text='<%# Eval("DsFalta3") %>'></asp:Label>
                                    </td>
                                    <td class="bim4">
                                        <asp:Label ID="Label29" runat="server" CssClass="title4" Text='<%# Eval("DsNota4") %>'></asp:Label>
                                    </td>
                                    <td class="bim4">
                                        <asp:Label ID="Label30" runat="server" CssClass="title4" Text='<%# Eval("DsFalta4") %>'></asp:Label>
                                    </td>
                                    <td class="bimfinal">
                                        <asp:Label ID="Label32" runat="server" CssClass="title4" Text='<%# Eval("DsNotaFinal") %>'></asp:Label>
                                    </td>
                                    <td class="bimfinal">
                                        <asp:Label ID="Label31" runat="server" CssClass="title4" Text='<%# Eval("DsFaltaFinal") %>'></asp:Label>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </asp:Panel>
                <asp:Panel ID="pnlAgenda" runat="server" Visible="false" BorderColor="#F7BE81" BorderStyle="Solid"
                    BorderWidth="5px">
                    <table width="100%" cellpadding="0" cellspacing="0" style="padding: 20px 10px 10px 10px;">
                        <tr>
                            <td>
                                <asp:Repeater ID="rptConteudoAgenda" runat="server">
                                    <ItemTemplate>

                                        <asp:Image ID="imgCalendario" runat="server" ImageUrl="~/Pages/Admin/Images/Icones/Calendario.png"
                                            Width="23px" ImageAlign="Top"></asp:Image>
                                        <asp:LinkButton ID="lkbTituloAgenda" runat="server" CssClass="title9" Width="90%"
                                            Text='<%# Eval("DsTitulo") %>' PostBackUrl='<%# Eval("Url") %>'></asp:LinkButton>

                                    </ItemTemplate>
                                    <SeparatorTemplate>
                                        <hr class="barra1" />
                                    </SeparatorTemplate>
                                </asp:Repeater>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="pnlDocumentos" runat="server" Visible="false" BorderColor="#F78181"
                    BorderStyle="Solid" BorderWidth="5px">
                    <table style="margin: 0px 5px 20px 5px;">
                        <tr>
                            <td>
                                <asp:Label ID="lblDocumentos" runat="server" CssClass="textonoticia"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="pnlOcorrencias" runat="server" Visible="false" BorderColor="#F3F781" BorderStyle="Solid"
                    BorderWidth="5px">
                    <table width="100%" cellpadding="0" cellspacing="0" style="padding: 20px 10px 10px 10px;">
                        <tr>
                            <td>
                                <asp:Repeater ID="rptConteudoOcorrencias" runat="server">
                                    <ItemTemplate>

                                        <asp:LinkButton ID="lkbTituloOcorrencia" runat="server" CssClass="title9" Width="90%"
                                            Text='<%# Eval("DsTitulo") %>' PostBackUrl='<%# Eval("Url") %>'></asp:LinkButton>

                                    </ItemTemplate>
                                    <SeparatorTemplate>
                                        <hr class="barra1" />
                                    </SeparatorTemplate>
                                </asp:Repeater>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
