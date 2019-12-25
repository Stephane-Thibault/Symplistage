<%@ Page Title="" Language="C#" MasterPageFile="~/InterfaceEtudiant.Master" AutoEventWireup="true" CodeBehind="AjouterModifierStagiaireSuperviseur.aspx.cs" Inherits="TP2.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h2>Ajouter / modifier les stagiaires ou les superviseurs</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td><asp:Label ID="lblNom" runat="server" Text="Nom :"></asp:Label></td>
            <td><asp:TextBox ID="txtNom" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblTelephone" runat="server" Text="Téléphone :"></asp:Label></td>
            <td><asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblCourriel" runat="server" Text="Courriel :"></asp:Label></td>
            <td><asp:TextBox ID="txtCourriel" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="btnQuitter" runat="server" Text="Quitter" /></td>
        </tr>
    </table>
</asp:Content>
