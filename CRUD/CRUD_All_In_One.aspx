<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRUD_All_In_One.aspx.cs" Inherits="CRUD.CRUD_All_In_One" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 102%;
        }
        .auto-style2 {
            width: 130px;
        }
        .auto-style12 {
            height: 27px;
        }
        .auto-style13 {
            width: 130px;
            height: 7px;
        }
        .auto-style14 {
            height: 7px;
        }
        .auto-style15 {
            width: 1469px;
            right: inherit;
            left: inherit;
            margin-left: 0px;
        }
        .auto-style16 {
            margin-top: 0px;
        }
        .auto-style17 {
            height: 30px;
        }
        .auto-style18 {
            width: 130px;
            height: 40px;
        }
        .auto-style19 {
            height: 40px;
        }
    </style>
</head>
<body style="background-color: slategray">
    <form id="form1" runat="server">
        <div>
            <center><h1 style="border: 5px solid #000000; margin: auto; padding: 10px 15px 10px 10px; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: 50px; background-color: #990033; color: #FFFFFF;" class="auto-style15">Crud All-In-One</h1></center>
        </div>
        <table class="auto-style1">
            <tr>
                <td colspan="4" class="auto-style12">
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
                                <StaticMenuItemStyle BorderColor="#CC0099" BorderStyle="Solid" BorderWidth="1px" HorizontalPadding="82px" />
                            </asp:Menu></td>
            </tr>
            <tr>
                <td class="auto-style13">
                    </td>
                <td colspan="3" class="auto-style14">
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Text="Select Student" Font-Size="Larger" Font-Underline="True"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:DropDownList ID="TableDropDown_Students" runat="server" AutoPostBack="True" BackColor="#660033" Font-Bold="True" Font-Names="Verdana" ForeColor="White" OnSelectedIndexChanged="TableDropDown_Students_SelectedIndexChanged" Font-Size="Medium" Height="26px" Width="188px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="Grid_ShowStudents" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Verdana" BackColor="White" HorizontalAlign="Center" Width="254px">
                        <HeaderStyle BackColor="#990033" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="4" class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Text="Firstname" Font-Size="Larger"></asp:Label>
                </td>
                <td colspan="3" class="auto-style19">
                    <asp:TextBox ID="TB_Firstname" runat="server" BackColor="#660033" BorderColor="#CC0066" BorderStyle="Solid" ForeColor="White" Height="26px" Width="188px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Text="Surname" Font-Size="Larger"></asp:Label>
                </td>
                <td class="auto-style19" colspan="3">
                    <asp:TextBox ID="TB_Surname" runat="server" BackColor="#660033" BorderColor="#CC0066" ForeColor="White" Height="26px" Width="188px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" Text="Age" Font-Size="Larger"></asp:Label>
                </td>
                <td class="auto-style19" colspan="3">
                    <asp:TextBox ID="TB_Age" runat="server" BackColor="#660033" BorderColor="#CC0066" ForeColor="White" Height="26px" Width="188px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" Text="Date of Birth" Font-Size="Larger" Width="236px"></asp:Label>
                </td>
                <td class="auto-style19" colspan="3">
                    <asp:TextBox ID="TB_DateOfBirth" runat="server" BackColor="#660033" BorderColor="#CC0066" ForeColor="White" Height="26px" Width="188px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Verdana" Text="RSA ID Number" Font-Size="Larger" Width="278px"></asp:Label>
                </td>
                <td colspan="3" class="auto-style19">
                    <asp:TextBox ID="TB_IdentityNumber" runat="server" BackColor="#660033" BorderColor="#CC0066" BorderStyle="Solid" ForeColor="White" Height="26px" Width="188px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Verdana" Text="Contact Number" Font-Size="Larger" Width="290px"></asp:Label>
                </td>
                <td colspan="3" class="auto-style19">
                    <asp:TextBox ID="TB_ContactNumber" runat="server" BackColor="#660033" BorderColor="#CC0066" BorderStyle="Solid" ForeColor="White" Height="26px" Width="188px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Verdana" Text="E-Mail" Font-Size="Larger"></asp:Label>
                </td>
                <td colspan="3" class="auto-style19">
                    <asp:TextBox ID="TB_E_Mail" runat="server" BackColor="#660033" BorderColor="#CC0066" BorderStyle="Solid" ForeColor="White" Height="26px" Width="188px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Verdana" Text="Student Enabled" Font-Size="Larger" Width="282px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:CheckBox ID="CheckBox_StudentEnabled" runat="server" Font-Names="Verdana" BackColor="#660033" BorderColor="#CC0066" ForeColor="White" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Lable_Error1" runat="server" Font-Names="Verdana" BackColor="#660033" BorderColor="#CC0066" ForeColor="White"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label_Error2" runat="server" Font-Names="Verdana" BackColor="#660033" BorderColor="White" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="BN_Save" runat="server" BackColor="#990033" Font-Bold="True" Font-Names="Verdana" ForeColor="White" OnClick="Button1_Click" Text="Save" Font-Size="Medium" Height="39px" Width="90px" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" />
                    <asp:Button ID="BN_Delete" runat="server" BackColor="#990033" Font-Bold="True" Font-Names="Verdana" ForeColor="White" OnClick="BN_Delete_Click" Text="Delete" CssClass="auto-style16" Font-Size="Medium" Height="39px" Width="90px" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" />
                    <asp:Button ID="BN_Update" runat="server" BackColor="#990033" Font-Bold="True" Font-Names="Verdana" ForeColor="White" OnClick="BN_Update_Click" Text="Update" Font-Size="Medium" Height="39px" Width="130px" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" />
                    <asp:Button ID="BN_Undo" runat="server" BackColor="#990033" Font-Bold="True" Font-Names="Verdana" ForeColor="White" OnClick="BN_Undo_Click" Text="Undo" Font-Size="Medium" Height="39px" Width="90px" BorderColor="Black" BorderWidth="3px" />
                    <asp:Button ID="BN_Refresh" runat="server" BackColor="#990033" Font-Bold="True" Font-Names="Verdana" ForeColor="White" OnClick="BN_Refresh_Click" Text="Refresh" CssClass="auto-style16" Font-Size="Medium" Height="39px" Width="131px" BorderColor="Black" BorderWidth="3px" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label_Error3" runat="server" Font-Names="Verdana" BackColor="#660033" BorderColor="#CC0066" ForeColor="White"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
