<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ShelterGridView.aspx.vb" Inherits="ShelterGridView2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title> View All </title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1> Adoptable Animals</h1>
<br /> <br /> To view more information about these adoptable animals, please click their name.
    <br />
    <a href = "NewAnimal.aspx"> Add an Animal to the Database</a>
<br /> <br />
<link href="../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_AnimalShelter %>" 
        SelectCommand="SELECT * FROM [Animals]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="AnimalID" DataSourceID="SqlDataSource1"  
        CssClass="cssgridview" Width="436px" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="AnimalName" HeaderText="Name" 
                SortExpression="AnimalName" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Species" HeaderText="Species" 
                SortExpression="Species" />
            <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
            <asp:HyperLinkField DataNavigateUrlFields="AnimalID" 
                DataNavigateUrlFormatString="EditAnimal.aspx?AnimalID={0}" 
                Text="Edit" />
        </Columns>
    </asp:GridView>
</asp:Content>

