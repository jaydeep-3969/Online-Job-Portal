<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="forgot_pswd.aspx.cs" Inherits="OJP.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="menu" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body_title" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
      <div class="container-fluid"><div class="row">

    <form id="form1" runat="server">
        <div class="page-header">
                        <h3 class="text-primary ">
                        Forgot Password
                             </h3></div>
        <table class="nav-justified">
            
            <tr>
                <td>&nbsp;</td>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
           <p class="text-danger"><asp:Label ID="lbl_error" runat="server" style="font-size: large"></asp:Label></p>
                 </strong>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            
            <tr>
                <td>&nbsp;</td>
                <td style="width: 265px">&nbsp;</td>
                <td class="modal-sm" style="width: 381px">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            
            <tr>
                <td>&nbsp;</td>
                <td style="width: 265px"><h4 class="text-primary">Username : </h4></td>
                <td class="modal-sm" style="width: 381px">
                    <asp:TextBox ID="tb_username" runat="server" Width="182px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 265px">&nbsp;</td>
                <td class="modal-sm" style="width: 381px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 265px">&nbsp;</td>
                <td class="modal-sm" style="width: 381px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 265px"><h4 class="text-primary">Security Question :</h4></td>
                <td class="modal-sm" style="width: 381px">
                    <asp:TextBox ID="tb_sec" runat="server" Rows="3" TextMode="MultiLine" Width="578px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 265px">&nbsp;</td>
                <td class="modal-sm" style="width: 381px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 265px"><h4 class="text-primary">Answer :</h4> </td>
                <td class="modal-sm" style="width: 381px">
                    <asp:TextBox ID="tb_ans" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 265px">&nbsp;</td>
                <td class="modal-sm" style="width: 381px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="text-left" style="width: 265px">&nbsp;</td>
                <td class="modal-sm" style="width: 381px; text-align: left">
                    <asp:Button ID="btn_submit" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btn_submit_Click" />
                    &nbsp;&nbsp;
                    <input id="btn_reset" type="reset" Class="btn btn-primary" value="Reset" /></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 265px">&nbsp;</td>
                <td class="modal-sm" style="width: 381px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
           </div>
          </div>
</asp:Content>