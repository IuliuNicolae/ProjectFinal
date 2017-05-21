<%@ Page Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true"  CodeBehind="Chart.aspx.cs" Inherits="ProjectFinal.Chart" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1">
    <div>
    
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2">
            <series>
                <asp:Series Name="Series1" XValueMember="UserName" YValueMembers="DiffSteps" YValuesPerPoint="2" ChartType="StackedColumn">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyFirstDatabaseConnectionString2 %>" SelectCommand="SELECT CAST(Dates AS date) AS Date, UserName, MIN(Steps) AS MinSteps, MAX(Steps) AS MaxSteps, MAX(Steps) - MIN(Steps) AS DiffSteps FROM geo_userSteps AS p GROUP BY UserName, CAST(Dates AS date) HAVING (UserName = @UserName)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="&quot;&quot;" Name="UserName" SessionField="UserName" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyFirstDatabaseConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [Steps], [UserName], [Dates] FROM [geo_userSteps]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [geo_userSteps] WHERE [Id] = @original_Id AND (([Steps] = @original_Steps) OR ([Steps] IS NULL AND @original_Steps IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Dates] = @original_Dates) OR ([Dates] IS NULL AND @original_Dates IS NULL))" InsertCommand="INSERT INTO [geo_userSteps] ([Steps], [UserName], [Dates]) VALUES (@Steps, @UserName, @Dates)" UpdateCommand="UPDATE [geo_userSteps] SET [Steps] = @Steps, [UserName] = @UserName, [Dates] = @Dates WHERE [Id] = @original_Id AND (([Steps] = @original_Steps) OR ([Steps] IS NULL AND @original_Steps IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Dates] = @original_Dates) OR ([Dates] IS NULL AND @original_Dates IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Steps" Type="Decimal" />
                <asp:Parameter Name="original_UserName" Type="String" />
                <asp:Parameter Name="original_Dates" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Steps" Type="Decimal" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Dates" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Steps" Type="Decimal" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Dates" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Steps" Type="Decimal" />
                <asp:Parameter Name="original_UserName" Type="String" />
                <asp:Parameter Name="original_Dates" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
    </asp:Content>