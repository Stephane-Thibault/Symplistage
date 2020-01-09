<%@ Page Title="" Language="C#" MasterPageFile="~/InterfaceEtudiant.Master" AutoEventWireup="true" CodeBehind="Acceuil.aspx.cs" Inherits="TP2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h2>Acceuil</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td><asp:Label ID="lblGrade" runat="server" Text="Grade : "></asp:Label></td>
            <td><asp:DropDownList ID="ddlGrade" runat="server">
                <asp:ListItem>Étudiant</asp:ListItem>
                <asp:ListItem>Superviseur</asp:ListItem>
                <asp:ListItem>Administrateur</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblId" runat="server" Text="Identifiant : "></asp:Label></td>
            <td><asp:TextBox ID="txtId" runat="server"></asp:TextBox></td>
            <td><asp:RegularExpressionValidator ControlToValidate="txtId" ID="regexValidatorID" runat="server" ErrorMessage="L'identifiant ne
                peut être composé que de chiffres." ValidationExpression="[0-9]+"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="height: 26px"><asp:Label ID="lblMotPasse" runat="server" Text="Mot de passe : "></asp:Label></td>
            <td style="height: 26px"><asp:TextBox ID="txtMotPasse" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="rfvMotPasse" ControlToValidate="txtMotPasse" runat="server" ErrorMessage="Le champ ne peut pas
                être laissé vide."></asp:RequiredFieldValidator></td>

        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="btnConnection" runat="server" Text="Connection" OnClick="btnConnection_Click" /></td>
        </tr>
    </table>
</asp:Content>
