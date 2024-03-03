<%@ Page Title="Confirme os dados antes de apagar:" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Eliminar_Vi.aspx.cs" Inherits="ProjetoFinal.Eliminar_Vi" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <asp:Label ID="lbl_id" runat="server" Text="ID:"></asp:Label>
        <asp:TextBox ID="txt_id" runat="server" readonly="true"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl_data" runat="server" Text="Data:"></asp:Label>
        <asp:TextBox ID="txt_data" runat="server" readonly="true"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl_idCliente" runat="server" Text="ID Cliente:"></asp:Label>
        <asp:TextBox ID="txt_idCliente" runat="server" readonly="true"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl_idCasa" runat="server" Text="ID Casa:"></asp:Label>
        <asp:TextBox ID="txt_idCasa" runat="server" readonly="true"></asp:TextBox>
        <br />
        <br />
        <h3>Para eliminar a visita, aperte no botão abaixo</h3>
        <asp:Button ID="bt_eliminar" runat="server"  Text="Eliminar" OnClick="bt_eliminar_Click" />
    </main>
</asp:Content>
