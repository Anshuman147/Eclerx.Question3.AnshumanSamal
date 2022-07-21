<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Eclerx.Question3.AnshumanSamal.AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table{
            border:1px solid;
            padding:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="2">
                        <h1>Addproduct</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Product Name" ID="LblProductName" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox runat="server" id="TxtProductName"/>
                        <asp:RequiredFieldValidator ID="RfvProductName" runat="server" ErrorMessage="Enter product name" ControlToValidate="TxtProductName"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="CategoryName" runat="server" />
                    </td>
                    <td>
                        <asp:DropDownList ID="DdlCategoryName" runat="server">

                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RfvDdlCategoryName" runat="server" ErrorMessage="Choose category name" InitialValue="select" ControlToValidate="DdlCategoryName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Price" ID="LabelPrice" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox runat="server"  ID="TxtPrice"/>
                        <asp:RequiredFieldValidator ID="RfvPrice" runat="server" ErrorMessage="Enter price" ForeColor="red" ControlToValidate="TxtPrice" InitialValue="0"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Tottal Quantity" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox runat="server" id="TxtTotalQuantity"/>
                        <asp:RequiredFieldValidator ID="RfvTotalQuantity" runat="server" ErrorMessage="Enter product Quantity" ForeColor="red" ControlToValidate="TxtTotalQuantity"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               <%-- <tr>
                    <td>
                        <asp:Label Text="Added Date" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox runat="server" id="TxtAddedDate" Type="date"/>
                        <asp:RequiredFieldValidator ID="RfvAddedDate" runat="server" ErrorMessage="Enter Add date" ForeColor="red" ControlToValidate="TxtAddedDate"></asp:RequiredFieldValidator>
                    </td>
                </tr>--%>
                <tr>
                    <td>
                        <asp:Button Text="Submit" runat="server" id="BtnSubmit" OnClick="BtnSubmit_Click"/>
                    </td>
                    <td>
                        <asp:Button Text="Cancel" runat="server" id="BtnCancel" CausesValidation="False" OnClick="BtnCancel_Click"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton Text="Got To Display Product" runat="server" OnClick="Unnamed3_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label id="Message" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
