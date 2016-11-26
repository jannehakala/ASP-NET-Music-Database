﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditAlbums.aspx.cs" Inherits="EditAlbums" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <br />
    <button id="btnBack" class="buttons" runat="server" onserverclick="btnBack_ServerClick"><i class='fa fa-arrow-left fa-lg'></i></button>

    <h1 id="pageHeader">Edit or Add new</h1>

    <asp:GridView ID="gvEditAlbums" OnSelectedIndexChanged="gvEditAlbums_SelectedIndexChanged" CssClass="query" OnRowDataBound="gvEditAlbums_RowDataBound" runat="server">
        <Columns>
            <asp:ButtonField CommandName="Select" HeaderText="Edit" Text="Select" />
        </Columns>
    </asp:GridView>
    <asp:RegularExpressionValidator ID="regexpName" runat="server"     
                                    ErrorMessage="No special characters." 
                                    ControlToValidate="txtAlbumName"    
                                    ValidationExpression="^[\w{.,'}+ :?®©-]+$" />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"     
                                    ErrorMessage="No special characters." 
                                    ControlToValidate="txtImageLink"    
                                    ValidationExpression="^[\w{.,'}+ :?®©-]+$" />
    <div id="editFields">
        <span>Name:</span><br />
        <asp:Panel runat="server" DefaultButton="btnAdd">
            <asp:TextBox ID="txtAlbumName" runat="server"></asp:TextBox>
        </asp:Panel>
        <br />
        <br />
        <span>Select artist:</span><br />
        <asp:DropDownList ID="ddlSelectArtist" CssClass="comboArtist" runat="server"></asp:DropDownList>
        <br />
        <br />
        <span>Select year:</span><br />
        <asp:DropDownList ID="ddlSelectYear" CssClass="comboYear" runat="server"></asp:DropDownList>
        <br />
        <br /> 
        <span>Select company:</span><br />
        <asp:DropDownList ID="ddlSelectCompany" CssClass="comboCompany" runat="server"></asp:DropDownList>
        <br />
        <br />
        <span>Image link:</span><br />
        <asp:Panel runat="server" DefaultButton="btnAdd">
            <asp:TextBox ID="txtImageLink" runat="server"></asp:TextBox>
        </asp:Panel>   
        <asp:Button ID="btnAdd" Text="Add album" CssClass="buttons addButton" OnClick="btnAdd_Click" runat="server" />
        <br />
        <asp:Button ID="btnSave" Text="Save changes" CssClass="buttons updateButton" OnClick="btnSave_Click" runat="server" />
        <br />
        <asp:Button ID="btnDelete" Text="Delete album" CssClass="buttons deleteButton" OnClick="btnDelete_Click" OnClientClick="return confirm('Are you sure you want to delete this album ?')" runat="server" /><br />
        <br />
        <asp:Label ID="lblMessages" Text="Select album to edit." runat="server" Font-Size="15"></asp:Label>
    </div>
</asp:Content>
