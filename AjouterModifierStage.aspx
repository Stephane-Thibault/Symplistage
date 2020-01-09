<%@ Page Title="" Language="C#" MasterPageFile="~/InterfaceEtudiant.Master" AutoEventWireup="true" CodeBehind="AjouterModifierStage.aspx.cs" Inherits="TP2.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h2>Ajouter / modifier les stages</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td><asp:Label ID="lblTitre" runat="server" Text="Titre :"></asp:Label></td>
            <td><asp:TextBox ID="txtTitre" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="rfvTitre" runat="server" ErrorMessage="Veuillez entrer un titre"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblDateDebut" runat="server" Text="Date de début :"></asp:Label></td>
            <td><asp:TextBox ID="txtDateDebut" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="rfvtxtDateDebut" runat="server" ErrorMessage="Veuillez entrer une date de début de stage."></asp:RequiredFieldValidator></td>
            <td></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblDateFin" runat="server" Text="Date de fin :"></asp:Label></td>
            <td><asp:TextBox ID="txtDateFin" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="rfvDateFin" runat="server" ErrorMessage="Veuillez entrer une date de fin de stage."></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblCommentaire" runat="server" Text="Commentaire :"></asp:Label></td>
            <td><asp:TextBox ID="txtCommentaire" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="btnQuitter" runat="server" Text="Retour" OnClick="btnQuitter_Click" /></td>
        </tr>
    </table>
</asp:Content>
