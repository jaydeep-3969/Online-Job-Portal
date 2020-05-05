<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signup_js_personal.aspx.cs" Inherits="OJP.signup_js_personal" %>
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
                               
                                <h2 class="text-center text-info">Personal Details</h2>
                            </div>
                            <div class="panel-body">


                                <form id="form1" runat="server" class="text-capitalize text-info">

                                 
                                    <div class="form-group">
                                        <%--  --%>
                                     
                                       <p> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name should not be empty" ControlToValidate="tb_first" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_first"><span class="text-danger">*</span> First Name :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_first" runat="server" CssClass="form-control" MaxLength="40" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 40 character)</small>
                                    </div>

                                       <div class="form-group">
                                       <p> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Middle Name should not be empty" ControlToValidate="tb_middle" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_middle"><span class="text-danger">*</span> Middle Name :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_middle" runat="server" CssClass="form-control" MaxLength="40" ></asp:TextBox>
                                           <%--  --%>
                                        <small class="text-muted">(Max 40 character)</small>
                                    </div>


                                      <div class="form-group">
                                       <p> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Last Name should not be empty" ControlToValidate="tb_last" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_last"><span class="text-danger">*</span> Last Name :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_last" runat="server" CssClass="form-control" MaxLength="40" ></asp:TextBox>
                                          <%--  --%>
                                        <small class="text-muted">(Max 40 character)</small>
                                    </div>

                                    <div class="form-group">
                                       <p> 
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tb_mobile" Display="Dynamic" ErrorMessage="Invalid Mobile Number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[7-9]{1}[0-9]{9}$"></asp:RegularExpressionValidator>
                                <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Mobile Number should not be empty" ControlToValidate="tb_mobile" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_mobile"><span class="text-danger">*</span> Mobile :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_mobile" runat="server" CssClass="form-control" MaxLength="10" ></asp:TextBox>
                                        <%--  --%>
                                    </div>

                                         <div class="form-group">  
                                 <p> &nbsp;<small class="text-muted">(in 10 digit)</small>    
                                     (<small class="text-muted">ex: 9876543210)</small> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Email should not be empty" ControlToValidate="tb_email" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                    <p>  
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="tb_email" Display="Dynamic" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                             </p>
                                        <label class="text" for="tb_email"><span class="text-danger">*</span> Email :</label>

                                             <%-- 
                                          <asp:Button ID="btn_submit" runat="server" Text="Submit &amp; Next" OnClick="btn_submit_Click" />
                                            <input id="btn_reset" __designer:mapid="4d4" type="reset" value="Reset" /></td>
                                        <td style="width: 162px">
                                            <asp:HyperLink ID="hl_skip_project" runat="server" NavigateUrl="~/signup_js_activity.aspx">Skip (To Activity)</asp:HyperLink>
                                        </td>
                                           <asp:Button ID="btn_plus_project" runat="server" OnClick="btn_plus_project_Click" style="width: 29px" Text="+ " />

                                        --%>
                                        <asp:TextBox ID="tb_email" runat="server" CssClass="form-control" MaxLength="200" ></asp:TextBox>
                                             <%-- <asp:HyperLink ID="hl_skip_project" runat="server" CssClass="btn btn-danger" NavigateUrl="~/signup_js_activity.aspx">Skip</asp:HyperLink>--%>
                                    </div>

                                       <div class="form-group">
                                 <p> 
                                     <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Birth Date Exeed Today's date" ControlToValidate="cld_dob" Display="Dynamic" ForeColor="Red" Operator="LessThan" SetFocusOnError="True" Type="Date" ValueToCompare="09/11/2017"></asp:CompareValidator>
                <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Birthdate should not be empty" ControlToValidate="cld_dob" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="cld_birthdate"><span class="text-danger">*</span> Birth Date :</label>
                                           <br />
                                           <asp:TextBox ID="cld_dob" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                    </div>


                                       <div class="form-group">
                                 <p> <p> &nbsp;</p>
                                        <label class="text" for="rdlist_gender"><span class="text-danger">*</span> Gender :</label>

                                        <%--  --%>
                                         <asp:RadioButtonList ID="rdlist_gender" runat="server" >
                                                <asp:ListItem Value="0" Selected>Male</asp:ListItem>
                                                <asp:ListItem Value="1">Female</asp:ListItem>
                                            </asp:RadioButtonList>
                                           <%--  --%>
                                        &nbsp;</div>



                                       <div class="form-group">
                                      <p> <p> &nbsp;</p>
                                        <label class="text" for="tb_street">Street :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_street" runat="server" CssClass="form-control" MaxLength="40" ></asp:TextBox>
                                           <%--  --%>
                                        <small class="text-muted">(Max 40 character)</small>
                                    </div>



        <div class="form-group">
                                        <label class="text" for="tb_landmark">&nbsp;Landmark :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_landmark" runat="server" CssClass="form-control" MaxLength="40" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 40 character)</small>
                                 </div>



             <div class="form-group">
      <p> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="City should not be empty" ControlToValidate="tb_city" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_city">&nbsp;<label class="text" for="tb_state"><span class="text-danger">*</span></label>

                                        City :</label>

                                        <%-- 
                                          <asp:Button ID="btn_submit" runat="server" Text="Submit &amp; Next" OnClick="btn_submit_Click" />
                                            <input id="btn_reset" __designer:mapid="4d4" type="reset" value="Reset" /></td>
                                        <td style="width: 162px">
                                            <asp:HyperLink ID="hl_skip_project" runat="server" NavigateUrl="~/signup_js_activity.aspx">Skip (To Activity)</asp:HyperLink>
                                        </td>
                                           <asp:Button ID="btn_plus_project" runat="server" OnClick="btn_plus_project_Click" style="width: 29px" Text="+ " />

                                        --%>
                                        <asp:TextBox ID="tb_city" runat="server" CssClass="form-control" MaxLength="15" ></asp:TextBox>
                 <%-- <asp:HyperLink ID="hl_skip_project" runat="server" CssClass="btn btn-danger" NavigateUrl="~/signup_js_activity.aspx">Skip</asp:HyperLink>--%>
                                        <small class="text-muted">(Max 15 character)</small>
                                   
                 </div>
                                     <div class="form-group">
                                          <p> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="State should not be empty" ControlToValidate="tb_state" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_state"><span class="text-danger">*</span> State :</label>

                                        <%-- <asp:Button ID="btn_plus_project" runat="server" CssClass="btn btn-warning pull-right" OnClick="btn_plus_project_Click" Text="+" />--%>
                                        <asp:TextBox ID="tb_state" runat="server" CssClass="form-control" MaxLength="15" ></asp:TextBox>
                                          <%-- <form runat="server">
          <h2 style="text-align: center"><strong>Personal Details</strong></h2>
                                <p>
                                    &nbsp;</p>
                                <table class="auto-style1">
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* Full Name :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_first" runat="server" ToolTip="First Name"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_middle" runat="server" ToolTip="Middle Name"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_last" runat="server" ToolTip="Last Name"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">( (first + middle + last) Name)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18" style="width: 439px"></td>
                                        <td class="auto-style19">* Mobile No :</td>
                                        <td class="auto-style20">
                                            <asp:TextBox ID="tb_mobile" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18"></td>
                                        <td class="auto-style18"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* Email :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* Gender :</td>
                                        <td class="auto-style17">
                                            <asp:RadioButtonList ID="rdlist_gender" runat="server" >
                                                <asp:ListItem Value="0">Male</asp:ListItem>
                                                <asp:ListItem Value="1">Female</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* City :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_city" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* State :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_state" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* Pincode :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_pincode" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* Street :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_street" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">(with block no and society info)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* Landmark :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_landmark" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">(famous place around address)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* Status :</td>
                                        <td class="auto-style17">
                                            <asp:RadioButtonList ID="rblist_status" runat="server" OnSelectedIndexChanged="rblist_status_SelectedIndexChanged" >
                                                <asp:ListItem Value="0">Employee</asp:ListItem>
                                                <asp:ListItem Value="1">Fresher</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* Birth Date :</td>
                                        <td class="auto-style17">
                                            <asp:Calendar ID="cld_birthdate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" OnDayRender="cld_birthdate_DayRender">
                                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                                <NextPrevStyle VerticalAlign="Bottom" />
                                                <OtherMonthDayStyle ForeColor="Gray" />
                                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                                <SelectorStyle BackColor="#CCCCCC" />
                                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                                <WeekendDayStyle BackColor="#FFFFCC" />
                                            </asp:Calendar>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">Profile Photo :</td>
                                        <td class="auto-style17">
                                            <asp:FileUpload ID="fu_profile_js" runat="server" />
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                  
                                 
                                 
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px; text-align: right;">&nbsp;</td>
                                        <td class="auto-style16" style="text-align: right">
                                            <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" Text="Submit &amp; Next" />
                                        </td>
                                        <td class="auto-style17">
                                            <input id="btn_reset"  type="reset" value="Reset" /></td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                         
                                </table>
    </form>-
       
       --%>
                                        <small class="text-muted">(Max 15 character)</small>
                 </div>
                                
          
                            <div class="form-group">
                                <p>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tb_pincode" Display="Dynamic" ErrorMessage="Invalid Pincode" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]{6}$"></asp:RegularExpressionValidator>
                                </p>
                                <p>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Pincode should not be empty" ControlToValidate="tb_pincode" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </p>
                                <label class="text" for="tb_pincode">&nbsp;<label class="text" for="tb_state"><span class="text-danger">*</span></label> Pincode :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_pincode" runat="server" CssClass="form-control" MaxLength="6" ></asp:TextBox>
                                        <%--  --%>
                                        &nbsp;</div>
                         <div class="form-group">
                   
      
                                        <label class="text" for="rblist_status">&nbsp;<label class="text" for="tb_state"><span class="text-danger">*</span></label>

                                        Status :</label>

                                        <%--  --%>
                                        <asp:RadioButtonList ID="rblist_status" runat="server" OnSelectedIndexChanged="rblist_status_SelectedIndexChanged" >
                                                <asp:ListItem Value="0" Selected>Employee</asp:ListItem>
                                                <asp:ListItem Value="1">Fresher</asp:ListItem>
                                            </asp:RadioButtonList>
                                        <%--  --%>
                           </div>


     
                                    <div class="form-group">
                                        <label class="text" for="tb_activity">&nbsp;&nbsp; Profile Photo :</label>

                                        <%--  --%>
                                      <asp:FileUpload ID="fu_profile_js"  runat="server" />
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
                                   
                                   <%-- <asp:HyperLink ID="hl_skip_project" runat="server" CssClass="btn btn-danger" NavigateUrl="~/signup_js_activity.aspx">Skip</asp:HyperLink>--%>
                                  
                                   <%-- <asp:Button ID="btn_plus_project" runat="server" CssClass="btn btn-warning pull-right" OnClick="btn_plus_project_Click" Text="+" />--%>


                               
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
      </div>
        </div>
    
   </asp:Content>



   <%-- <form runat="server">
          <h2 style="text-align: center"><strong>Personal Details</strong></h2>
                                <p>
                                    &nbsp;</p>
                                <table class="auto-style1">
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* Full Name :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_first" runat="server" ToolTip="First Name"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_middle" runat="server" ToolTip="Middle Name"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_last" runat="server" ToolTip="Last Name"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">( (first + middle + last) Name)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18" style="width: 439px"></td>
                                        <td class="auto-style19">* Mobile No :</td>
                                        <td class="auto-style20">
                                            <asp:TextBox ID="tb_mobile" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18"></td>
                                        <td class="auto-style18"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* Email :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* Gender :</td>
                                        <td class="auto-style17">
                                            <asp:RadioButtonList ID="rdlist_gender" runat="server" >
                                                <asp:ListItem Value="0">Male</asp:ListItem>
                                                <asp:ListItem Value="1">Female</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* City :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_city" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* State :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_state" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* Pincode :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_pincode" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* Street :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_street" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">(with block no and society info)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* Landmark :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_landmark" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">(famous place around address)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* Status :</td>
                                        <td class="auto-style17">
                                            <asp:RadioButtonList ID="rblist_status" runat="server" OnSelectedIndexChanged="rblist_status_SelectedIndexChanged" >
                                                <asp:ListItem Value="0">Employee</asp:ListItem>
                                                <asp:ListItem Value="1">Fresher</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">* Birth Date :</td>
                                        <td class="auto-style17">
                                            <asp:Calendar ID="cld_birthdate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" OnDayRender="cld_birthdate_DayRender">
                                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                                <NextPrevStyle VerticalAlign="Bottom" />
                                                <OtherMonthDayStyle ForeColor="Gray" />
                                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                                <SelectorStyle BackColor="#CCCCCC" />
                                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                                <WeekendDayStyle BackColor="#FFFFCC" />
                                            </asp:Calendar>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">Profile Photo :</td>
                                        <td class="auto-style17">
                                            <asp:FileUpload ID="fu_profile_js" runat="server" />
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                  
                                 
                                 
                                    <tr>
                                        <td style="width: 439px">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 439px; text-align: right;">&nbsp;</td>
                                        <td class="auto-style16" style="text-align: right">
                                            <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" Text="Submit &amp; Next" />
                                        </td>
                                        <td class="auto-style17">
                                            <input id="btn_reset"  type="reset" value="Reset" /></td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                         
                                </table>
    </form>-
       
       --%>

