<%@ Page Title="" Language="C#" MasterPageFile="~/InterfaceEtudiant.Master" AutoEventWireup="true" CodeBehind="Utilisateur.aspx.cs" Inherits="TP2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h2>Utilisateur</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td><asp:Button ID="Button2" runat="server" Text="Button" /></td>
            <td><asp:DropDownList ID="ddlAjouter" runat="server"></asp:DropDownList></td>
        </tr>
        <tr>
            <td><asp:Button ID="btnLister" runat="server" Text="Lister les informations" /></td>
            <td><asp:DropDownList ID="ddl" runat="server"></asp:DropDownList></td>
        </tr>
        <tr>
            <td><asp:Button ID="btnModifierStages" runat="server" Text="modifier les Stage" /></td>
            <td><asp:DropDownList ID="ddlStagiaires" runat="server"></asp:DropDownList></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="btnQuitter" runat="server" Text="Quitter" /></td>
        </tr>
    </table>
</asp:Content>
