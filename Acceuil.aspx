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
        </tr>
        <tr>
            <td><asp:Label ID="lblMotPasse" runat="server" Text="Mot de passe : "></asp:Label></td>
            <td><asp:TextBox ID="txtMotPasse" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="btnConnection" runat="server" Text="Connection" /></td>
        </tr>
    </table>
</asp:Content>
