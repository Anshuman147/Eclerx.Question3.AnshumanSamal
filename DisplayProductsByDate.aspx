<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayProductsByDate.aspx.cs" Inherits="Eclerx.Question3.AnshumanSamal.DisplayProductsByDate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label Text="From Date" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox runat="server" id="TxtFromDate" type="date"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="To Date" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox runat="server" id="TxtTodate" type="date"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button Text="Search" id="BtnSearch" runat="server" OnClick="BtnSearch_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label id="Warning" runat="server" />
                    </td>
                </tr>
            </table>
            <asp:GridView ID="GridViewProductDetails" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
