<%@ Page Title="Confirme os dados antes de apagar:" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Eliminar_Int.aspx.cs" Inherits="ProjetoFinal.Eliminar_Int" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <asp:Label ID="lbl_id" runat="server" Text="ID:"></asp:Label>
        <asp:TextBox ID="txt_id" runat="server" readonly="true"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl_zona" runat="server" Text="Zona:"></asp:Label>
        <asp:TextBox ID="txt_zona" runat="server" readonly="true"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl_assoalhadas" runat="server" Text="Tipologia:"></asp:Label>
        <asp:TextBox ID="txt_assoalhadas" runat="server" readonly="true"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl_idCliente" runat="server" Text="ID Cliente:"></asp:Label>
        <asp:TextBox ID="txt_idCliente" runat="server" readonly="true"></asp:TextBox>
        <br />
        <br />
        
        <h3>Para eliminar o interesse, aperte no botão abaixo</h3>
        <asp:Button ID="bt_eliminar" runat="server"  Text="Eliminar" OnClick="bt_eliminar_Click" />
    </main>
</asp:Content>
