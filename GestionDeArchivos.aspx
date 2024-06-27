<%@ Page Title="Gestión de Archivos" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GestionDeArchivos.aspx.cs" Inherits="Parcial_02.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style2">
        <asp:Label ID="Label2" runat="server" Text="Nombre Completo: "></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="----------"></asp:Label>
        <br />
    </p>
    <p class="auto-style3">
        <asp:Label ID="Label4" runat="server" Text="Cargar Archivos: "></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </p>
    <p class="auto-style3">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Guardar" />
&nbsp;
        <asp:Label ID="Label6" runat="server"></asp:Label>
    </p>
    <p class="auto-style3">
        &nbsp;</p>
        <asp:Label ID="Label5" runat="server" Text="Archivos guardados:"></asp:Label>
    <p class="auto-style3">
        <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Descargar" HeaderText="Descargar" ShowHeader="True" Text="Descargar" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
    </p>
    <p class="auto-style3">
        &nbsp;</p>
    <p class="auto-style3">
        &nbsp;</p>

</asp:Content>

