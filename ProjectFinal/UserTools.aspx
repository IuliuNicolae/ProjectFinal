﻿<%@ Page Language="C#"MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="UserTools.aspx.cs" Inherits="ProjectFinal.UserTools" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    
    <div>
    
        <br />
        Please choose a date:<br />
        <br />
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        <br />
        <asp:Label ID="errorLabel" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        GPS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button ID="getGps" runat="server" OnClick="getGps_Click" Text="GPS" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        Pulse<br />
        <asp:Button ID="pulseBtn" runat="server" OnClick="pulseBtn_Click" style="height: 26px" Text="Pulse" />
        <br />
        <br />
        <br />
        Step counter<br />
        <asp:Button ID="stepsBtn" runat="server" Text="Steps" OnClick="stepsBtn_Click" />
        <br />
        <br />
        <br />
        <br />
        Notes<br />
        <asp:Button ID="noteBtn" runat="server" Text="Notes" OnClick="noteBtn_Click" />
        <br />
        <br />
    
    </div>
   
</body>
</html>
</asp:Content>