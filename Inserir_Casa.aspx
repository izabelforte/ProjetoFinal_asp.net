<%@ Page Title="Inserir Imóveis" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inserir_Casa.aspx.cs" Inherits="ProjetoFinal.Inserir_Casa" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <asp:Label ID="lbl_zona" runat="server" Text="Zona:"></asp:Label>
        <asp:TextBox ID="txt_zona" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl_tipologia" runat="server" Text="Tipologia:"></asp:Label>
        <asp:TextBox ID="txt_tipologia" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl_ano" runat="server" Text="Ano de construção:"></asp:Label>
        <asp:TextBox ID="txt_ano" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl_preco" runat="server" Text="Valor:"></asp:Label>
        <asp:TextBox ID="txt_preco" runat="server"></asp:TextBox>
        <br />
        <br />
         <asp:Label ID="lbl_proprietario" runat="server" Text="Proprietário:"></asp:Label>
         <asp:DropDownList ID="DD_proprietario" runat="server">
         </asp:DropDownList>
                
        <br />
        <br />
        <asp:Button ID="bt_inserir" runat="server"  Text="Inserir Casa" OnClick="bt_inserir_Click"   />
            </main>
</asp:Content>
