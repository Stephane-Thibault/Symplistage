﻿<%@ Page Title="" Language="C#" MasterPageFile="~/InterfaceEtudiant.Master" AutoEventWireup="true" CodeBehind="Utilisateur.aspx.cs" Inherits="TP2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h2>Utilisateur</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td style="height: 33px"><asp:Button ID="btnAjouter" runat="server" Text="Créer un nouvel utilisateur ou stage" OnClick="btnAjouter_Click" UseSubmitBehavior="False" /></td>
            <td style="height: 33px">
                <asp:DropDownList ID="ddlAjouter" runat="server" Visible="False">
                    <asp:ListItem>Stage</asp:ListItem>
                    <asp:ListItem>Stagiaire</asp:ListItem>
                    <asp:ListItem>Superviseur</asp:ListItem>
                </asp:DropDownList></td>
            <td style="height: 33px"></td>
            <td style="height: 33px"><asp:Button ID="btnAjouterContinuer" runat="server" Text="Continuer" Visible="False" OnClick="btnAjouterContinuer_Click" /></td>
            <td><asp:Label ID="lblControlErreurAjouter" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Button ID="btnModifier" runat="server" Text="Modifier les détails des utilisateurs" OnClick="btnModifierStages_Click" UseSubmitBehavior="False" /></td>
            <td><asp:DropDownList ID="ddlModifier" runat="server" Visible="False">
                <asp:ListItem>Stagiaire</asp:ListItem>
                <asp:ListItem>Superviseur</asp:ListItem>
                </asp:DropDownList></td>
            <td>
                <asp:GridView ID="GridModifierStagiaire" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDDSModifierStagiaire" Visible="False">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDDSModifierStagiaire" runat="server" ConnectionString="<%$ ConnectionStrings:GestionStagesConnectionString %>" SelectCommand="SELECT [Nom] FROM [Stagiaire]"></asp:SqlDataSource>
                <asp:GridView ID="GridModifierSuperviseur" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDDSModifierSuperviseur" Visible="False">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                    </Columns>
                </asp:GridView>
            </td>
            <td><asp:Button ID="btnModifierContinuer" runat="server" Text="Continuer" Visible="False" OnClick="btnModifierContinuer_Click" style="height: 29px" /></td>
            <td><asp:Label ID="lblControlErreurModifier" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Button ID="btnLister" runat="server" Text="Lister les infos des utilisateurs ou stages" Width="259px" OnClick="btnLister_Click" UseSubmitBehavior="False" /></td>
            <td><asp:DropDownList ID="ddlListerInformations" runat="server" Visible="False">
                <asp:ListItem>Stagiaire</asp:ListItem>
                <asp:ListItem>Superviseur</asp:ListItem>
                </asp:DropDownList></td>
            <td>
                <asp:GridView ID="GridListerStagiaires" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDDSListerStagiaire" Visible="False">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDDSListerStagiaire" runat="server" ConnectionString="<%$ ConnectionStrings:GestionStagesConnectionString %>" SelectCommand="SELECT [Nom] FROM [Stagiaire]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDDSModifierSuperviseur" runat="server" ConnectionString="<%$ ConnectionStrings:GestionStagesConnectionString %>" SelectCommand="SELECT [Nom] FROM [Superviseur]"></asp:SqlDataSource>
                <asp:GridView ID="GridListerSuperviseurs" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionStagesConnectionString %>" SelectCommand="SELECT [Nom] FROM [Superviseur]"></asp:SqlDataSource>
            </td>
            <td><asp:Button ID="btnListerContinuer" runat="server" Text="Continuer" Visible="False" OnClick="btnListerContinuer_Click" /></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="btnQuitter" runat="server" Text="Quitter" CausesValidation="False" /></td>
        </tr>
    </table>
</asp:Content>
