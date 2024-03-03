<%@ Page Title="Editar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Editar_Cli.aspx.cs" Inherits="ProjetoFinal.Editar_Cli" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
    <asp:Label ID="lbl_id" runat="server" Text="ID:"></asp:Label>
    <asp:TextBox ID="txt_id" runat="server" readonly="true"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lbl_nome" runat="server" Text="Nome:"></asp:Label>
    <asp:TextBox ID="txt_nome" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lbl_morada" runat="server" Text="Morada:"></asp:Label>
    <asp:TextBox ID="txt_morada" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lbl_telefone" runat="server" Text="Contacto:"></asp:Label>
    <asp:TextBox ID="txt_telefone" runat="server"></asp:TextBox>
    <br />
    <br />
       
    <asp:Button ID="bt_editar" runat="server"  Text="Editar Cliente" OnClick="bt_editar_Click" />
     
    </main>
</asp:Content>
