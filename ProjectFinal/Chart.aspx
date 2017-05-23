<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Chart.aspx.cs" Inherits="ProjectFinal.Chart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2">
        <Series>
            <asp:Series Name="Series1" XValueMember="Date" YValueMembers="DiffSteps">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyFirstDatabaseConnectionString2 %>" SelectCommand="SELECT CAST(Dates AS date) AS Date, UserName, MIN(Steps) AS MinSteps, MAX(Steps) AS MaxSteps, MAX(Steps) - MIN(Steps) AS DiffSteps FROM geo_userSteps AS p GROUP BY UserName, CAST(Dates AS date) HAVING (UserName = @UserName)">
        <SelectParameters>
            <asp:SessionParameter Name="UserName" SessionField="UserName" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyFirstDatabaseConnectionString2 %>" SelectCommand="SELECT CAST(Dates AS date) AS Date, UserName, MIN(Steps) AS MinSteps, MAX(Steps) AS MaxSteps, MAX(Steps) - MIN(Steps) AS DiffSteps FROM geo_userSteps AS p GROUP BY UserName, CAST(Dates AS date) HAVING (UserName = @UserName)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="&quot;&quot;" Name="UserName" SessionField="UserName" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
