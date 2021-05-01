<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DynamicTable.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.DynamicTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    &nbsp;<br />
        &nbsp;<br />

    <div style="position: fixed; left: 20px; top: 91px;">
            <asp:Button ID="btnAddBookNav" runat="server" Text="Add new book" CssClass="btn btn-primary" OnClick="btnAddBookNav_Click" />
    </div>


        <asp:Panel ID="pnlBookList" runat="server" >
            <asp:Table ID="tblBookList" runat="server" CssClass="table table-dark table-striped">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Book Title</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Author's Last name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Author's First name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Price</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Publish date</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Publisher's name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Genre</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </asp:Panel>
</asp:Content>
