<%@ Page Title="Interesses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Interesses.aspx.cs" Inherits="ProjetoFinal.Interesses" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
         <% Obter_dados(); %>
        </br>
    
        <h2>Inserir Novo Interesse</h2>

        </br> 
        <asp:Label ID="lbl_zona" runat="server" Text="Zona:"></asp:Label>
        <asp:TextBox ID="txt_zona" runat="server"></asp:TextBox>
        <asp:Label ID="lbl_assoalhadas" runat="server" Text="Tipologia:"></asp:Label>
        <asp:TextBox ID="txt_assoalhadas" runat="server"></asp:TextBox>
        <asp:Label ID="lbl_proprietario" runat="server" Text="Cliente:"></asp:Label>
        <asp:DropDownList ID="DD_proprietario" runat="server">
        </asp:DropDownList>
        </br>
        </br> 
        <asp:Button ID="bt_adicionar" runat="server"  Text="Adicionar" OnClick="bt_adicionar_Click" />
    </main>
</asp:Content>
