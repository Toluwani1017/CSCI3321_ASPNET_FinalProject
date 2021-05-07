<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Book</h3>
    <div class="row">

        <div class="col-md-3">
            Title:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        &nbsp;<br />

        <div class="col-md-3">
            Price:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        &nbsp;<br />

        <div class="col-md-3">
            Publish date:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPublishDate" runat="server" CssClass="form-control" TextMode="Date" EnableTheming="True"></asp:TextBox>
        </div>
        &nbsp;<br />

        <div class="col-md-3">
            Author's last name:</div>
        <div class="col-md-9">
            <asp:DropDownList ID="ddlAuthor" runat="server" DataSourceID="sdsAuthor" DataTextField="LastName" DataValueField="AuthorID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="sdsAuthor" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT AuthorID, LastName FROM Authors"></asp:SqlDataSource>
        </div>
        &nbsp;<br />

        <div class="col-md-3">
            Publisher:
        </div>
        <div class="col-md-9">
            <asp:DropDownList ID="ddlPublisher" runat="server" DataSourceID="sdsPublisher" DataTextField="PublisherName" DataValueField="PublisherID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="sdsPublisher" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT PublisherID, PublisherName FROM Publishers"></asp:SqlDataSource>
        </div>
        &nbsp;<br />

        <div class="col-md-3">
            Genre:
        </div>
        <div class="col-md-9">
            <asp:DropDownList ID="ddlGenre" runat="server" DataSourceID="sdsGenre" DataTextField="GenreName" DataValueField="GenreID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="sdsGenre" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT GenreID, GenreName FROM Genres"></asp:SqlDataSource>
        </div>
        &nbsp;<br />

        <div class="col-md-3">
            Word Count:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtWordCount" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        &nbsp;<br />

        <div class="col-md-3">
            &nbsp;

        </div>
        <div class="col-md-9">
            <asp:Button ID="btnSubmitBook" runat="server" Text="Add Book" CssClass="btn btn-primary" OnClick="btnSubmitBook_Click" />
            <asp:Label ID="lblFields" runat="server" CssClass="label label-warning" Text="All fields are required!" Visible="False"></asp:Label>
        </div>
        
        &nbsp;<br />
      </div>

        &nbsp;<br />


        <div style="position: fixed; left: 20px; top: 91px;">
            <asp:Button ID="btnAddnewAuthor" runat="server" Text="Add a new Author" CssClass="btn btn-primary" OnClick="btnAddnewAuthor_Click" />
        </div>

        &nbsp;<br />

        <div style="position: fixed; left: 20px; top: 140px;">
            <asp:Button ID="btnAddnewPublisher" runat="server" Text="Add a new Publisher" CssClass="btn btn-primary" OnClick="btnAddnewPublisher_Click" />
        </div>


</asp:Content>
