<%@ Page Title="" Language="C#" MasterPageFile="~/InterfaceEtudiant.Master" AutoEventWireup="true" CodeBehind="ListerSuperviseurEtStagiaire.aspx.cs" Inherits="TP2.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h2>Lister les superviseurs ou les stagiaires</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDDStagiaires" runat="server" ConnectionString="<%$ ConnectionStrings:GestionStagesConnectionString %>" SelectCommand="SELECT [Nom], [Téléphone], [Courriel] FROM [Stagiaire]" EnableViewState="False"></asp:SqlDataSource>
    <asp:GridView ID="GridStagiaires" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDDStagiaires" Visible="False" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
            <asp:BoundField DataField="Téléphone" HeaderText="Téléphone" SortExpression="Téléphone" />
            <asp:BoundField DataField="Courriel" HeaderText="Courriel" SortExpression="Courriel" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:GridView ID="GridSuperviseur" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDDSSuperviseur" Visible="False" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
            <asp:BoundField DataField="Courriel" HeaderText="Courriel" SortExpression="Courriel" />
            <asp:BoundField DataField="Téléphone" HeaderText="Téléphone" SortExpression="Téléphone" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:GridView ID="GridStagiaireIndividuel" runat="server"></asp:GridView>
    <asp:SqlDataSource ID="SqlDDSSuperviseur" runat="server" ConnectionString="<%$ ConnectionStrings:GestionStagesConnectionString %>" SelectCommand="SELECT [Nom], [Courriel], [Téléphone] FROM [Superviseur]"></asp:SqlDataSource>
    <asp:Button ID="btnQuitter" runat="server" Text="Retour" OnClick="btnQuitter_Click" />
    </asp:Content>
