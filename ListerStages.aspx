<%@ Page Title="" Language="C#" MasterPageFile="~/InterfaceEtudiant.Master" AutoEventWireup="true" CodeBehind="ListerStages.aspx.cs" Inherits="TP2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h2>Lister les stages d'un stagiaire</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:LinqDataSource ID="LinqDataSource1" runat="server">
    </asp:LinqDataSource>
    <asp:ListView ID="ListView1" runat="server">
    </asp:ListView>
    <table>
        <tr>
            <td><asp:Button ID="btnModifier" runat="server" Text="Modifier" /></td>
            <td><asp:Button ID="btnAjouter" runat="server" Text="Ajouter" /></td>
            <td></td>
            <td><asp:Button ID="btnQuitter" runat="server" Text="Quitter" /></td>
        </tr>
    </table>
</asp:Content>
