<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RiskItems.aspx.cs" Inherits="PwCRiskDatabase.WebPages.RiskItems" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/JavaScript" src="/libs/jquery-2.js"></script>
    <script type="text/JavaScript" src="/Scripts/AjaxSupport.js"></script>
    <title></title>
    <script src="/Scripts/RiskItems.js"></script>
</head>
<body>
    <form id="Form1" method="post" runat="server">
        <table border="1">
            <tr>
                <td style="WIDTH: 173px">&nbsp;
                                       <p id="p1"></p>
                </td>
                <td>&nbsp;
                                          <p id="p2"></p>
                </td>
            </tr>
            <tr>
                <td style="WIDTH: 173px; HEIGHT: 22px">&nbsp;
                                       <p id="p3"></p>
                </td>
                <td style="HEIGHT: 22px">&nbsp;
                                          <p id="p4"></p>
                </td>
            </tr>
            <tr>
                <td style="WIDTH: 173px">&nbsp;
                                       <p id="p5"></p>
                </td>
                <td>&nbsp;
                                          <p id="p6"></p>
                </td>
            </tr>
            <tr>
                <td style="WIDTH: 173px">&nbsp;
                                       <p id="p7"></p>
                </td>
                <td>&nbsp;
                                          <p id="p8"></p>
                </td>
            </tr>
        </table>
        <input type="button" id="button" value="Change" onclick="button_click()" />
    </form>
</body>
</html>
