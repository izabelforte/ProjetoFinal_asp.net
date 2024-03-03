<%@ Page Title="Visitas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Visitas.aspx.cs" Inherits="ProjetoFinal.Visitas" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
         <% Obter_dados(); %>
        </br>
    
        <h2>Inserir Nova Visita</h2>

        </br> 
        <asp:Label ID="lbl_data" runat="server" Text="Data:"></asp:Label>
        <asp:TextBox ID="txt_data" runat="server" type="date"></asp:TextBox>
        <asp:Label ID="lbl_proprietario" runat="server" Text="Proprietário:"></asp:Label>
        <asp:DropDownList ID="DD_proprietario" runat="server">
        </asp:DropDownList>
        <asp:Label ID="lbl_idCasa" runat="server" Text="Imóvel:"></asp:Label>
        <asp:DropDownList ID="DD_idCasa" runat="server">
        </asp:DropDownList>
        </br>
        </br> 
        <asp:Button ID="bt_adicionar" runat="server"  Text="Adicionar" OnClick="bt_adicionar_Click" />
    </main>
</asp:Content>
