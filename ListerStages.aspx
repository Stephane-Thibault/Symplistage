<%@ Page Title="" Language="C#" MasterPageFile="~/InterfaceEtudiant.Master" AutoEventWireup="true" CodeBehind="ListerStages.aspx.cs" Inherits="TP2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h2>Lister les stages d'un stagiaire</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table>
        <tr>
            <td><asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Titre" HeaderText="Titre" SortExpression="Titre" />
                    <asp:BoundField DataField="Début" HeaderText="Début" SortExpression="Début" />
                    <asp:BoundField DataField="Fin" HeaderText="Fin" SortExpression="Fin" />
                    <asp:BoundField DataField="Commentaire" HeaderText="Commentaire" SortExpression="Commentaire" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionStagesConnectionString %>" SelectCommand="SELECT [Titre], [Début], [Fin], [Commentaire] FROM [Stage] WHERE ([Id] = @Id)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Id" SessionField="identifiantDuStagiaire" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td><asp:Button ID="btnQuitter" runat="server" Text="Quitter" OnClick="btnQuitter_Click" /></td>
        </tr>
    </table>
</asp:Content>
