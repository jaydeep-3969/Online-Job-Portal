<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OJP.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="menu" runat="server">
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">


        <div class="container-fluid">  
            <p class="text-danger">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
           <asp:Label ID="lbl_error" runat="server" style="font-size: large"></asp:Label>
                 </strong>&nbsp;</p>
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Sign In</div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [accept_not]"></asp:SqlDataSource>
                        <form id="loginform" class="form-horizontal" role="form" runat="server">
                                    
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i> </span>
                                           <asp:TextBox ID="tb_username" runat="server" CssClass="form-control" MaxLength="10" Placeholder="Username" OnTextChanged="TextBox1_TextChanged" ToolTip="Enter Username here" style="left: 0px; top: 0px"></asp:TextBox>                                     
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i> </span>
                                        <asp:TextBox ID="tb_password" runat="server" MaxLength="10" CssClass="form-control" Placeholder="Password" TextMode="Password" ToolTip="Enter password here"></asp:TextBox>
                                    </div>
                                    


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-12 controls">
                                          <asp:Button ID="login" CssClass="btn btn-success" runat="server" Text="Login" OnClick="login_Click" />
                                        <input id="Reset1" type="reset" class="btn btn-primary" value="Reset" />
            <%-- <asp:Button ID="Button1" runat="server" Text="Login" OnClick="login_Click" />--%>
                             <asp:HyperLink ID="lnk_forgot_pswd" runat="server" ClientIDMode="Predictable" CssClass="btn btn-warning btn-sm pull-right" NavigateUrl="forgot_pswd.aspx">Forgot Password?</asp:HyperLink>
                                        <hr/>
                                        <div class="text-danger" style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            Don't have an account! 
                                            <br />Sign Up as :  
                                            &nbsp&nbsp&nbsp

                                                     <asp:Button ID="btn_js" runat="server" CssClass="btn btn-default" Text="Job Seeker" OnClick="btn_js_Click" />
                                                 <asp:Button ID="btn_jp" runat="server" CssClass="btn btn-default" Text="Job Provider" OnClick="btn_jp_Click" />
                                      
                                        </div>
                                    </div>
                                </div>    
                            </form>     



                        </div>                     
                    </div>  
        </div>
            </div>




</asp:Content>




<%--    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Username :</td>
                <td>
         00000000000000           <asp:TextBox ID="tb_username" runat="server" MaxLength="8" OnTextChanged="TextBox1_TextChanged" ToolTip="Enter Username here"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Password :</td>
                <td>
         0000000000000000           <asp:TextBox ID="tb_password" runat="server" MaxLength="8" TextMode="Password" ToolTip="Enter password here"></asp:TextBox>
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="text-center">
            0000000000000000        <asp:Button ID="login" runat="server" Text="Login" OnClick="login_Click" />
                </td>
                <td id="reset">
            0000000000000000000        <input id="Reset1" type="reset" value="Reset" /></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;&nbsp;
           0000000000000000000         <asp:HyperLink ID="lnk_forgot_pswd" runat="server" ClientIDMode="Predictable" NavigateUrl="forgot_pswd.aspx">Forgot Password?</asp:HyperLink>
                </td>
                <td>
           0000000000000000         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [accept_not]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="text-right">Signup as :&nbsp;&nbsp;
                    &nbsp;&nbsp; &nbsp;
                </td>
                <td>
              000000000000000000      <asp:Button ID="btn_js" runat="server" Text="Job Seeker" OnClick="btn_js_Click" />
&nbsp;&nbsp; OR&nbsp;
              00000000000000000      <asp:Button ID="btn_jp" runat="server" Text="Job Provider" OnClick="btn_jp_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           <%-- <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Current Online Users :</td>
                <td>
               000000000000000     <asp:Label ID="lbl_online_users" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Total Available Jobs :</td>
                <td>
               000000000000     <asp:Label ID="lbl_total_jobs" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Total JobProviders :</td>
                <td>
           0000000000000000         <asp:Label ID="lbl_total_jp" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Total Job Seekers :</td>
                <td>
      00000000000000000000              <asp:Label ID="lbl_total_js" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>--%>
      <%--  </table>
    </form> --%> 