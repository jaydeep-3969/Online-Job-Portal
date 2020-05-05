<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signup_js_credential.aspx.cs" Inherits="OJP.signup_js_credential" %>
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
                                        <td class="auto-style12" style="width: 319px"></td>
                                        <td class="auto-style14" style="width: 286px">
                                            <asp:Label ID="lbl_error" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style48"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 319px">&nbsp;</td>

                                        <td class="auto-style15" style="width: 286px">&nbsp;</td>

                                        <td class="auto-style49">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 319px">&nbsp;</td>
                                        <td class="auto-style15" style="width: 286px">* User Name :</td>
                                        <td class="auto-style49">
                                            <asp:TextBox ID="tb_username" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_username" ErrorMessage="* Username should not empty"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12" style="width: 319px"></td>

                                        <td class="auto-style14" style="width: 286px"></td>

                                        <td class="auto-style48">(min 6 char &amp; only [a-z][A-Z][0-9][ _ ]&nbsp; allowed)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 319px">&nbsp;</td>
                                        <td class="auto-style15" style="width: 286px">* Password :</td>
                                        <td class="auto-style49">
                                            <asp:TextBox ID="tb_password" runat="server" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_password" ErrorMessage="* Password should not empty"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
    --
                                        <td class="auto-style56" style="width: 319px"></td>

                                        <td class="auto-style57" style="width: 286px"></td>

                                        <td class="auto-style58">(min 6 char &amp; only [a-z][A-Z][0-9][ any special char ]&nbsp; allowed)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 319px">&nbsp;</td>
                                        <td class="auto-style15" style="width: 286px">* Confirm Password :</td>
                                        <td class="auto-style49">
      --                                      <asp:TextBox ID="tb_confirm_password" runat="server" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_confirm_password" ErrorMessage="* Password should not empty"></asp:RequiredFieldValidator>
                                            <br />
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tb_password" ControlToValidate="tb_confirm_password" ErrorMessage="* Password not matched"></asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12" style="width: 319px"></td>

                                        <td class="auto-style14" style="width: 286px"></td>

                                        <td class="auto-style48"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18" style="width: 319px"></td>
                                        <td class="auto-style44" style="width: 286px">* Security Que :</td>
                                        <td class="auto-style45">
                                            <asp:TextBox ID="tb_que" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_que" ErrorMessage="* Security Question should not empty"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12" style="width: 319px"></td>

                                        <td class="auto-style14" style="width: 286px"></td>

                                        <td class="auto-style48">(max 200 char allowed)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 319px">&nbsp;</td>
                                        <td class="auto-style15" style="width: 286px">* Answer :</td>
                                        <td class="auto-style49">
                                            <asp:TextBox ID="tb_ans" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_ans" ErrorMessage="* Answer should not empty"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 319px">&nbsp;</td>

                                        <td class="auto-style15" style="width: 286px">&nbsp;</td>

                                        <td class="auto-style49">(max 50 char allowed)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 319px">&nbsp;</td>
                                        <td class="auto-style15" style="width: 286px">&nbsp;</td>
                                        <td class="auto-style49">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 319px">&nbsp;</td>
                                        <td class="auto-style15" style="width: 286px">&nbsp;</td>
                                        <td class="auto-style49">(* Form submition will be at end *)</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 319px">&nbsp;</td>
                                        <td class="auto-style15" style="width: 286px">&nbsp;</td>
                                        <td class="auto-style49">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 319px">&nbsp;</td>
                                        <td class="auto-style15" style="width: 286px">&nbsp;</td>
                                        <td class="auto-style49">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 319px; text-align: right;">&nbsp;</td>
                                        <td class="auto-style15" style="width: 286px; text-align: right;">
                                            <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" Text="Submit &amp; Next" />
                                        </td>
                                        <td class="auto-style49">
                                            <input id="btn_reset" __designer:mapid="4d4" type="reset" value="Reset" /></td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 319px">&nbsp;</td>
                                        <td class="auto-style15" style="width: 286px">&nbsp;</td>
                                        <td class="auto-style49">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
    </form>--%>
</asp:Content>
