<%@ Page Title="" Language="C#" MasterPageFile="~/InterfaceEtudiant.Master" AutoEventWireup="true" CodeBehind="ListerSuperviseurEtStagiaire.aspx.cs" Inherits="TP2.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h2>Lister les superviseurs ou les stagiaires</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <asp:ListView ID="lvStagiaires" runat="server" DataSourceID="LinqDataSource2">
                    <AlternatingItemTemplate>
                        <tr style="background-color:#FFF8DC;">
                            <td>
                                <asp:Label ID="NomLabel" runat="server" Text='<%# Eval("Nom") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TéléphoneLabel" runat="server" Text='<%# Eval("Téléphone") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CourrielLabel" runat="server" Text='<%# Eval("Courriel") %>' />
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
                                <asp:TextBox ID="NomTextBox" runat="server" Text='<%# Bind("Nom") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="TéléphoneTextBox" runat="server" Text='<%# Bind("Téléphone") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="CourrielTextBox" runat="server" Text='<%# Bind("Courriel") %>' />
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
                                <asp:TextBox ID="NomTextBox" runat="server" Text='<%# Bind("Nom") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="TéléphoneTextBox" runat="server" Text='<%# Bind("Téléphone") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="CourrielTextBox" runat="server" Text='<%# Bind("Courriel") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color:#DCDCDC;color: #000000;">
                            <td>
                                <asp:Label ID="NomLabel" runat="server" Text='<%# Eval("Nom") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TéléphoneLabel" runat="server" Text='<%# Eval("Téléphone") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CourrielLabel" runat="server" Text='<%# Eval("Courriel") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                            <th runat="server">Nom</th>
                                            <th runat="server">Téléphone</th>
                                            <th runat="server">Courriel</th>
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
                                <asp:Label ID="NomLabel" runat="server" Text='<%# Eval("Nom") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TéléphoneLabel" runat="server" Text='<%# Eval("Téléphone") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CourrielLabel" runat="server" Text='<%# Eval("Courriel") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:ListView ID="lvSuperviseurs" runat="server" DataSourceID="LinqDataSource1">
                    <AlternatingItemTemplate>
                        <tr style="background-color:#FFF8DC;">
                            <td>
                                <asp:Label ID="NomLabel" runat="server" Text='<%# Eval("Nom") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TéléphoneLabel" runat="server" Text='<%# Eval("Téléphone") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CourrielLabel" runat="server" Text='<%# Eval("Courriel") %>' />
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
                                <asp:TextBox ID="NomTextBox" runat="server" Text='<%# Bind("Nom") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="TéléphoneTextBox" runat="server" Text='<%# Bind("Téléphone") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="CourrielTextBox" runat="server" Text='<%# Bind("Courriel") %>' />
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
                                <asp:TextBox ID="NomTextBox" runat="server" Text='<%# Bind("Nom") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="TéléphoneTextBox" runat="server" Text='<%# Bind("Téléphone") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="CourrielTextBox" runat="server" Text='<%# Bind("Courriel") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color:#DCDCDC;color: #000000;">
                            <td>
                                <asp:Label ID="NomLabel" runat="server" Text='<%# Eval("Nom") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TéléphoneLabel" runat="server" Text='<%# Eval("Téléphone") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CourrielLabel" runat="server" Text='<%# Eval("Courriel") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                            <th runat="server">Nom</th>
                                            <th runat="server">Téléphone</th>
                                            <th runat="server">Courriel</th>
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
                                <asp:Label ID="NomLabel" runat="server" Text='<%# Eval("Nom") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TéléphoneLabel" runat="server" Text='<%# Eval("Téléphone") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CourrielLabel" runat="server" Text='<%# Eval("Courriel") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="TP2.GestionStagesDataContext" EntityTypeName="" Select="new (Nom, Téléphone, Courriel)" TableName="Superviseurs">
                </asp:LinqDataSource>
                <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="TP2.GestionStagesDataContext" EntityTypeName="" Select="new (Nom, Téléphone, Courriel)" TableName="Stagiaires">
                </asp:LinqDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Stagiaires</asp:ListItem>
                    <asp:ListItem>Superviseurs</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
    </table>
</asp:Content>
