<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateStudent.aspx.cs" Inherits="CRUD.CreateStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 101%;
        }
        .auto-style10 {
            margin-left: 0px;
        }
        .auto-style18 {
            height: 45px;
        }
        .auto-style20 {
            width: 258px;
            height: 45px;
        }
        .auto-style21 {
            width: 22px;
            height: 45px;
        }
        .auto-style22 {
            height: 45px;
            width: 902px;
        }
        .auto-style23 {
            height: 11px;
        }
        .auto-style24 {
            height: 56px;
            margin-top: 0px;
        }
        .auto-style25 {
            height: 10px;
        }
        .auto-style26 {
            margin-right: 51px;
        }
        .auto-style31 {
            height: 53px;
            width: 902px;
        }
        .auto-style34 {
            width: 258px;
            height: 53px;
        }
        .auto-style35 {
            height: 16px;
            width: 902px;
        }
        .auto-style38 {
            width: 258px;
            height: 16px;
        }
        .auto-style39 {
            width: 161px;
            height: 45px;
        }
        .auto-style40 {
            width: 161px;
            height: 53px;
        }
        .auto-style41 {
            width: 161px;
            height: 16px;
        }
        .auto-style42 {
            width: 323px;
            height: 45px;
        }
        .auto-style43 {
            width: 503px;
            height: 45px;
        }
    </style>
