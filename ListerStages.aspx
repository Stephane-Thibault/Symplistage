<%@ Page Title="" Language="C#" MasterPageFile="~/InterfaceEtudiant.Master" AutoEventWireup="true" CodeBehind="ListerStages.aspx.cs" Inherits="TP2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h2>Lister les stages d'un stagiaire</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="TP2.GestionStagesDataContext" EntityTypeName="" Select="new (Titre, Début, Fin, Commentaire)" TableName="Stages">
    </asp:LinqDataSource>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="LinqDataSource1">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Label ID="TitreLabel" runat="server" Text='<%# Eval("Titre") %>' />
                </td>
                <td>
                    <asp:Label ID="DébutLabel" runat="server" Text='<%# Eval("Début") %>' />
                </td>
                <td>
                    <asp:Label ID="FinLabel" runat="server" Text='<%# Eval("Fin") %>' />
                </td>
                <td>
                    <asp:Label ID="CommentaireLabel" runat="server" Text='<%# Eval("Commentaire") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="TitreTextBox" runat="server" Text='<%# Bind("Titre") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DébutTextBox" runat="server" Text='<%# Bind("Début") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FinTextBox" runat="server" Text='<%# Bind("Fin") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CommentaireTextBox" runat="server" Text='<%# Bind("Commentaire") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="TitreTextBox" runat="server" Text='<%# Bind("Titre") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DébutTextBox" runat="server" Text='<%# Bind("Début") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FinTextBox" runat="server" Text='<%# Bind("Fin") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CommentaireTextBox" runat="server" Text='<%# Bind("Commentaire") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Label ID="TitreLabel" runat="server" Text='<%# Eval("Titre") %>' />
                </td>
                <td>
                    <asp:Label ID="DébutLabel" runat="server" Text='<%# Eval("Début") %>' />
                </td>
                <td>
                    <asp:Label ID="FinLabel" runat="server" Text='<%# Eval("Fin") %>' />
                </td>
                <td>
                    <asp:Label ID="CommentaireLabel" runat="server" Text='<%# Eval("Commentaire") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server">Titre</th>
                                <th runat="server">Début</th>
                                <th runat="server">Fin</th>
                                <th runat="server">Commentaire</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Label ID="TitreLabel" runat="server" Text='<%# Eval("Titre") %>' />
                </td>
                <td>
                    <asp:Label ID="DébutLabel" runat="server" Text='<%# Eval("Début") %>' />
                </td>
                <td>
                    <asp:Label ID="FinLabel" runat="server" Text='<%# Eval("Fin") %>' />
                </td>
                <td>
                    <asp:Label ID="CommentaireLabel" runat="server" Text='<%# Eval("Commentaire") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <table>
        <tr>
            <td><asp:Button ID="btnModifier" runat="server" Text="Modifier" /></td>
            <td><asp:Button ID="btnAjouter" runat="server" Text="Ajouter" /></td>
            <td></td>
            <td><asp:Button ID="btnQuitter" runat="server" Text="Quitter" OnClick="btnQuitter_Click" /></td>
        </tr>
    </table>
</asp:Content>
