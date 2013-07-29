<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="callCsharpMethodUsingJs.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <script type="text/javascript">
      function showName()
      {
          PageMethods.getName(processSucc, processFail);
          function processSucc(result)
          {
              alert(result);
          }
          function processFail(result)
          {
              alert('There was an error!');
          }
      }
      </script>
</head>
<body>
 <form id="form1" runat="server">
   
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
    <asp:Button ID="shwAddress" runat="server" Text="Show Address"  OnClientClick="showName(); return false;" />
&nbsp;</form>


</body>
</html>
