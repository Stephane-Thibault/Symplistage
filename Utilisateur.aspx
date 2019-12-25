<%@ Page Title="" Language="C#" MasterPageFile="~/InterfaceEtudiant.Master" AutoEventWireup="true" CodeBehind="Utilisateur.aspx.cs" Inherits="TP2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h2>Utilisateur</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td><asp:Button ID="btnAjouter" runat="server" Text="Ajouter" /></td>
            <td><asp:DropDownList ID="ddlAjouter" runat="server" OnSelectedIndexChanged="ddlAjouter_SelectedIndexChanged">
                <asp:ListItem>Stage</asp:ListItem>
                <asp:ListItem>Stagiaire</asp:ListItem>
                <asp:ListItem>Superviseur</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td><asp:Button ID="btnModifierStages" runat="server" Text="modifier les détails" /></td>
            <td><asp:DropDownList ID="ddlStagiaires" runat="server">
                <asp:ListItem>Stage</asp:ListItem>
                <asp:ListItem>Superviseur</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td><asp:Button ID="btnLister" runat="server" Text="Lister les informations" /></td>
            <td><asp:DropDownList ID="ddl" runat="server">
                <asp:ListItem>Stagiaires</asp:ListItem>
                <asp:ListItem>Superviseurs</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="btnQuitter" runat="server" Text="Quitter" CausesValidation="False" /></td>
        </tr>
    </table>
</asp:Content>
