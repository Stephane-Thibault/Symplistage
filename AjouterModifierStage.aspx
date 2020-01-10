<%@ Page Title="" Language="C#" MasterPageFile="~/InterfaceEtudiant.Master" AutoEventWireup="true" CodeBehind="AjouterModifierStage.aspx.cs" Inherits="TP2.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h2>Ajouter / modifier les stages</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td style="width: 160px"><asp:Label ID="lblTitre" runat="server" Text="Titre :"></asp:Label></td>
            <td style="width: 103px">&nbsp;</td>
            <td><asp:TextBox ID="txtTitre" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="rfvTitre" runat="server" ErrorMessage="Veuillez entrer un titre" ControlToValidate="txtTitre"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 160px"><asp:Label ID="lblDateDebut" runat="server" Text="Date de début :"></asp:Label></td>
            <td style="width: 103px">
                <asp:Label ID="lblDebutPattern" runat="server" Text="(mm/yy/dd)" ForeColor="#AAAAAA"></asp:Label>
            </td>
            <td><asp:TextBox ID="txtDateDebut" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="rfvtxtDateDebut" runat="server" ErrorMessage="Veuillez entrer une date de début de stage." ControlToValidate="txtDateDebut"></asp:RequiredFieldValidator></td>
            
        </tr>
        <tr>
            <td style="width: 160px; height: 29px;"><asp:Label ID="lblDateFin" runat="server" Text="Date de fin :"></asp:Label></td>
            <td style="width: 103px; height: 29px;">
                <asp:Label ID="lblFinPattern" runat="server" Text="(mm/yy/dd)" ForeColor="#AAAAAA"></asp:Label>
            </td>
            <td style="height: 29px"><asp:TextBox ID="txtDateFin" runat="server"></asp:TextBox></td>
            <td style="height: 29px"><asp:RequiredFieldValidator ID="rfvDateFin" runat="server" ErrorMessage="Veuillez entrer une date de fin de stage." ControlToValidate="txtDateFin"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 160px">Id du superviseur :</td>
            <td style="width: 103px">&nbsp;</td>
            <td>
                <asp:TextBox ID="txtSuperviseurId" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvIdSuperviseur" runat="server" ErrorMessage="Veuillez entrer l'identifiant du superviseur" ControlToValidate="txtSuperviseurId"></asp:RequiredFieldValidator>
            </td>

        </tr>
        <tr>
            <td style="width: 160px">Id du stagiaire : </td>
            <td style="width: 103px">&nbsp;</td>
            <td>
                <asp:TextBox ID="txtStagiaireId" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvIdStagiaire" runat="server" ErrorMessage="Veuillez entrer l'identifiant du stagiaire." ControlToValidate="txtStagiaireId"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td style="width: 160px"><asp:Label ID="lblCommentaire" runat="server" Text="Commentaire :"></asp:Label></td>
            <td style="width: 103px">&nbsp;</td>
            <td><asp:TextBox ID="txtCommentaire" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 160px"></td>
            <td style="width: 103px">&nbsp;</td>
            <td><asp:Button ID="btnQuitter" runat="server" Text="Valider" OnClick="btnQuitter_Click" /></td>
        </tr>
    </table>
</asp:Content>
