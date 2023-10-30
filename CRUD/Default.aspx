<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUD._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div style = "font-size: x-large" align = "center"> CRUD All IN ONE
        <br />

            <table class="nav-justified">
                <tr>
                    <td style="width: 142px">&nbsp;</td>
                    <td class="modal-sm" style="width: 384px">Select Student</td>
                    <td class="modal-sm" style="width: 255px">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Name</asp:ListItem>
                            <asp:ListItem>Surname</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="modal-sm" style="width: 76px">&nbsp;</td>
                    <td style="width: 48px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 142px">&nbsp;</td>
                    <td class="modal-sm" style="width: 384px">Firstname</td>
                    <td class="modal-sm" style="width: 255px">
                        <asp:TextBox ID="Firstname" runat="server" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td class="modal-sm" style="width: 76px">&nbsp;</td>
                    <td style="width: 48px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 142px">&nbsp;</td>
                    <td class="modal-sm" style="width: 384px">Surname</td>
                    <td class="modal-sm" style="width: 255px">
                        <asp:TextBox ID="Surname" runat="server" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td class="modal-sm" style="width: 76px">&nbsp;</td>
                    <td style="width: 48px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 142px">&nbsp;</td>
                    <td class="modal-sm" style="width: 384px">Age</td>
                    <td class="modal-sm" style="width: 255px">
                        <asp:TextBox ID="Age" runat="server" Font-Size="Medium" Width="181px"></asp:TextBox>
                    </td>
                    <td class="modal-sm" style="width: 76px">&nbsp;</td>
                    <td style="width: 48px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 142px">&nbsp;</td>
                    <td class="modal-sm" style="width: 384px">DOB</td>
                    <td class="modal-sm" style="width: 255px">
                        <asp:TextBox ID="DOB" runat="server" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td class="modal-sm" style="width: 76px">&nbsp;</td>
                    <td style="width: 48px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 142px">&nbsp;</td>
                    <td class="modal-sm" style="width: 384px">ID Number</td>
                    <td class="modal-sm" style="width: 255px">
                        <asp:TextBox ID="ID_Number" runat="server" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td class="modal-sm" style="width: 76px">&nbsp;</td>
                    <td style="width: 48px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 142px">&nbsp;</td>
                    <td class="modal-sm" style="width: 384px">Contact Number</td>
                    <td class="modal-sm" style="width: 255px">
                        <asp:TextBox ID="ContactNumber" runat="server" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td class="modal-sm" style="width: 76px">&nbsp;</td>
                    <td style="width: 48px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 142px">&nbsp;</td>
                    <td class="modal-sm" style="width: 384px">E-Mail</td>
                    <td class="modal-sm" style="width: 255px">
                        <asp:TextBox ID="E_Mail" runat="server" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td class="modal-sm" style="width: 76px">&nbsp;</td>
                    <td style="width: 48px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 142px">&nbsp;</td>
                    <td class="modal-sm" style="width: 384px">&nbsp;</td>
                    <td class="modal-sm" style="width: 255px">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />
                    </td>
                    <td class="modal-sm" style="width: 76px">
                        &nbsp;</td>
                    <td style="width: 48px">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 142px">&nbsp;</td>
                    <td class="modal-sm" style="width: 384px">&nbsp;</td>
                    <td class="modal-sm" style="width: 255px">
                        <asp:GridView ID="GridView1" runat="server" Width="470px">
                        </asp:GridView>
                    </td>
                    <td class="modal-sm" style="width: 76px">&nbsp;</td>
                    <td style="width: 48px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </div> 

</asp:Content>
