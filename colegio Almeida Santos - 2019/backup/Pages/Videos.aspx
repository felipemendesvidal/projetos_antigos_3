<%@ Page Title="Colégio Almeida Santos" Language="C#" MasterPageFile="~/Pages/Site.Master" AutoEventWireup="true" CodeBehind="Videos.aspx.cs" Inherits="SolutSoft.CAS.Pages.Videos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/style1.css" type="text/css" rel="stylesheet" />
	<link href="../Styles/style2.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="../Scripts/jscript.js"></script>
	<script type="text/javascript">
		window.onload = function () {

		    window.controller = new YTV('frame', {
		        user: 'UCj_jLyaPHbhHp_NGne3hbYQ',
		        accent: '#FFF7D5',
		        browsePlaylists: true,
		        controls: true,
		        autoplay: false
		    });

		};
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="Table1" runat="server" width="100%" >
        <tr>
            <td valign="top" >
                <asp:Label ID="lblTitulo" runat="server" CssClass="title" Text="VÍDEOS" Width="100%"></asp:Label>
            </td>
        </tr>
    </table>
    <table >
        <tr>
            <td>
                <div id="frame"></div>
            </td>
        </tr>
    </table>
</asp:Content>
