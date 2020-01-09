<%@ Page Title="" Language="C#" MasterPageFile="~/InterfaceEtudiant.Master" AutoEventWireup="true" CodeBehind="Utilisateur.aspx.cs" Inherits="TP2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h2>Utilisateur</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td><asp:Button ID="btnAjouter" runat="server" Text="Créer un nouvel utilisateur ou stage" OnClick="btnAjouter_Click" /></td>
            <td>
                <asp:DropDownList ID="ddlAjouter" runat="server" Visible="False">
                    <asp:ListItem>Stage</asp:ListItem>
                    <asp:ListItem>Stagiaire</asp:ListItem>
                    <asp:ListItem>Superviseur</asp:ListItem>
                </asp:DropDownList></td>
            <td>
                <asp:SqlDataSource ID="SqlDDSStages" runat="server" ConnectionString="<%$ ConnectionStrings:GestionStagesConnectionString %>" SelectCommand="SELECT [Titre], [Début], [Fin], [Commentaire] FROM [Stage]"></asp:SqlDataSource>
                <asp:GridView ID="GridAjouterStage" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDDSStagiaires" OnSelectedIndexChanged="GridStagiaire_SelectedIndexChanged" Visible="False">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDDSStagiaires" runat="server" ConnectionString="<%$ ConnectionStrings:GestionStagesConnectionString %>" SelectCommand="SELECT [Nom] FROM [Stagiaire]"></asp:SqlDataSource>
                <asp:GridView ID="GridAjouterSuperviseur" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDDSSuperviseurs" Visible="False">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDDSSuperviseurs" runat="server" ConnectionString="<%$ ConnectionStrings:GestionStagesConnectionString %>" SelectCommand="SELECT [Nom] FROM [Superviseur]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td><asp:Button ID="btnModifier" runat="server" Text="Modifier les détails des utilisateurs" OnClick="btnModifierStages_Click" /></td>
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
        </tr>
        <tr>
            <td><asp:Button ID="btnLister" runat="server" Text="Lister les infos des utilisateurs ou stages" Width="259px" OnClick="btnLister_Click" /></td>
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
            <td><asp:Button ID="btnListerUtilisateur" runat="server" Text="Continuer" /></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="btnQuitter" runat="server" Text="Quitter" CausesValidation="False" /></td>
        </tr>
    </table>
</asp:Content>
