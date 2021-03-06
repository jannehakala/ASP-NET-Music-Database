﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditRecordCompanies.aspx.cs" Inherits="EditRecordCompanies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <br />
    <button id="btnBack" class="buttons" runat="server" onserverclick="btnBack_ServerClick"><i class='fa fa-arrow-left fa-lg'></i></button>

    <h1 id="pageHeader">Edit or Add a new Record Company</h1>

    <asp:GridView ID="gvEditRecordCompanies" OnSelectedIndexChanged="gvEditRecordCompanies_SelectedIndexChanged" CssClass="query" OnRowDataBound="gvEditRecordCompanies_RowDataBound" runat="server">
        <Columns>
            <asp:ButtonField CommandName="Select" HeaderText="Edit" Text="Select" />
        </Columns>
    </asp:GridView>
    <asp:RegularExpressionValidator ID="regexpName" runat="server"     
                                    ErrorMessage="No special characters." 
                                    ControlToValidate="txtCompanyName"     
                                    ValidationExpression="^[\w{.,'}+ :?®©-]+$" />
    <div id="editFields">
        <span>Name:</span><br />
        <asp:Panel runat="server" DefaultButton="btnAdd">
            <asp:TextBox ID="txtCompanyName" runat="server"></asp:TextBox>
        </asp:Panel>
        <br />
        <br />
        <span>Select a country:</span><br />
        <asp:DropDownList ID="ddlSelectCountry" CssClass="comboBox" runat="server"></asp:DropDownList>
        <br />
        <br />
        <span>Select a year:</span><br />
        <asp:DropDownList ID="ddlSelectYear" CssClass="comboBox" runat="server"></asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnAdd" Text="Add a company" CssClass="buttons addButton" OnClick="btnAdd_Click" runat="server" />
        <br />
        <asp:Button ID="btnSave" Text="Save changes" CssClass="buttons updateButton" OnClick="btnSave_Click" runat="server" />
        <br />
        <asp:Button ID="btnDelete" Text="Delete company" CssClass="buttons deleteButton" OnClick="btnDelete_Click" OnClientClick="return confirm('Are you sure you want to delete this company ?')" runat="server" /><br />
        <br />
        <asp:Label ID="lblMessages" Text="Select a company to edit." runat="server" Font-Size="15"></asp:Label>
    </div>
</asp:Content>

