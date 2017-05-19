<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyMenu.aspx.cs" Inherits="ProjectFinal.Account.MyMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
    </form>
</body>
</html>
