﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="DetailsView.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id = "main1">

    <br />
    <h1> Adoptable Animals</h1>
        <br />
               You are currently viewing details on a specific animal. To view other animals, 
        please navigate to &quot;View All&quot;.</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"  
        ConnectionString="<%$ ConnectionStrings:cs_AnimalShelter %>" 
        SelectCommand="SELECT * FROM [Animals] WHERE ([AnimalID] = @AnimalID)" 
        DeleteCommand="DELETE FROM [Animals] WHERE [AnimalID] = @AnimalID" 
        InsertCommand="INSERT INTO [Animals] ([AnimalName], [Age], [Species], [Breed], [Sex], [Description]) VALUES (@AnimalName, @Age, @Species, @Breed, @Sex, @Description)" 
        UpdateCommand="UPDATE [Animals] SET [AnimalName] = @AnimalName, [Age] = @Age, [Species] = @Species, [Breed] = @Breed, [Sex] = @Sex, [Description] = @Description WHERE [AnimalID] = @AnimalID">
        <DeleteParameters>
            <asp:Parameter Name="AnimalID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AnimalName" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Species" Type="String" />
            <asp:Parameter Name="Breed" Type="String" />
            <asp:Parameter Name="Sex" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="AnimalID" QueryStringField="AnimalID" 
                Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="AnimalName" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Species" Type="String" />
            <asp:Parameter Name="Breed" Type="String" />
            <asp:Parameter Name="Sex" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="AnimalID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="AnimalID" DataSourceID="SqlDataSource1"  CssClass="cssgridview" Height="50px" 
        Width="483px">

        <Fields>
            <asp:BoundField DataField="AnimalName" HeaderText="Name" 
                SortExpression="AnimalName" />
            <asp:BoundField DataField="Age" HeaderText="Age" 
                SortExpression="Age" />
            <asp:BoundField DataField="Species" HeaderText="Species" 
                SortExpression="Species" />
            <asp:BoundField DataField="Breed" HeaderText="Breed" 
                SortExpression="Breed" />
            <asp:BoundField DataField="Sex" HeaderText="Sex" 
                SortExpression="Sex" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" />
        </Fields>
    </asp:DetailsView>

</asp:Content>