</head>
<body style= "background-color:slategray">
    <form id="form1" runat="server">
        <div>
            <center><h1 margin:0 style="border: 5px solid #000000; margin: auto; padding: 9px; background-position: 5px; font-family: verdana, Geneva, Tahoma, sans-serif; background-color: #990033; font-size: 50px; color: #FFFFFF;" class="auto-style24">Add a new Student</h1>
            </center>
                <table  class="auto-style1">
                    <tr>
                        <td class="auto-style25" colspan="7">
                            
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
                                <StaticMenuItemStyle BorderColor="#CC0066" BorderStyle="Solid" BorderWidth="1px" HorizontalPadding="83px" />
                            </asp:Menu></td>
                    </tr>
                    <tr>
                        <td class="auto-style23" colspan="5"></td>
                        <td colspan="2" rowspan="9">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style22"></td>
                        <td class="auto-style39">
                            <asp:Label ID="Label_Firstname" runat="server" Text="Firstname" BorderColor="Black" Font-Bold="True" ForeColor="Black" Font-Names="Verdana" Font-Size="Larger"></asp:Label>
                        </td>
                        <td class="auto-style20" colspan="3">
                            <asp:TextBox ID="TB_Firstname" runat="server" CssClass="auto-style10" BackColor="#660033" BorderStyle="Solid" Font-Names="Verdana" ForeColor="White" BorderColor="#CC0066" Height="27px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22"></td>
                        <td class="auto-style39">
                            <asp:Label ID="Label2" runat="server" Text="Surname" Font-Bold="True" BorderColor="Black" Font-Names="Verdana" Font-Size="Larger"></asp:Label>
                        </td>
                        <td class="auto-style20" colspan="3">
                            <asp:TextBox ID="TB_Surname" runat="server" BorderStyle="Solid" BackColor="#660033" Font-Names="Verdana" ForeColor="White" BorderColor="#CC0066" Height="27px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style31"></td>
                        <td class="auto-style40">
                            <asp:Label ID="Label3" runat="server" Text="Age" Font-Bold="True" Font-Names="Verdana" Font-Size="Larger"></asp:Label>
                        </td>
                        <td class="auto-style34" colspan="3">
                            <asp:TextBox ID="TB_Age" runat="server" BorderStyle="Solid" BackColor="#660033" Font-Names="Verdana" ForeColor="White" BorderColor="#CC0066" Height="27px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style35"></td>
                        <td class="auto-style41">
                            <asp:Label ID="Label4" runat="server" Text="Date of Birth" Font-Bold="True" Font-Names="Verdana" CssClass="auto-style26" Font-Size="Larger" Height="39px" Width="221px"></asp:Label>
                        </td>
                        <td class="auto-style38" colspan="3">
                            <asp:TextBox ID="TB_DateOfBirth" runat="server" BorderStyle="Solid" BackColor="#660033" Font-Names="Verdana" ForeColor="White" BorderColor="#CC0066" Height="27px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22"></td>
                        <td class="auto-style39">
                            <asp:Label ID="Label5" runat="server" Text="Identity Number" Font-Bold="True" Font-Names="Verdana" Font-Size="Larger" Width="285px"></asp:Label>
                        </td>
                        <td class="auto-style20" colspan="3">
                            <asp:TextBox ID="TB_IdentityNumber" runat="server" BorderStyle="Solid"  BackColor="#660033" Font-Names="Verdana" ForeColor="White" BorderColor="#CC0066" Height="27px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22"></td>
                        <td class="auto-style39">
                            <asp:Label ID="Label6" runat="server" Text="Contact Number" Font-Bold="True" Font-Names="Verdana" Font-Size="Larger" Height="39px" Width="290px"></asp:Label>
                        </td>
                        <td class="auto-style20" colspan="3">
                            <asp:TextBox ID="TB_ContactNumber" runat="server" BorderStyle="Solid" Width="179px" BackColor="#660033" Font-Names="Verdana" ForeColor="White" BorderColor="#CC0066" Height="27px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22"></td>
                        <td class="auto-style39">
                            <asp:Label ID="Label7" runat="server" Text="E-Mail" Font-Bold="True" Font-Names="Verdana" Font-Size="Larger" Width="148px"></asp:Label>
                        </td>
                        <td class="auto-style20" colspan="3">
                            <asp:TextBox ID="TB_eMailAdress" runat="server" BorderStyle="Solid" BackColor="#660033" Font-Names="Verdana" ForeColor="White" BorderColor="#CC0066" Height="27px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22"></td>
                        <td class="auto-style39">
                            <asp:Label ID="Label8" runat="server" Text="Enabled" Font-Bold="True" Font-Names="Verdana" Font-Size="Larger"></asp:Label>
                        </td>
                        <td class="auto-style20" colspan="3">
                            <asp:CheckBox ID="CB_StudentEnabled" runat="server" Font-Bold="False" BorderStyle="None" Font-Names="Verdana" BackColor="#660033" BorderColor="#CC0066" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22">
                        </td>
                        <td class="auto-style39">
                        </td>
                        <td class="auto-style20" colspan="3">
                            <asp:Label ID="LB_Error" runat="server" Font-Names="Verdana" ForeColor="White" BackColor="#660033" BorderColor="#CC0066" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="auto-style21">
                            &nbsp;</td>
                        <td class="auto-style18">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style22">
                            &nbsp;</td>
                        <td class="auto-style39">
                            &nbsp;</td>
                        <td class="auto-style43">
                            <asp:Button ID="BN_Save" runat="server" Text="Save" BackColor="Maroon" BorderStyle="Solid" Font-Bold="True" Font-Names="Verdana" ForeColor="White" OnClick="BN_Save_Click" CssClass="auto-style10" Font-Size="Medium" Height="39px" Width="90px" BorderColor="Black" BorderWidth="3px" />
                            <asp:Button ID="BN_Undo" runat="server" Text="Undo" BackColor="Maroon" BorderStyle="Solid" Font-Bold="True" Font-Names="Verdana" ForeColor="White" OnClick="BN_Undo_Click" Font-Size="Medium" Height="39px" Width="90px" BorderColor="Black" BorderWidth="3px" />
                            <asp:Button ID="BN_Refresh" runat="server" Text="Refresh" BackColor="Maroon" BorderStyle="Solid" Font-Bold="True" Font-Names="Verdana" ForeColor="White" OnClick="BN_Refresh_Click" Font-Size="Medium" Height="39px" BorderColor="Black" BorderWidth="3px" />
                        </td>
                        <td class="auto-style42">
                            &nbsp;</td>
                        <td class="auto-style20">
                            &nbsp;</td>
                        <td class="auto-style21">
                            &nbsp;</td>
                        <td class="auto-style18">
                            &nbsp;</td>
                    </tr>
                </table>
        </div>
    </form>
</body>
</html>
