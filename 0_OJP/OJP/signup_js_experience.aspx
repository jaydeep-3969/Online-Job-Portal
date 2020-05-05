<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signup_js_experience.aspx.cs" Inherits="OJP.signup_js_experience" %>
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
              


                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                 <h2 class="text-center text-info">Experiences</h2>
                            </div>
                            <div class="panel-body">




                                <form id="form1" runat="server" class="text-capitalize text-info">

                                      <div class="form-group">
                                        <%--       <td class="auto-style29">* Insitute/Company Name :</td>
                                        <td colspan="3">
                                            <asp:TextBox ID="tb_institute_company" runat="server"></asp:TextBox> --%>

                                       <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Institute/Company Name should not be empty" ControlToValidate="tb_institute_company" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> Insitute/Company Name :</label>
                                        <%--  --%>
                                        <asp:TextBox ID="tb_institute_company" runat="server" CssClass="form-control" MaxLength="50" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 50 character)</small>
                                    </div>



                                  <div class="form-group">
                                        <%--    
                                               <td class="auto-style29">* Designation :</td>
                                        <td colspan="3">
                                            <asp:TextBox ID="tb_designation" runat="server"></asp:TextBox>
                                            --%>
                                        <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Designation should not be empty" ControlToValidate="tb_designation" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                       
                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> Designation :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_designation" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 50 character)</small>
                                    </div>



                                       <div class="form-group">
                                        <%--   
                                            
                                            <td class="auto-style29">* Currently Working ? </td>
                                        <td colspan="3">
                                            <asp:RadioButtonList ID="rblist_is_working" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblist_is_working_SelectedIndexChanged">
                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                <asp:ListItem Value="0">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                            
                                            <asp:TextBox ID="tb_username" runat="server"></asp:TextBox> --%>
                                       
                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> Currently Working ? :</label>

                                        <%--  --%>
                                           <div class="form-group">
                                         <asp:RadioButtonList ID="rblist_is_working" runat="server" CssClass="form-control-static"  AutoPostBack="True" OnSelectedIndexChanged="rblist_is_working_SelectedIndexChanged">
                                                <asp:ListItem Value="1" Selected>Yes</asp:ListItem>
                                                <asp:ListItem Value="0">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                               </div>
                                          
                                        <%--  --%>
                                        </div>
                                      <div class="form-group">
                                        <%--     

                                            --%>
                                           <p> <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Date Should Be less than current date" ControlToValidate="cld_exp_from" Display="Dynamic" ForeColor="Red" Operator="LessThan" SetFocusOnError="True" Type="Date" ValueToCompare="09/11/2017"></asp:CompareValidator></p>
                                       
                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> From :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="cld_exp_from" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                        <%--  --%>
                                        </div>


                                    
                                       <div class="form-group">
                                        <%--     

                                            --%>
                                       <p>
                                           <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="'To' date should be after 'From' Date" ControlToCompare="cld_exp_from" ControlToValidate="cld_exp_to" ForeColor="Red" Operator="GreaterThan" Type="Date" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator></p>
                                           <p>
                                               <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Date Should Be less than current date" ControlToValidate="cld_exp_to" Display="Dynamic" ForeColor="Red" Operator="LessThan" SetFocusOnError="True" ValueToCompare="9/11/2017"></asp:CompareValidator> &nbsp;</p>
                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> To :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="cld_exp_to" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Only if Currently not working)</small>
                                    </div>



                                    <%-- 
                                        
                                        --%>

                                    <div class="form-group">
                                        <%--  
                                             <tr>
                                        <td class="auto-style51" style="width: 366px">&nbsp;</td>
                                        <td class="auto-style29">Achievements During Work :</td>
                                        <td colspan="3">
                                            <asp:TextBox ID="tb_achievement_work" runat="server" Height="167px" Rows="5" TextMode="MultiLine" Width="282px" ></asp:TextBox>
                                        </td>
                                        <td style="width: 77px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                            --%>

                                        <label class="text" for="tb_activity">Achievements During Work  :</label>
                                        <%--  --%>
                                        <asp:TextBox ID="tb_achievement_work" runat="server" CssClass="form-control" Rows="8" TextMode="MultiLine" MaxLength="1000"></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 1000 character)</small>
                                    </div>
                                    <br />
                                    <%-- 
                                          <asp:Button ID="btn_plus_activity" runat="server" Height="29px" OnClick="btn_plus_activity_Click" Text="+" />
                                        
                                        <asp:Button ID="btn_submit" runat="server" Text="Submit &amp; Next" OnClick="btn_submit_Click1" />
                                           
                                            <input id="btn_reset" type="reset" value="Reset" /></td>
                                        
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/signup_js_preferences.aspx">Skip(To Prefernces)</asp:HyperLink>
                                        
                                        --%>
                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="btn_submit_Click1" Text="Submit &amp; Next" />

                                    <input id="Reset1" type="reset" class="btn btn-primary" value="Reset" />
                                   
                                    <asp:HyperLink ID="hl_skip_activity" runat="server" CssClass="btn btn-danger" NavigateUrl="~/signup_js_achievement.aspx">Skip</asp:HyperLink>
                                  
                                    <asp:Button ID="btn_plus_activity" runat="server" CssClass="btn btn-warning pull-right" OnClick="btn_plus_activity_Click" Text="+" />

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <%--<form runat="server">
         <h2 class="auto-style37" style="text-align: center">Experience</h2>
                                <br />
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style51" style="width: 366px">&nbsp;</td>
                                        <td class="auto-style29">&nbsp;</td>
                                        <td colspan="3">
                                            &nbsp;</td>
                                        <td style="width: 77px">
                                            <asp:Button ID="btn_plus_activity" runat="server" Height="29px" OnClick="btn_plus_activity_Click" Text="+" />
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51" style="width: 366px">&nbsp;</td>
                                        <td class="auto-style29">&nbsp;</td>
                                        <td colspan="3">
                                            &nbsp;</td>
                                        <td style="width: 77px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51" style="width: 366px">&nbsp;</td>
                                        <td class="auto-style29">* Insitute/Company Name :</td>
                                        <td colspan="3">
                                            <asp:TextBox ID="tb_institute_company" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="width: 77px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51" style="width: 366px">&nbsp;</td>
                                        <td class="auto-style29">&nbsp;</td>
                                        <td colspan="3">&nbsp;</td>
                                        <td style="width: 77px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51" style="width: 366px">&nbsp;</td>
                                        <td class="auto-style29">* Designation :</td>
                                        <td colspan="3">
                                            <asp:TextBox ID="tb_designation" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="width: 77px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51" style="width: 366px">&nbsp;</td>
                                        <td class="auto-style29">&nbsp;</td>
                                        <td colspan="3">&nbsp;</td>
                                        <td style="width: 77px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51" style="width: 366px">&nbsp;</td>
                                        <td class="auto-style29">* Currently Working ? </td>
                                        <td colspan="3">
                                            <asp:RadioButtonList ID="rblist_is_working" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblist_is_working_SelectedIndexChanged">
                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                <asp:ListItem Value="0">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td style="width: 77px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51" style="width: 366px">&nbsp;</td>
                                        <td class="auto-style29">&nbsp;</td>
                                        <td colspan="3">&nbsp;</td>
                                        <td style="width: 77px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51" style="width: 366px">&nbsp;</td>
                                        <td class="auto-style29">* From :</td>
                                        <td colspan="3">
                                            <asp:Calendar ID="cld_exp_from" runat="server"></asp:Calendar>
                                        </td>
                                        <td style="width: 77px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51" style="width: 366px">&nbsp;</td>
                                        <td class="auto-style29">&nbsp;</td>
                                        <td colspan="3">&nbsp;</td>
                                        <td style="width: 77px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style52" style="width: 366px"></td>
                                        <td class="auto-style30">&nbsp;To :</td>
                                        <td class="auto-style12" colspan="3">
                                            <asp:Calendar ID="cld_exp_to" runat="server"></asp:Calendar>
                                        </td>
                                        <td class="auto-style12" style="width: 77px">&nbsp;</td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51" style="width: 366px">&nbsp;</td>
                                        <td class="auto-style29">&nbsp;</td>
                                        <td colspan="3">(not require for current working institute)</td>
                                        <td style="width: 77px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51" style="width: 366px">&nbsp;</td>
                                        <td class="auto-style29">Achievements During Work :</td>
                                        <td colspan="3">
                                            <asp:TextBox ID="tb_achievement_work" runat="server" Height="167px" Rows="5" TextMode="MultiLine" Width="282px" ></asp:TextBox>
                                        </td>
                                        <td style="width: 77px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style52" style="width: 366px"></td>
                                        <td class="auto-style30"></td>
                                        <td class="auto-style12" colspan="3">&nbsp;</td>
                                        <td class="auto-style12" style="width: 77px"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style52" style="width: 366px">&nbsp;</td>
                                        <td class="auto-style30">&nbsp;</td>
                                        <td class="auto-style12" colspan="3">&nbsp;</td>
                                        <td class="auto-style12" style="width: 77px">&nbsp;</td>
                                        <td class="auto-style12">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style52" style="width: 366px">&nbsp;</td>
                                        <td class="auto-style30">&nbsp;</td>
                                        <td class="auto-style12" colspan="3">&nbsp;</td>
                                        <td class="auto-style12" style="width: 77px">&nbsp;</td>
                                        <td class="auto-style12">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51" style="width: 366px">&nbsp;</td>
                                        <td class="auto-style29">&nbsp;</td>
                                        <td>
                                            <asp:Button ID="btn_submit" runat="server" Text="Submit &amp; Next" OnClick="btn_submit_Click1" />
                                            &nbsp;
                                            <input id="btn_reset" type="reset" value="Reset" /></td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td style="width: 77px">
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/signup_js_preferences.aspx">Skip(To Prefernces)</asp:HyperLink>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51" style="width: 366px">&nbsp;</td>
                                        <td class="auto-style29">&nbsp;</td>
                                        <td colspan="3">&nbsp;</td>
                                        <td style="width: 77px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
    </form>--%>
</asp:Content>
