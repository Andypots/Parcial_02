<%@ Page Title="Registración" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registracion.aspx.cs" Inherits="Parcial_02.Registracion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 331px;
    }
    .auto-style3 {
            width: 154px;
        }
    .auto-style4 {
        width: 123px;
    }
    .auto-style5 {
        width: 331px;
        height: 26px;
    }
    .auto-style6 {
        width: 154px;
        height: 26px;
    }
    .auto-style7 {
        width: 123px;
        height: 26px;
    }
    .auto-style8 {
        height: 26px;
    }
        .auto-style9 {
            width: 123px;
            text-align: center;
        }
        .auto-style10 {
            width: 123px;
            margin-left: 320px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1" colspan="2">
            <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Text="Registración"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style6">
            <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
        </td>
        <td class="auto-style10">
            <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td class="auto-style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">El campo es obligatorio</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="Label4" runat="server" Text="Mail"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="Red">El campo es obligatorio</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$">El mail no tiene un formato válido</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style6">
            <asp:Label ID="Label5" runat="server" Text="Edad"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" Width="100px"></asp:TextBox>
&nbsp;
            </td>
        <td class="auto-style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ForeColor="Red">El campo es obligatorio</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="99" MinimumValue="15" Type="Integer">No se pueden registrar menores de 15 años</asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="Label6" runat="server" Text="Contraseña"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" ForeColor="Red">El campo es obligatorio</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="Label7" runat="server" Text="Repetir Contraseña"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator" ForeColor="Red">El campo es obligatorio</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="CompareValidator" ForeColor="Red">Las contraseñas ingresadas no coinciden</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style9">
            <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
