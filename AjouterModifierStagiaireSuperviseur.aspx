<%@ Page Title="" Language="C#" MasterPageFile="~/InterfaceEtudiant.Master" AutoEventWireup="true" CodeBehind="AjouterModifierStagiaireSuperviseur.aspx.cs" Inherits="TP2.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h2>Ajouter / modifier les stagiaires ou les superviseurs</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td><asp:Label ID="lblNom" runat="server" Text="Nom :"></asp:Label></td>
            <td><asp:TextBox ID="txtNom" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ControlToValidate="txtNom" ID="rfvNom" runat="server" ErrorMessage="Vous devez entrer un nom dans ce champ."></asp:RequiredFieldValidator></td>
            <td><asp:RegularExpressionValidator ControlToValidate="txtNom" ID="regexNom" runat="server" ErrorMessage="Le nom doit commencer par une majuscule et ne contenir que des lettres minuscules par la suite." ValidationExpression="[A-Z]{1}[-a-zéàèêëîï]+\s*[A-Z]?[a-z]*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblTelephone" runat="server" Text="Téléphone :"></asp:Label></td>
            <td><asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ControlToValidate="txtTelephone" ID="rfvTelephone" runat="server" ErrorMessage="Vous devez entrer un numéro de téléphone dans ce champ."></asp:RequiredFieldValidator></td>
            <td><asp:RegularExpressionValidator ControlToValidate="txtTelephone" ID="revTelephone" runat="server" ErrorMessage="Le numéro de téléphone doit suivre la formule suivante ex : 418-333-4444." ValidationExpression="\d{3}-\d{3}-\d{4}"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblCourriel" runat="server" Text="Courriel :"></asp:Label></td>
            <td><asp:TextBox ID="txtCourriel" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ControlToValidate="txtCourriel" ID="rfvCourriel" runat="server" ErrorMessage="Vous devez entrer une address e-mail dans ce champ."></asp:RequiredFieldValidator></td>
            <td><asp:RegularExpressionValidator ControlToValidate="txtCourriel" ID="revCourriel" runat="server" ErrorMessage="L'address e-mail doit suivre la formule suivante ex : xxxxxxxxx@xxxxxx." ValidationExpression=".+\@.+\..+"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="btnQuitter" runat="server" Text="Quitter" /></td>
        </tr>
    </table>
</asp:Content>
