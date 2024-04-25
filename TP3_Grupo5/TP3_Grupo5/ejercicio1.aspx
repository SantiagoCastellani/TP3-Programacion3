<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio1.aspx.cs" Inherits="TP3_Grupo5.ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            margin-left: 200px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 254px;
        }
        .auto-style5 {
            width: 217px;
            font-weight: 700;
        }
        .auto-style6 {
            width: 254px;
            height: 23px;
        }
        .auto-style7 {
            width: 217px;
            font-weight: 700;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">
                    <br />
                    Localidades</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Nombre de la localidad:</td>
                <td class="auto-style5">
        <asp:TextBox ID="txtLocalidad" runat="server" Width="247px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad">Debe ingresar una localidad</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
            <asp:Button ID="btnSelectLocalidad" runat="server" OnClick="Button1_Click" Text="Guardar Localidad" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">USUARIOS</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Nombre de usuario:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtNombreUsuario" runat="server" Width="232px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvNombreUsuario" runat="server" ControlToValidate="txtNombreUsuario">Ingresar un nombre de USUARIO</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Contraseña:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtContraseña1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Repetir Contraseña:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtContraseña2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:CompareValidator ID="cv_Contraseña" runat="server" ControlToCompare="txtContraseña1" ControlToValidate="txtContraseña2" Display="Dynamic" ErrorMessage="CompareValidator">Las contraseñas ingresadas deben coincidir.</asp:CompareValidator>
                </td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style4">Correo electronico:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="rev_Correo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[\w\.-]+@[a-zA-Z\d\.-]+\.[a-zA-Z]{2,}$">Ingrese un correo electronico valido.</asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">CP:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_CP" runat="server" MaxLength="4"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Localidades</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="ddlLocalidades" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btn_Usuario" runat="server" OnClick="btn_Usuario_Click" Text="Guardar Usuario" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p class="auto-style2">
            &nbsp;</p>
    </form>
</body>
</html>
