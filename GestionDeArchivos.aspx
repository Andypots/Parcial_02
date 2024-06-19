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
        <asp:Label ID="Label2" runat="server" Text="Usuario:"></asp:Label>
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
        <asp:Label ID="Label7" runat="server"></asp:Label>
    </p>
    <p class="auto-style3">
        <asp:Label ID="Label5" runat="server" Text="Archivos guardados:"></asp:Label>
    </p>
    <p class="auto-style3">
        <asp:GridView ID="gvFiles" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="archivo" HeaderText="archivo" SortExpression="archivo" />
                <asp:ButtonField CommandName="Select" HeaderText="Descargar" ImageUrl="Server.MapPath(&quot;.&quot;) + &quot;/&quot; + Label3.Text" ShowHeader="True" Text="Descargar" />

            </Columns>
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:administracionConnectionString %>" InsertCommand="INSERT INTO imagenes(usuario,archivo) VALUES (@usuario, @archivo)" SelectCommand="SELECT archivo FROM imagenes where usuario = @usuario">
            <InsertParameters>
                <asp:Parameter Name="usuario" />
                <asp:Parameter Name="archivo" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Label3" Name="usuario" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>

</asp:Content>

