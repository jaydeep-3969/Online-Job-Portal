<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signup_js_project.aspx.cs" Inherits="OJP.signup_js_project" %>
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
                               
                                <h2 class="text-center text-info">Projects</h2>
                            </div>
                            <div class="panel-body">


                                <form id="form1" runat="server" class="text-capitalize text-info">

                                 
                                    <div class="form-group">
                                        <%--     <asp:TextBox ID="tb_username" runat="server"></asp:TextBox>
                                            
                                             <asp:TextBox ID="tb_title" runat="server" Width="200px"></asp:TextBox>.
	
	<asp:TextBox ID="tb_desc" runat="server" Rows="5" TextMode="MultiLine" Width="200px"></asp:TextBox>
		 
		 
		  <asp:TextBox ID="tb_team_size" runat="server" Width="200px"></asp:TextBox>
		  
		  
		   <asp:TextBox ID="tb_role" runat="server" Width="200px"></asp:TextBox>
		   
		    <asp:TextBox ID="tb_duration" runat="server" Width="200px"></asp:TextBox>
                                            
                                            
                                            --%>
                                       <p> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Title should not be empty" ControlToValidate="tb_title" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> Title :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_title" runat="server" CssClass="form-control" MaxLength="40" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 40 character)</small>
                                    </div>




                                    
                                    <div class="form-group">
                                        <%--     <asp:TextBox ID="tb_username" runat="server"></asp:TextBox> --%>
                                         <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Description should not be empty" ControlToValidate="tb_desc" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_desc"><span class="text-danger">*</span> Description :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_desc" runat="server" CssClass="form-control" MaxLength="5000" Rows="5" TextMode="MultiLine" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 5000 character)</small>
                                    </div>



                                     
                                    <div class="form-group">
                                        <%--     <asp:TextBox ID="tb_username" runat="server"></asp:TextBox> --%>
                                         <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Team Size should not be empty" ControlToValidate="tb_team_size" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <p> 
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tb_team_size" Display="Dynamic" ErrorMessage="Team Size must be in Interger" ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                                        </p>
                                        <label class="text" for="tb_team_size"><span class="text-danger">*</span> Team Size :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_team_size" runat="server" CssClass="form-control" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(must be in integer formate)</small>
                                    </div>

                                     
                                    <div class="form-group">
                                        <%--     <asp:TextBox ID="tb_username" runat="server"></asp:TextBox> --%>
                                         <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Role should not be empty" ControlToValidate="tb_role" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> Role :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_role" runat="server" CssClass="form-control" MaxLength="50" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(E.g. Designer, Manager....)</small>
                                    </div>


                                     
                                    <div class="form-group">
                                        <%--     <asp:TextBox ID="tb_username" runat="server"></asp:TextBox> --%>
                                         <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Duration should not be empty" ControlToValidate="tb_duration" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> Duration :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_duration" runat="server" CssClass="form-control" MaxLength="50" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(e.g. 2 Month, 4 Days, 1 week ...)</small>
                                    </div>

                                    <%-- 
                                          <asp:Button ID="btn_submit" runat="server" Text="Submit &amp; Next" OnClick="btn_submit_Click" />
                                            <input id="btn_reset" __designer:mapid="4d4" type="reset" value="Reset" /></td>
                                        <td style="width: 162px">
                                            <asp:HyperLink ID="hl_skip_project" runat="server" NavigateUrl="~/signup_js_activity.aspx">Skip (To Activity)</asp:HyperLink>
                                        </td>
                                           <asp:Button ID="btn_plus_project" runat="server" OnClick="btn_plus_project_Click" style="width: 29px" Text="+ " />

                                        --%>

                                     <asp:Button ID="btn_submit" runat="server" CssClass="btn btn-primary" OnClick="btn_submit_Click" Text="Submit &amp; Next" />

                                    <input id="Reset1" type="reset" class="btn btn-primary" value="Reset" />
                                   
                                    <asp:HyperLink ID="hl_skip_project" runat="server" CssClass="btn btn-danger" NavigateUrl="~/signup_js_activity.aspx">Skip</asp:HyperLink>
                                  
                                    <asp:Button ID="btn_plus_project" runat="server" CssClass="btn btn-warning pull-right" OnClick="btn_plus_project_Click" Text="+" />


                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>







   <%-- <form runat="server">
         <h2 style="text-align: center"><strong>Projects</strong></h2>
                                <br />
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style53" style="width: 427px">&nbsp;</td>
                                        <td class="auto-style54" colspan="2">
                                            &nbsp;</td>
                                        <td class="auto-style54" colspan="2">&nbsp;</td>
                                        <td class="auto-style53" colspan="2">
                                            &nbsp;</td>
                                        <td class="auto-style53" style="width: 162px">
                                            <asp:Button ID="btn_plus_project" runat="server" OnClick="btn_plus_project_Click" style="width: 29px" Text="+ " />
                                        </td>
                                        <td class="auto-style53">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style53" style="width: 427px">&nbsp;</td>
                                        <td class="auto-style54" colspan="2">
                                            &nbsp;</td>
                                        <td class="auto-style54" colspan="2">&nbsp;</td>
                                        <td class="auto-style53" colspan="2">
                                            &nbsp;</td>
                                        <td class="auto-style53" style="width: 162px">&nbsp;</td>
                                        <td class="auto-style53">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style53" style="width: 427px"></td>
                                        <td class="auto-style54" colspan="2">
                                            <h4><strong>Project 1</strong></h4>
                                        </td>
                                        <td class="auto-style54" colspan="2">&nbsp;</td>
                                        <td class="auto-style53" colspan="2">
                                        </td>
                                        <td class="auto-style53" style="width: 162px"></td>
                                        <td class="auto-style53"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 427px">&nbsp;</td>
                                        <td class="auto-style23" colspan="2">&nbsp;</td>
                                        <td class="auto-style23" colspan="2">&nbsp;</td>
                                        <td colspan="2">&nbsp;</td>
                                        <td style="width: 162px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18" style="width: 427px"></td>
                                        <td class="auto-style38" colspan="2">* Title :</td>
                                        <td class="auto-style38" colspan="2">&nbsp;</td>
                                        <td class="auto-style18" colspan="2">
                                            <asp:TextBox ID="tb_title" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18" style="width: 162px"></td>
                                        <td class="auto-style18"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 427px">&nbsp;</td>
                                        <td class="auto-style23" colspan="2">&nbsp;</td>
                                        <td class="auto-style23" colspan="2">&nbsp;</td>
                                        <td colspan="2">(max 100 char)</td>
                                        <td style="width: 162px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 427px">&nbsp;</td>
                                        <td class="auto-style23" colspan="2">* Description :</td>
                                        <td class="auto-style23" colspan="2">&nbsp;</td>
                                        <td colspan="2">
                                            <asp:TextBox ID="tb_desc" runat="server" Rows="5" TextMode="MultiLine" Width="200px"></asp:TextBox>
                                        </td>
                                        <td style="width: 162px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 427px">&nbsp;</td>
                                        <td class="auto-style23" colspan="2">&nbsp;</td>
                                        <td class="auto-style23" colspan="2">&nbsp;</td>
                                        <td colspan="2">(max 2000 char)</td>
                                        <td style="width: 162px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18" style="width: 427px"></td>
                                        <td class="auto-style38" colspan="2">* Team Size :</td>
                                        <td class="auto-style38" colspan="2">&nbsp;</td>
                                        <td class="auto-style18" colspan="2">
                                            <asp:TextBox ID="tb_team_size" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18" style="width: 162px"></td>
                                        <td class="auto-style18"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 427px">&nbsp;</td>
                                        <td class="auto-style23" colspan="2">&nbsp;</td>
                                        <td class="auto-style23" colspan="2">&nbsp;</td>
                                        <td colspan="2">(Integer value)</td>
                                        <td style="width: 162px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18" style="width: 427px"></td>
                                        <td class="auto-style38" colspan="2">&nbsp;* Role :</td>
                                        <td class="auto-style38" colspan="2">&nbsp;</td>
                                        <td class="auto-style18" colspan="2">
                                            <asp:TextBox ID="tb_role" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18" style="width: 162px"></td>
                                        <td class="auto-style18"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 427px">&nbsp;</td>
                                        <td class="auto-style23" colspan="2">&nbsp;</td>
                                        <td class="auto-style23" colspan="2">&nbsp;</td>
                                        <td colspan="2">(e.g.&nbsp; admin, designer, manager)</td>
                                        <td style="width: 162px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 427px">&nbsp;</td>
                                        <td class="auto-style23" colspan="2">* Duration :</td>
                                        <td class="auto-style23" colspan="2">&nbsp;</td>
                                        <td colspan="2">
                                            <asp:TextBox ID="tb_duration" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                        <td style="width: 162px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12" style="width: 427px"></td>
                                        <td class="auto-style55" colspan="2"></td>
                                        <td class="auto-style55" colspan="2">&nbsp;</td>
                                        <td class="auto-style12" colspan="2">(e.g. 2 month, 1 week, 5 day)</td>
                                        <td class="auto-style12" style="width: 162px"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12" style="width: 427px"></td>
                                        <td colspan="2"></td>
                                        <td class="auto-style12" colspan="5">&nbsp;</td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 427px">&nbsp;</td>
                                        <td class="auto-style23" colspan="2">&nbsp;</td>
                                        <td class="auto-style23" colspan="2">&nbsp;</td>
                                        <td colspan="2">&nbsp;</td>
                                        <td style="width: 162px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 427px; text-align: right;">&nbsp;</td>
                                        <td>
                                            
       <asp:Panel ID="pnl_project" runat="server">
                                            </asp:Panel>
                                        </td>
                                        <td colspan="2">
                                            &nbsp;</td>
                                        <td colspan="2">
                                            &nbsp;</td>
                                        <td>
                                            <asp:Button ID="btn_submit" runat="server" Text="Submit &amp; Next" OnClick="btn_submit_Click" />
                                            <input id="btn_reset" __designer:mapid="4d4" type="reset" value="Reset" /></td>
                                        <td style="width: 162px">
                                            <asp:HyperLink ID="hl_skip_project" runat="server" NavigateUrl="~/signup_js_activity.aspx">Skip (To Activity)</asp:HyperLink>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 427px">&nbsp;</td>
                                        <td class="auto-style23" colspan="2">&nbsp;</td>
                                        <td class="auto-style23" colspan="2">&nbsp;</td>
                                        <td colspan="2">&nbsp;</td>
                                        <td style="width: 162px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
    </form>--%>
</asp:Content>

