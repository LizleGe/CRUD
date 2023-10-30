<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateStudent.aspx.cs" Inherits="CRUD.UpdateStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style4 {
            width: 149px;
        }
        .auto-style5 {
            width: 231px;
        }
        .auto-style10 {
            width: 262px;
        }
        .auto-style11 {
            margin-left: 1px;
        }
        .auto-style16 {
            height: 177px;
        }
        .auto-style18 {
            width: 231px;
            height: 40px;
        }
        .auto-style19 {
            width: 262px;
            height: 40px;
        }
        .auto-style20 {
            height: 40px;
        }
        .auto-style21 {
            width: 506px;
        }
        .auto-style22 {
            width: 1474px;
            margin-left: 0px;
            margin-right: 0px;
        }
        .auto-style23 {
            width: 6px;
        }
        .auto-style24 {
            height: 177px;
            width: 6px;
        }
        .auto-style25 {
            height: 40px;
            width: 6px;
        }
    </style>
</head>
<body style="background-color: slategray">
    <form id="form1" runat="server">
         <div><center><h1 style="border: 5px solid #000000; padding: 9px; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: 50px; color: #FFFFFF; background-color: #990033; font-weight: bold; margin-top: auto; margin-bottom: auto;" class="auto-style22">Update a Student</h1>
             </center>
        </div>
         <table class="auto-style1">
             <tr>
                 <td colspan="5">
                            
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
                                <StaticMenuItemStyle BorderColor="#CC0099" BorderStyle="Solid" BorderWidth="1px" HorizontalPadding="81px" ItemSpacing="20px" />
                            </asp:Menu>
                            
                        </td>
             </tr>
             <tr>
                 <td colspan="5">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style23">
                     &nbsp;</td>
                 <td class="auto-style5">
                     <asp:Label ID="Label1" runat="server" Text="Select the Student" Font-Bold="True" Font-Names="Verdana" Font-Size="Larger" Font-Underline="True"></asp:Label>
                 </td>
                 <td class="auto-style10" colspan="2">
                     <asp:DropDownList ID="TableDropDown_Students" runat="server" CssClass="auto-style2" OnSelectedIndexChanged="TableDropDown_Students_SelectedIndexChanged" BackColor="#660033" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="White" AutoPostBack="True" Width="188px" Height="26px">
                     </asp:DropDownList>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style23">&nbsp;</td>
                 <td colspan="4">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style24">
                     </td>
                 <td class="auto-style16" colspan="4">
                     <asp:GridView ID="Grid_ShowStudents" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Verdana" BackColor="White" HorizontalAlign="Center" Width="254px">
                         <HeaderStyle BackColor="#660033" ForeColor="White" />
                     </asp:GridView>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style23">&nbsp;</td>
                 <td class="auto-style4" colspan="3">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style25">
                     </td>
                 <td class="auto-style18">
                     <asp:Label ID="Label2" runat="server" Text="Firstname" Font-Names="Verdana" Font-Bold="True" Font-Size="Larger"></asp:Label>
                 </td>
                 <td class="auto-style19" colspan="2">
                     <asp:TextBox ID="TB_Firstname" runat="server" BackColor="#660033" BorderStyle="Solid" CssClass="auto-style11" Font-Names="Verdana" ForeColor="White" BorderColor="#CC0066" Height="26px"></asp:TextBox>
                 </td>
                 <td class="auto-style20"></td>
             </tr>
             <tr>
                 <td class="auto-style25">
                     </td>
                 <td class="auto-style18">
                     <asp:Label ID="Label3" runat="server" Text="Surname" Font-Names="Verdana" Font-Bold="True" Font-Size="Larger"></asp:Label>
                 </td>
                 <td class="auto-style19" colspan="2">
                     <asp:TextBox ID="TB_Surname" runat="server" BackColor="#660033" BorderStyle="Solid" Font-Names="Verdana" ForeColor="White" BorderColor="#CC0066" Height="26px"></asp:TextBox>
                 </td>
                 <td class="auto-style20"></td>
             </tr>
             <tr>
                 <td class="auto-style25">
                     </td>
                 <td class="auto-style18">
                     <asp:Label ID="Label4" runat="server" Text="Age" Font-Names="Verdana" Font-Bold="True" Font-Size="Larger"></asp:Label>
                 </td>
                 <td class="auto-style19" colspan="2">
                     <asp:TextBox ID="TB_Age" runat="server" BorderStyle="Solid" BackColor="#660033" Font-Names="Verdana" ForeColor="White" BorderColor="#CC0066" Height="26px"></asp:TextBox>
                 </td>
                 <td class="auto-style20"></td>
             </tr>
             <tr>
                 <td class="auto-style25">
                     </td>
                 <td class="auto-style18">
                     <asp:Label ID="Label5" runat="server" Text="Date of Birth" Font-Names="Verdana" Font-Bold="True" Font-Size="Larger"></asp:Label>
                 </td>
                 <td class="auto-style19" colspan="2">
                     <asp:TextBox ID="TB_DateOfBirth" runat="server" BorderStyle="Solid" BackColor="#660033" Font-Names="Verdana" ForeColor="White" BorderColor="#CC0066" Height="26px"></asp:TextBox>
                 </td>
                 <td class="auto-style20"></td>
             </tr>
             <tr>
                 <td class="auto-style25">
                     </td>
                 <td class="auto-style18">
                     <asp:Label ID="Label6" runat="server" Text="RSA Identity Number" Font-Names="Verdana" Font-Bold="True" Font-Size="Larger" Width="359px"></asp:Label>
                 </td>
                 <td class="auto-style19" colspan="2">
                     <asp:TextBox ID="TB_IdentityNumber" runat="server" BorderStyle="Solid" BackColor="#660033" Font-Names="Verdana" ForeColor="White" BorderColor="#CC0066" Height="26px"></asp:TextBox>
                 </td>
                 <td class="auto-style20"></td>
             </tr>
             <tr>
                 <td class="auto-style25">
                     </td>
                 <td class="auto-style18">
                     <asp:Label ID="Label7" runat="server" Text="Contact Number" Font-Names="Verdana" Font-Bold="True" Font-Size="Larger" Width="283px"></asp:Label>
                 </td>
                 <td class="auto-style19" colspan="2">
                     <asp:TextBox ID="TB_ContactNumber" runat="server" BorderStyle="Solid" BackColor="#660033" Font-Names="Verdana" ForeColor="White" BorderColor="#CC0066" Height="26px"></asp:TextBox>
                 </td>
                 <td class="auto-style20"></td>
             </tr>
             <tr>
                 <td class="auto-style25">
                     </td>
                 <td class="auto-style18">
                     <asp:Label ID="Label8" runat="server" Text="E-Mail Adress" Font-Names="Verdana" Font-Bold="True" Font-Size="Larger" Width="292px"></asp:Label>
                 </td>
                 <td class="auto-style19" colspan="2">
                     <asp:TextBox ID="TB_eMailAdress" runat="server" BorderStyle="Solid" BackColor="#660033" Font-Names="Verdana" ForeColor="White" BorderColor="#CC0066" Height="26px"></asp:TextBox>
                 </td>
                 <td class="auto-style20"></td>
             </tr>
             <tr>
                 <td class="auto-style25">
                     </td>
                 <td class="auto-style18">
                     <asp:Label ID="Label9" runat="server" Text="Student Enabled" Font-Names="Verdana" Font-Bold="True" Font-Size="Larger" Width="304px"></asp:Label>
                 </td>
                 <td class="auto-style19" colspan="2">
                     <asp:CheckBox ID="CB_StudentEnabled" runat="server" Font-Names="Verdana" BackColor="#660033" BorderColor="#CC0066" ForeColor="White" />
                 </td>
                 <td class="auto-style20"></td>
             </tr>
             <tr>
                 <td class="auto-style23">&nbsp;</td>
                 <td class="auto-style5">&nbsp;</td>
                 <td class="auto-style10" colspan="2">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style23">&nbsp;</td>
                 <td class="auto-style5">&nbsp;</td>
                 <td class="auto-style10" colspan="2">
                     <asp:Label ID="LB_Error" runat="server" Font-Names="Verdana" BackColor="#660033" BorderColor="#CC0066" ForeColor="White" EnableTheming="True" Height="29px"></asp:Label>
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style23">&nbsp;</td>
                 <td class="auto-style5">&nbsp;</td>
                 <td class="auto-style21">
                     <asp:Button ID="BN_Refresh" runat="server" OnClick="BN_Refresh_Click" Text="Refresh" BackColor="#990033" Font-Bold="True" Font-Names="Verdana" ForeColor="White" Width="130px" Font-Size="Medium" Height="39px" BorderColor="Black" BorderWidth="3px" />
                     <asp:Button ID="BN_Undo" runat="server" OnClick="BN_Undo_Click" Text="Undo" BackColor="#990033" Font-Bold="True" Font-Names="Verdana" ForeColor="White" Font-Size="Medium" Height="39px" Width="90px" BorderColor="Black" BorderWidth="3px" />
                     <asp:Button ID="BN_Update" runat="server" OnClick="BN_Update_Click" Text="Update" BackColor="#990033" Font-Bold="True" Font-Names="Verdana" ForeColor="White" Width="130px" Font-Size="Medium" Height="39px" BorderColor="Black" BorderWidth="3px" />
                 </td>
                 <td class="auto-style10">
                     &nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
         </table>
    </form>
</body>
</html>
