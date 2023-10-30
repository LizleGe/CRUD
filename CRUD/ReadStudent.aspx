<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReadStudent.aspx.cs" Inherits="CRUD.ReadStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 1476px;
            margin-left: 0px;
        }
        .auto-style4 {
            width: 101%;
        }
        .auto-style5 {
            width: 1144px;
        }
        .auto-style6 {
            width: 3294px;
        }
        </style>
</head>
<body style="background-color: slategray; margin-left: 15px;">
    <form id="form1" runat="server">
        <div><center> <h1 style="border: 5px solid #000000; background-position: center; padding: 9px; margin: auto; font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: 50px; background-color: #990033; color: #FFFFFF; font-weight: bold; " class="auto-style3">List of Students</h1></center>
            
            <table class="auto-style4">
                <tr>
                    <td colspan="2">    
                            
                        <asp:Menu ID="Menu1" runat="server" BackColor="#660066" BorderColor="Black" BorderStyle="Solid" ForeColor="White" Orientation="Horizontal" Font-Bold="True" Font-Names="Verdana" BorderWidth="3px">
                                <DynamicHoverStyle BorderColor="#CC0066" BorderStyle="Solid" BorderWidth="1px" />
                                <DynamicMenuItemStyle HorizontalPadding="60px" />
                                <DynamicSelectedStyle HorizontalPadding="60px" />
                                <Items>
                                    <asp:MenuItem NavigateUrl="~/CreateStudent.aspx" Text="Create Student" Value="Create Student"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/ReadStudent.aspx" Text="Read Student" Value="Read Student"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/UpdateStudent.aspx" Text="Update Student" Value="Update Student"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/DeleteStudent.aspx" Text="Delete Student" Value="Delete Student"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/CRUD_All_In_One.aspx" Text="Crud All-In-One" Value="Crud All-In-One"></asp:MenuItem>
                                </Items>
                                <StaticMenuItemStyle BorderColor="#CC0099" BorderStyle="Solid" BorderWidth="1px" HorizontalPadding="82px" ItemSpacing="21px" />
                            </asp:Menu>
                            
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                     <asp:Label ID="Label1" runat="server" Text="Select the Student" Font-Bold="True" Font-Names="Verdana" Font-Size="Larger" Font-Underline="True" Width="315px"></asp:Label>
                        <asp:DropDownList ID="TableDropDown_Students" runat="server" AutoPostBack="True" BackColor="#660033" Font-Size="Medium" ForeColor="White" OnSelectedIndexChanged="TableDropDown_Students_SelectedIndexChanged" Font-Names="Verdana" Height="26px" Width="188px">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                     <asp:GridView ID="Grid_ShowStudents" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Verdana" BackColor="White" ForeColor="Black" HorizontalAlign="Center" Width="254px">
                         <EditRowStyle BackColor="White" ForeColor="Black" />
                         <HeaderStyle BackColor="#660033" ForeColor="White" />
                     </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
