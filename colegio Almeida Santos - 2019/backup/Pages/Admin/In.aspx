<%@ Page Language="C#" Title="Painel de Controle - CAS" AutoEventWireup="true" CodeBehind="In.aspx.cs" Inherits="SolutSoft.CAS.Pages.Admin.In" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center;vertical-align:bottom;">
        <table align="center" style="width: 280px;height:600px;">
            <tr>
                <td>
                    <table cellpadding="0" cellspacing="0" width="100%" >
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Label ID="lblLogin" runat="server" Text="LOGIN" CssClass="titlesimples" Width="150px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left" valign="bottom">
                                <asp:Label ID="lblUsuario" runat="server" Text="Usuário:" Width="150px" CssClass="title2" />
                                <asp:TextBox ID="txtUsuario" runat="server" CssClass="textbox1" MaxLength="20" Width="280px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left" >
                                <asp:Label ID="lblSenha" runat="server" Text="Senha:" Width="150px" CssClass="title2" />
                                <asp:TextBox ID="txtSenha" runat="server" CssClass="textbox1" MaxLength="20" Width="280px" TextMode="Password" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center" style="padding-top:20px;">
                                <asp:Button ID="btnEntrar" CssClass="button2" runat="server" Text="Entrar" OnClick="btnEntrar_Click" ></asp:Button>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblErro" runat="server" ForeColor="Red" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
