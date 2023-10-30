<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteStudent.aspx.cs" Inherits="CRUD.DeleteStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style8 {
            width: 1492px;
            margin-left: 0px;
        }
        .auto-style10 {
            width: 358px;
        }
        .auto-style11 {
            width: 358px;
            height: 15px;
        }
        .auto-style13 {
            width: 245px;
            height: 15px;
        }
        .auto-style14 {
            width: 358px;
            height: 22px;
        }
    </style>
</head>
<body style="background-color: slategray">
    <form id="form1" runat="server">
        <div>
            <center><h1 style="border: 5px solid #000000; padding: 9px; font-family: verdana, Geneva, Tahoma, sans-serif; color: #FFFFFF; background-color: #990033; font-size: 50px; font-weight: bold; margin-right: auto; margin-top: auto; margin-bottom: auto;" class="auto-style8">Delete the Student</h1></center>
        </div>
        <table class="auto-style1">
            <tr>
                <td colspan="4">
                            
                        <asp:Menu ID="Menu1" runat="server" BackColor="#660066" BorderColor="Black" BorderStyle="Solid" ForeColor="White" Orientation="Horizontal" Font-Bold="True" Font-Names="Verdana">
                                <DynamicMenuItemStyle HorizontalPadding="60px" />
                                <DynamicSelectedStyle HorizontalPadding="60px" />
                                <Items>
                                    <asp:MenuItem NavigateUrl="~/CreateStudent.aspx" Text="Create Student" Value="Create Student"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/ReadStudent.aspx" Text="Read Student" Value="Read Student"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/UpdateStudent.aspx" Text="Update Student" Value="Update Student"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/DeleteStudent.aspx" Text="Delete Student" Value="Delete Student"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/CRUD_All_In_One.aspx" Text="Crud All-In-One" Value="Crud All-In-One"></asp:MenuItem>
                                </Items>
                                <StaticMenuItemStyle BorderColor="#CC0099" BorderStyle="Solid" BorderWidth="1px" HorizontalPadding="83px" />
                            </asp:Menu>
                            
                        </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style10" colspan="2">
                    &nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="LB_Student" runat="server" Text="Select Student to delete" Font-Bold="True" Font-Names="Verdana" Font-Size="Larger" Font-Underline="True" Width="412px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:DropDownList ID="TableDropDown_Students" runat="server" OnSelectedIndexChanged="TableDropDown_Students_SelectedIndexChanged" BackColor="#660033" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="White" Height="26px" Width="188px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style10" colspan="2">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="Grid_ShowStudents" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Names="Verdana" BackColor="White" HorizontalAlign="Center" Width="254px">
                        <HeaderStyle BackColor="#660033" ForeColor="White" />
                        <SelectedRowStyle BackColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style14" colspan="2"></td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="BT_refresh" runat="server" OnClick="BT_refresh_Click" Text="Refresh" BackColor="#990033" Font-Bold="True" Font-Names="Verdana" ForeColor="White" Font-Size="Medium" Height="39px" Width="130px" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" />
                    <asp:Button ID="BT_Delete" runat="server" OnClick="BT_Delete_Click" Text="Delete" BackColor="#990033" Font-Bold="True" Font-Names="Verdana" ForeColor="White" Font-Size="Medium" Height="39px" Width="90px" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" />
                </td>
                <td class="auto-style13">
                    <asp:Label ID="LB_Error" runat="server" Font-Names="Verdana" ForeColor="White" BackColor="#660033" BorderColor="#CC0066" Height="30px"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style11">
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style10" colspan="2">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
