<%@ Page Title="Confirme os dados antes de apagar:" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Eliminar_Cli.aspx.cs" Inherits="ProjetoFinal.Eliminar_Cli" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <asp:Label ID="lbl_id" runat="server" Text="ID:"></asp:Label>
        <asp:TextBox ID="txt_id" runat="server" readonly="true"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl_nome" runat="server" Text="Nome:"></asp:Label>
        <asp:TextBox ID="txt_nome" runat="server" readonly="true"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl_morada" runat="server" Text="Morada:"></asp:Label>
        <asp:TextBox ID="txt_morada" runat="server" readonly="true"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl_telefone" runat="server" Text="Contacto:"></asp:Label>
        <asp:TextBox ID="txt_telefone" runat="server" readonly="true"></asp:TextBox>
        <br />
        <br />
        <h3>Para eliminar o(a) Cliente, aperte no botão abaixo</h3>
        <asp:Button ID="bt_eliminar" runat="server"  Text="Eliminar Cliente" OnClick="bt_eliminar_Click" />
    </main>
</asp:Content>
