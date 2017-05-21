<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyMenu.aspx.cs" Inherits="ProjectFinal.Account.MyMenu" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  
    <div>
    
        Administror tools<br />
        <asp:Button ID="adminBtn" runat="server" OnClick="adminBtn_Click" Text="AdminTools" />
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        For Users:<br />
        <asp:Button ID="userBtn" runat="server" OnClick="userBtn_Click" Text="Press it" />
    
    </div>
    
</asp:Content>

