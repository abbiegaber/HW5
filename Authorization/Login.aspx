<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title> Login </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
    <h1> Please log in to visit this page.</h1>
    <asp:Login ID="Login1" runat="server">
    </asp:Login>
</asp:Content>

