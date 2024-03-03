<%@ Page Title="Lista dos Clientes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gerir_Cliente.aspx.cs" Inherits="ProjetoFinal.Gerir_Cliente" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
         <% Obter_dados(); %>
        </br>
    
        <h2>Inserir Novo Cliente</h2>

        </br> 
        <asp:Label ID="lbl_nome" runat="server" Text="Nome:"></asp:Label>
        <asp:TextBox ID="txt_nome" runat="server"></asp:TextBox>
        <asp:Label ID="lbl_morada" runat="server" Text="Morada:"></asp:Label>
        <asp:TextBox ID="txt_morada" runat="server"></asp:TextBox>
        <asp:Label ID="lbl_telefone" runat="server" Text="Contacto:"></asp:Label>
        <asp:TextBox ID="txt_telefone" runat="server"></asp:TextBox>
        </br>
        </br> 
        <asp:Button ID="bt_adicionar" runat="server"  Text="Adicionar" OnClick="bt_adicionar_Click"/>
    </main>
</asp:Content>
