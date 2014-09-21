<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RiskItems.aspx.cs" Inherits="PwCRiskDatabase.WebPages.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="text/JavaScript" src="/Scripts/RiskItems.js"></script>
    <title></title>
</head>
<body >
              <form id="Form1" method="post" runat="server">
                     <table  border="1">
                            <tr>
                                   <td style="WIDTH: 173px">&nbsp;
                                       <asp:Label id="lblTitle1" runat="server"></asp:Label>
                                   </td>
                                   <td>&nbsp;
                                          <asp:Label id="lblTitle" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                   <td style="WIDTH: 173px; HEIGHT: 22px">&nbsp;
                                       <asp:Label id="Label2" runat="server"></asp:Label>
                                   </td>
                                   <td style="HEIGHT: 22px">&nbsp;
                                          <asp:Label id="lblDataTime" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                   <td style="WIDTH: 173px">&nbsp;
                                       <asp:Label id="Label3" runat="server"></asp:Label>
                                   </td>
                                   <td>&nbsp;
                                          <asp:Label id="lblContent" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                   <td style="WIDTH: 173px">&nbsp;
                                       <asp:Label id="Label4" runat="server"></asp:Label>
                                   </td>
                                   <td>&nbsp;
                                          <asp:Label id="lblMsg" runat="server"></asp:Label></td>
                            </tr>
                     </table>
                  <input type="button" id="button" value="Change" onclick="button_click()"/>
              </form>
       </body>
</html>
