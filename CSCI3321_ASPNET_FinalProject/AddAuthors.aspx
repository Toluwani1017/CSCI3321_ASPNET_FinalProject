<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddAuthors.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddAuthors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Add an Author</h3>


    <div class="row">

        <div class="col-md-3">
            Last Name:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            First Name:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            Gender:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtGender" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

<%--        <div class="col-md-3">
            Birth Date:
            <br />
            <asp:Calendar ID="calBirthday" runat="server"></asp:Calendar>
        </div>
--%>

        <div class="col-md-3">
            Birth Date:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtBirthday" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
        </div>

        <div class="col-md-3"></div>
        <div class="col-md-9">
            <asp:Button ID="btnSubmitAthr" runat="server" Text="Add Author" CssClass="btn btn-primary" OnClick="btnSubmitAthr_Click" />
        </div>

    </div>

</asp:Content>
