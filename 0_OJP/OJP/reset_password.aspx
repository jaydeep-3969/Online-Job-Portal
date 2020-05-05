<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="reset_password.aspx.cs" Inherits="OJP.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid"><div class="row">
    <form id="form1" runat="server">
        <div class="page-header">
                        <h3 class="text-primary ">
                        Reset Password
                             </h3></div>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password should not be empty" ControlToValidate="tb_password" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;
        
            <br />
            <table class="nav-justified">
                <tr>
                    <td colspan="2">  
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tb_password" Display="Dynamic" ErrorMessage="Password must be of 6-10 characters" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[a-zA-Z0-9]{6,10}$"></asp:RegularExpressionValidator>
                                        </td>
                </tr>
                <tr>
                    <td style="width: 156px">Enter New Password :</td>
                    <td>
                        <asp:TextBox ID="tb_password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 156px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2"> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Confirm Password should not be empty" ControlToValidate="tb_cnf_password" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td colspan="2"> 
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tb_password" ControlToValidate="tb_cnf_password" Display="Dynamic" ErrorMessage="Confirm password is not matching" ForeColor="Red"></asp:CompareValidator>
                                        </td>
                </tr>
                <tr>
                    <td style="width: 156px">Confirm New Password :</td>
                    <td>
                        <asp:TextBox ID="tb_cnf_password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 156px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 156px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_submit" CssClass="btn btn-primary"  runat="server" OnClick="tb_submit_Click" Text="Submit" />
                        &nbsp;</td>
                    <td>&nbsp;&nbsp;
                        <input id="Reset1" type="reset" Class="btn btn-primary"  value="Reset" />&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 156px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        
    </form>
        </div>
          </div>
</asp:Content>
