<%@ Page Title="Listagem das casas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Listar_Casa.aspx.cs" Inherits="ProjetoFinal.Listar_Casa" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <% Lista_dados(); %>
    </main>
</asp:Content>
