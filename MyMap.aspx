<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyMap.aspx.cs" Inherits="ProjectFinal.MyMap" %>
<%@ Register Assembly="GMaps" Namespace="Subgurim.Controles" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
</head>
<body>
   
    <form id="form1" runat="server">
    <div>
    
    <h3>Today's track<asp:Label ID="controlLabel" runat="server" Text="Label"></asp:Label>
        </h3>
<div>
    
    <cc1:GMap ID="GMap1" runat="server" Width="800px" Height="500px"/>

    
</div>
    </div>
       
        
    </form>
  
      <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBGSxwM1ccgN4IyuHKqT3n-amxYMuEu2Ds&callback=initMap"
        type="text/javascript"></script>  
</body>
</html>
