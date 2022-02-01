<%@ Page Title="Colégio Almeida Santos" Language="C#" MasterPageFile="~/Pages/Site.Master" AutoEventWireup="true" CodeBehind="Agenda.aspx.cs" Inherits="SolutSoft.CAS.Pages.Agenda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="Table1" runat="server" width="100%" style="padding-bottom:-20px;">
        <tr>
            <td valign="top" >
                <asp:Label ID="lblTitulo1" runat="server" CssClass="title" Text="AGENDA" Width="100%" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Repeater ID="rptConteudo" runat="server">
                    <ItemTemplate>
                        <div class="tabelanoticias">
                            <asp:Label ID="lblData" runat="server" CssClass="titlelabel" Width="10%" Text='<%# Eval("DsData") %>' ></asp:Label>
                            <asp:LinkButton ID="lkbTitulo" runat="server" CssClass="title9" Width="90%" Text='<%# Eval("DsTitulo") %>' PostBackUrl='<%# Eval("Url") %>'></asp:LinkButton>
                            <hr class="barra1"/>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </td>
        </tr>
    </table>
</asp:Content>
