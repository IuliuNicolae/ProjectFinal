<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Notes.aspx.cs" Inherits="ProjectFinal.Notes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <li style="">Note:
                    <asp:Label ID="NoteLabel" runat="server" Text='<%# Eval("Note") %>' />
                    <br />
                    dateTime:
                    <asp:Label ID="dateTimeLabel" runat="server" Text='<%# Eval("dateTime") %>' />
                    <br />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="">Note:
                    <asp:TextBox ID="NoteTextBox" runat="server" Text='<%# Bind("Note") %>' />
                    <br />
                    dateTime:
                    <asp:TextBox ID="dateTimeTextBox" runat="server" Text='<%# Bind("dateTime") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">Note:
                    <asp:TextBox ID="NoteTextBox" runat="server" Text='<%# Bind("Note") %>' />
                    <br />dateTime:
                    <asp:TextBox ID="dateTimeTextBox" runat="server" Text='<%# Bind("dateTime") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
<br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="">Note:
                    <asp:Label ID="NoteLabel" runat="server" Text='<%# Eval("Note") %>' />
                    <br />
                    dateTime:
                    <asp:Label ID="dateTimeLabel" runat="server" Text='<%# Eval("dateTime") %>' />
                    <br />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="">
                    Note:
                    <asp:Label ID="NoteLabel" runat="server" Text='<%# Eval("Note") %>' />
                    <br />
                    dateTime:
                    <asp:Label ID="dateTimeLabel" runat="server" Text='<%# Eval("dateTime") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyFirstDatabaseConnectionString2 %>" SelectCommand="SELECT [Note], [dateTime] FROM [geo_note]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
