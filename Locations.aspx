﻿<%@ Page Title="Locations" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Locations.aspx.cs" Inherits="hrTablesDatabase.Locations" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Locations</h2>
<p>
    <asp:Label ID="Label1" runat="server" Text="LOCATION_ID"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label2" runat="server" Text="STREET_ADDRESS"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label3" runat="server" Text="POSTAL_CODE"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label4" runat="server" Text="CITY"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label5" runat="server" Text="STATE_PROVINCE"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label6" runat="server" Text="COUNTRY_ID"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <asp:GridView ID="GridView1" runat="server" DataKeyNames="LOCATION_ID" DataSourceID="SqlDataSource1" AllowSorting="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateSelectButton="True">
        <Columns>
            <asp:BoundField DataField="LOCATION_ID" HeaderText="LOCATION_ID" ReadOnly="True" SortExpression="LOCATION_ID" />
            <asp:BoundField DataField="STREET_ADDRESS" HeaderText="STREET_ADDRESS" SortExpression="STREET_ADDRESS" />
            <asp:BoundField DataField="POSTAL_CODE" HeaderText="POSTAL_CODE" SortExpression="POSTAL_CODE" />
            <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
            <asp:BoundField DataField="STATE_PROVINCE" HeaderText="STATE_PROVINCE" SortExpression="STATE_PROVINCE" />
            <asp:BoundField DataField="COUNTRY_ID" HeaderText="COUNTRY_ID" SortExpression="COUNTRY_ID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString8 %>" ProviderName="<%$ ConnectionStrings:ConnectionString8.ProviderName %>" SelectCommand="SELECT LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID FROM LOCATIONS"></asp:SqlDataSource>
</p>
    <p>&nbsp;</p>
</asp:Content>