<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signup_jp_credential.aspx.cs" Inherits="OJP.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">

    
    <div class="container-fluid">
        <div class="row">
            <div class="well">

                <div class="row ">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                               
                                <h2 class="text-center text-info">Credentials</h2>
                            </div>
                            <div class="panel-body">


                                <form id="form1" runat="server" class="text-capitalize text-info">

                                    <p class="text-danger">
                                        <asp:Label ID="lbl_error" runat="server"></asp:Label>
                                    </p>
                                    <div class="form-group">
                                        <%--     <asp:TextBox ID="tb_username" runat="server"></asp:TextBox> --%>
                                        <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" Username should not be empty" ControlToValidate="tb_username" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <p> 
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tb_username" Display="Dynamic" ErrorMessage="Username must be of 6-10 characters" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[a-zA-Z0-9]{6,10}$"></asp:RegularExpressionValidator>
                                        </p>
                                       
                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> Username :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_username" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(6-10 character)</small>
                                    </div>

                                    <div class="form-group">
                                        <%--     <asp:TextBox ID="tb_username" runat="server"></asp:TextBox> --%>
                                       <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password should not be empty" ControlToValidate="tb_password" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <p>  
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tb_password" Display="Dynamic" ErrorMessage="Password must be of 6-10 characters" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[a-zA-Z0-9]{6,10}$"></asp:RegularExpressionValidator>
                                        </p>
                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> Password :</label>
                                        <%--  --%>
                                        <asp:TextBox ID="tb_password" runat="server" TextMode="Password" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(6-10 character)</small>
                                    </div>

                                    <div class="form-group">
                                        <%--     <asp:TextBox ID="tb_username" runat="server"></asp:TextBox> --%>
                                        <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Confirm Password should not be empty" ControlToValidate="tb_confirm_password" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <p> 
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tb_password" ControlToValidate="tb_confirm_password" Display="Dynamic" ErrorMessage="Confirm password is not matching" ForeColor="Red"></asp:CompareValidator>
                                        </p>
                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> Confirm Password :</label>
                                        <%--  --%>
                                        <asp:TextBox ID="tb_confirm_password" runat="server" TextMode="Password" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(6-10 character)</small>
                                    </div>

                                    <div class="form-group">
                                        <%--     <asp:TextBox ID="tb_username" runat="server"></asp:TextBox> --%>
                                        <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Security Question should not be empty" ControlToValidate="tb_que" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> Security Question :</label>
                                        <%--  --%>
                                        <asp:TextBox ID="tb_que" runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 200 character)</small>
                                    </div>

                                    <div class="form-group">
                                        <%--     <asp:TextBox ID="tb_username" runat="server"></asp:TextBox> --%>
                                         <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Answer should not be empty" ControlToValidate="tb_ans" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> Answer :</label>
                                        <%--  --%>
                                        <asp:TextBox ID="tb_ans" runat="server" CssClass="form-control" MaxLength="1000"></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 1000 character)</small>
                                    </div>


                                    <br />
                                    <%-- 
                                         <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" Text="Submit &amp; Next" />
                                    --%>

                                    <asp:Button ID="btn_submit" runat="server" CssClass="btn btn-primary" OnClick="btn_submit_Click" Text="Submit &amp; Next" />

                                    <input id="Reset1" type="reset" class="btn btn-primary" value="Reset" />

                                    <%--    <asp:HyperLink ID="hl_skip_activity" runat="server" CssClass="btn btn-danger" NavigateUrl="~/signup_js_achievement.aspx">Skip</asp:HyperLink>
                                  
                                    <asp:Button ID="btn_plus_activity" runat="server" CssClass="btn btn-warning pull-right" OnClick="btn_plus_activity_Click" Text="+" />--%>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


<%--    <form runat="server">

        <h2 class="auto-style5" style="text-align: center"><strong>Credentials</strong></h2>
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td style="width: 436px">&nbsp;</td>
                                        <td class="auto-style3">
                                            <asp:Label ID="lbl_error" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style2" style="width: 304px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 436px">&nbsp;</td>
                                        <td>&nbsp;</td>

                                        <td class="auto-style4" style="width: 304px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 436px">&nbsp;</td>
                                        <td class="auto-style3">User Name :</td>
                                        <td class="auto-style2" style="width: 304px">
                                            <asp:TextBox ID="tb_unm" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 436px">&nbsp;</td>
                                        <td>&nbsp;</td>

                                        <td class="auto-style4" style="width: 304px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 436px">&nbsp;</td>
                                        <td class="auto-style3">Password :</td>
                                        <td class="auto-style2" style="width: 304px">
                                            <asp:TextBox ID="tb_pswd" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 436px">&nbsp;</td>
                                        <td>&nbsp;</td>

                                        <td class="auto-style4" style="width: 304px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 436px">&nbsp;</td>
                                        <td class="auto-style3">Confirm Password :</td>
                                        <td class="auto-style2" style="width: 304px">
                                            <asp:TextBox ID="tb_cnf_pswd" runat="server" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 436px">&nbsp;</td>
                                        <td>&nbsp;</td>

                                        <td class="auto-style4" style="width: 304px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 436px">&nbsp;</td>
                                        <td class="auto-style3">Security Que :</td>
                                        <td class="auto-style2" style="width: 304px">
                                            <asp:TextBox ID="tb_que" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 436px">&nbsp;</td>
                                        <td>&nbsp;</td>

                                        <td class="auto-style4" style="width: 304px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 436px">&nbsp;</td>
                                        <td class="auto-style3">Answer :</td>
                                        <td class="auto-style2" style="width: 304px">
                                            <asp:TextBox ID="tb_ans" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 436px">&nbsp;</td>
                                        <td>&nbsp;</td>

                                        <td class="auto-style4" style="width: 304px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 436px">&nbsp;</td>
                                        <td class="auto-style3">
                                            &nbsp;</td>
                                        <td class="auto-style2" style="width: 304px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 436px; text-align: right;">&nbsp;</td>
                                        <td class="auto-style3" style="text-align: right">
                                            <asp:Button ID="btn_submit" runat="server" Text="Submit &amp; Next" OnClick="btn_submit_Click1"  />
                                        </td>
                                        <td class="auto-style2" style="width: 304px">
                                            &nbsp;&nbsp;
                                            <input id="btn_reset" type="reset" value="Reset" />&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>


    </form>--%>
</asp:Content>
