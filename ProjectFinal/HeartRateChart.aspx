<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HeartRateChart.aspx.cs" Inherits="ProjectFinal.HeartRateChart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
            <Series>
                <asp:Series Name="Series1" XValueMember="dateTime" YValueMembers="Pulse" ChartType="Spline"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyFirstDatabaseConnectionString2 %>" SelectCommand="SELECT [Pulse], [dateTime] FROM [geo_heart] WHERE ([UserName] = @UserName)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="&quot;&quot;" Name="UserName" SessionField="UserName" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
