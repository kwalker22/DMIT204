<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Sales.aspx.cs" Inherits="Orders_Sales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 245px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <br />
    <br />
    <table>
        <tr>
            <td>Enter Part Number</td>
            <td>
                <asp:TextBox ID="TextBox_AddPartNumber" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox_AddPartNumber" ErrorMessage="Invalid Part Number" MaximumValue="125" MinimumValue="101" ValidationGroup="Add"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>Enter Description</td>
            <td>
                <asp:TextBox ID="TextBox_AddPartDescription" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="Button_OpenPartList" runat="server" Text="Open Part List" />
            </td>
            <td class="auto-style1">
                <asp:Button ID="Button_AddItemToSale" runat="server" OnClick="Button_AddItemToSale_Click" Text="Add To Sale" ValidationGroup="Add" />
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView_Transaction" runat="server">
    </asp:GridView>
    <br />
    <table>
        <tr>
            <td>&nbsp;</td>
            <td>Subtotal</td>
            <td>
                <asp:Label ID="Label_Subtotal" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>GST</td>
            <td>
                <asp:Label ID="Label_GST" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Total</td>
            <td>
                <asp:Label ID="Label_Total" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button_Cash" runat="server" Text="Cash" />
            </td>
            <td>
                <asp:Button ID="Button_Credit" runat="server" Text="Credit" />
            </td>
            <td>
                <asp:Button ID="Button_Debit" runat="server" Text="Debit" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
</asp:Content>

