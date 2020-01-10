<%@ Page Title="" Language="C#" MasterPageFile="~/InterfaceEtudiant.Master" AutoEventWireup="true" CodeBehind="AjouterModifierStagiaireSuperviseur.aspx.cs" Inherits="TP2.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h2>Ajouter / modifier les stagiaires ou les superviseurs</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <asp:Label ID="lblTitre" runat="server" Text=""></asp:Label>
        <tr>
            <td style="width: 151px"><asp:Label ID="lblNom" runat="server" Text="Prénom et nom :"></asp:Label>&nbsp;</td>
            <td style="width: 187px"><asp:Label ID="lblExampleNomPrenom" runat="server" Text="Ex: Jean Perron" ForeColor="#AAAAAA"></asp:Label></td>
            <td><asp:TextBox ID="txtNom" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ControlToValidate="txtNom" ID="rfvNom" runat="server" ErrorMessage="Vous devez entrer un nom dans ce champ."></asp:RequiredFieldValidator></td>
            <td><asp:RegularExpressionValidator ControlToValidate="txtNom" ID="regexNom" runat="server" ErrorMessage="Le nom doit commencer par une majuscule et ne contenir que des lettres minuscules par la suite." ValidationExpression="[A-Z]{1}[-a-zéàèêëîï]+\s*[A-Z]?[a-z]*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 151px"><asp:Label ID="lblTelephone" runat="server" Text="Téléphone :"></asp:Label></td>
            <td style="width: 187px"><asp:Label ID="lblExampleTelephone" runat="server" Text="Ex: 123-456-7890" ForeColor="#AAAAAA"></asp:Label></td>
            <td><asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ControlToValidate="txtTelephone" ID="rfvTelephone" runat="server" ErrorMessage="Vous devez entrer un numéro de téléphone dans ce champ."></asp:RequiredFieldValidator></td>
            <td><asp:RegularExpressionValidator ControlToValidate="txtTelephone" ID="revTelephone" runat="server" ErrorMessage="Le numéro de téléphone doit suivre la formule suivante ex : 418-333-4444." ValidationExpression="\d{3}-\d{3}-\d{4}"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 151px"><asp:Label ID="lblCourriel" runat="server" Text="Courriel :"></asp:Label></td>
            <td style="width: 187px"><asp:Label ID="lblExampleCourriel" runat="server" Text="jp@cegep.com" ForeColor="#AAAAAA"></asp:Label></td>
            <td><asp:TextBox ID="txtCourriel" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ControlToValidate="txtCourriel" ID="rfvCourriel" runat="server" ErrorMessage="Vous devez entrer une address e-mail dans ce champ."></asp:RequiredFieldValidator></td>
            <td><asp:RegularExpressionValidator ControlToValidate="txtCourriel" ID="revCourriel" runat="server" ErrorMessage="L'address e-mail doit suivre la formule suivante ex : xxxxxxxxx@xxxxxx." ValidationExpression=".+\@.+\..+"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 151px"></td>
            <td style="width: 187px">&nbsp;</td>
            <td><asp:Button ID="btnQuitter" runat="server" Text="Quitter" OnClick="btnQuitter_Click" /></td>
        </tr>
    </table>
</asp:Content>
