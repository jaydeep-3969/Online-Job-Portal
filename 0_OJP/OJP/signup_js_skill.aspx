<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signup_js_skill.aspx.cs" Inherits="OJP.signup_js_skill" %>
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
                                 <h2 class="text-center text-info">Skills</h2>
                            </div>
                        <div class="panel-body">
                          
                   <%-- <div class="panel panel-default">
                        <div class="panel-body">--%>
           <form id="form1" runat="server" class="text-capitalize text-info">
              <div class=""> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Skill should not be empty or Skip" ControlToValidate="tb_skill" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></div>
            

                <div class="form-group">
                    <label class="text" for="tb_skill">Skill :</label>
                      <asp:TextBox ID="tb_skill" runat="server" CssClass="form-control" Rows="8" TextMode="MultiLine" MaxLength="1000"></asp:TextBox>
                    <small class="text-muted">(Max 1000 character)</small>    
                </div>
                <br />
                 <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="btn_submit_Click" Text="Submit &amp; Next" />
              
               <input id="Reset1" type="reset" class="btn btn-primary" value="Reset" />
             
              
                   
                <asp:HyperLink ID="hl_skip_project" runat="server" CssClass="btn btn-danger" NavigateUrl="~/signup_js_project.aspx">Skip</asp:HyperLink>
                 <asp:Button ID="btn_plus_skill" runat="server" CssClass="btn btn-warning pull-right" OnClick="btn_plus_skill_Click" Text="+" />
            </form>
                </div>
            </div>
        </div>
                        </div>
                   </div>
        </div>
    </div>
</asp:Content>


        <%-------------------------------------------------------------%>
 <%--       <div class="container">
            <div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Sign In</div>
                        <div style="float: right; font-size: 80%; position: relative; top: -10px"><a href="#">Forgot password?</a></div>
                    </div>

                    <div style="padding-top: 30px" class="panel-body">

                        <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                        <form id="loginform" class="form-horizontal" role="form">

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input id="login-username" type="text" class="form-control" name="username" value="" placeholder="username or email">
                            </div>

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input id="login-password" type="password" class="form-control" name="password" placeholder="password">
                            </div>



                            <div class="input-group">
                                <div class="checkbox">
                                    <label>
                                        <input id="login-remember" type="checkbox" name="remember" value="1">
                                        Remember me
                                    </label>
                                </div>
                            </div>


                            <div style="margin-top: 10px" class="form-group">
                                <!-- Button -->

                                <div class="col-sm-12 controls">
                                    <a id="btn-login" href="#" class="btn btn-success">Login  </a>
                                    <a id="btn-fblogin" href="#" class="btn btn-primary">Login with Facebook</a>

                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-md-12 control">
                                    <div style="border-top: 1px solid#888; padding-top: 15px; font-size: 85%">
                                        Don't have an account! 
                                        <a href="#" onclick="$('#loginbox').hide(); $('#signupbox').show()">Sign Up Here
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </form>



                    </div>
                </div>
            </div>

        </div>--%>
        <%----------------------------------------------------------------------------------%>


       <%-- <form id="form1" runat="server">

            <h2 style="text-align: center"><strong>Skills</strong></h2>
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td style="width: 406px">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="width: 241px">
                        <asp:Button ID="btn_plus_skill" runat="server" OnClick="btn_plus_skill_Click" Text="+" />
                    </td>
                    <td style="width: 159px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 406px">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="width: 241px">&nbsp;</td>
                    <td style="width: 159px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 406px">&nbsp;</td>
                    <td class="auto-style23">* Skill Description :</td>
                    <td>
                        <asp:TextBox ID="tb_skill" runat="server" CssClass="form-control" Rows="8" TextMode="MultiLine" MaxLength="1000"></asp:TextBox>
                    </td>
                    <td style="width: 241px">&nbsp;</td>
                    <td style="width: 159px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 406px">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>(Max 1000 character)</td>
                    <td style="width: 241px">&nbsp;</td>
                    <td style="width: 159px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 406px">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="width: 241px">&nbsp;</td>
                    <td style="width: 159px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 406px">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" Text="Submit &amp; Next" />
                        <input id="btn_reset" type="reset" value="Reset" /></td>
                    <td style="width: 241px">
                        <asp:HyperLink ID="hl_skip_project" runat="server" NavigateUrl="~/signup_js_project.aspx">Skip (To Project)</asp:HyperLink>
                    </td>
                    <td style="width: 159px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 406px">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="width: 241px">&nbsp;</td>
                    <td style="width: 159px">&nbsp;</td>
                </tr>
            </table>
        </form>--%>