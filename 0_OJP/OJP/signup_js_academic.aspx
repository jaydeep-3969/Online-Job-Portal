<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signup_js_academic.aspx.cs" Inherits="OJP.signup_js_academic" %>
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
                               
                                <h2 class="text-center text-info">Academic Details</h2>
                            </div>
                            <div class="panel-body">


                                <form id="form1" runat="server" class="text-capitalize text-info">

                                 
                                    <div class="form-group">
                                        <%--  
                                            --%>
                                     
                                       <p> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Institue Name should not be empty" ControlToValidate="tb_institute_academic" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_institute_academic"><span class="text-danger">*</span> Institute Name :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_institute_academic" runat="server" CssClass="form-control" MaxLength="40" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 40 charcter)</small></div>

                                       <p> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Degree should not be empty" ControlToValidate="tb_degree" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_degree"><span class="text-danger">*</span> Degree :</label>
                                    
                                        <%--  --%>
                                        <asp:TextBox ID="tb_degree" runat="server" CssClass="form-control" MaxLength="40" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 40 character)<br />
                                    </small>
                                 


                                   
                                       &nbsp;<p> 
                                        <label class="text" for="tb_last"><span class="text-danger">*</span> Mark Type :</label>

                                        <%--  --%>
                                       								
	 <asp:RadioButtonList ID="rblist_mark_type" runat="server">
                                                <asp:ListItem Value="1" Selected>Percentage (Base 100)</asp:ListItem>
                                                <asp:ListItem Value="0">CPI (Base 10)</asp:ListItem>
                                            </asp:RadioButtonList>
                                        <%--  --%>
                                        <small class="text-muted">(Max 40 character)</small>
                                    

                                            
                                       <p> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Mark should not be empty" ControlToValidate="tb_mark" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                    <p> 
                                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="tb_mark" Display="Dynamic" ErrorMessage="Invalid Mark Format" ForeColor="Red" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
                                    </p>
                                        <label class="text" for="tb_mark"><span class="text-danger">*</span> Mark :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_mark" runat="server" CssClass="form-control" MaxLength="5" ></asp:TextBox>
                                        <%--  --%>
                                        &nbsp;<p> <p> 
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tb_pr" Display="Dynamic" ErrorMessage="Invalid PR Format" ForeColor="Red" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
                                    </p>
                                        <label class="text" for="tb_pr"><span class="text-danger">*</span> PR (Percentile Rank) :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_pr" runat="server" CssClass="form-control" MaxLength="5" ></asp:TextBox>
                                        <%--  --%>
                                        &nbsp;<p> <p> &nbsp;</p>
                                        <label class="text" for="tb_branch"><span class="text-danger"></span> Branch :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_branch" runat="server" CssClass="form-control" MaxLength="40" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 40 character)</small>
                                    

                                    
                                     <p> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Passing Year should not be empty" ControlToValidate="tb_passing_year" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                    <p> 
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tb_passing_year" Display="Dynamic" ErrorMessage="Invalid Year" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]{4}$"></asp:RegularExpressionValidator>
                                    </p>
                                        <label class="text" for="tb_passing_year"><span class="text-danger">*</span> Passing Year :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_passing_year" runat="server" CssClass="form-control" MaxLength="4" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(ex. 2017)</small><br />
                 <asp:Button ID="btn_submit" runat="server" CssClass="btn btn-primary" OnClick="btn_submit_Click" Text="Submit &amp; Next" />
              
               <input id="Reset1" type="reset" class="btn btn-primary" value="Reset" />
             
              
                   
                <asp:HyperLink ID="hl_skip_academic" runat="server" CssClass="btn btn-danger" NavigateUrl="~/signup_js_skill.aspx">Skip</asp:HyperLink>
                 <asp:Button ID="btn_plus_skill" runat="server" CssClass="btn btn-warning pull-right" OnClick="btn_plus_activity_Click" Text="+" />
            </form>

                                 <%--   <   <asp:Button ID="btn_plus_academic" runat="server" Height="29px" OnClick="btn_plus_activity_Click" Text="+ " Width="66px" /> --%>

                        
                           
                                
                            </div>
                        </div>
                    </div>
                </div>
     </div>
        </div>
    

   <%-- <form runat="server">
         <h2 style="text-align: center"><strong>Academic</strong></h2>
                                <br />
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td style="width: 438px">&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td style="width: 123px">
                    888                        <asp:Button ID="btn_plus_academic" runat="server" Height="29px" OnClick="btn_plus_activity_Click" Text="+ " Width="66px" />
                                        </td>
                                        <td style="width: 203px">(Save &amp; Add New Academic Detail)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 438px; height: 26px;"></td>
                                        <td class="auto-style50" style="height: 26px"></td>
                                        <td style="height: 26px">
                                            </td>
                                        <td style="width: 123px; height: 26px"></td>
                                        <td style="width: 203px; height: 26px"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 438px">&nbsp;</td>
                                        <td class="auto-style50">* Institute Name :</td>
                                        <td>
                   8888                         <asp:TextBox ID="tb_institute_academic" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="width: 123px">&nbsp;</td>
                                        <td style="width: 203px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 438px">&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>(max 200 char)</td>
                                        <td style="width: 123px">&nbsp;</td>
                                        <td style="width: 203px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 438px">&nbsp;</td>
           888                             <td class="auto-style50">* Degree :</td>
                                        <td>
                                            <asp:TextBox ID="tb_degree" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="width: 123px">&nbsp;</td>
                                        <td style="width: 203px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12" style="width: 438px"></td>
                                        <td class="auto-style22"></td>
                                        <td class="auto-style12">(max 100 char)</td>
                                        <td class="auto-style12" style="width: 123px"></td>
                                        <td class="auto-style12" style="width: 203px"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 438px">&nbsp;</td>
                                        <td class="auto-style50">* Mark Type :</td>
                                        <td>
             888                               <asp:RadioButtonList ID="rblist_mark_type" runat="server">
                                                <asp:ListItem Value="1">Percentage (Base 100)</asp:ListItem>
                                                <asp:ListItem Value="0">CPI (Base 10)</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td style="width: 123px">&nbsp;</td>
                                        <td style="width: 203px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 438px">&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td style="width: 123px">&nbsp;</td>
                                        <td style="width: 203px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18" style="width: 438px"></td>
                                        <td class="auto-style40">* Mark :</td>
                                        <td class="auto-style18">
           8888                                 <asp:TextBox ID="tb_mark" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18" style="width: 123px"></td>
                                        <td class="auto-style18" style="width: 203px"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 438px">&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td style="width: 123px">&nbsp;</td>
                                        <td style="width: 203px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18" style="width: 438px"></td>
                                        <td class="auto-style40">PR(if contain) :</td>
                                        <td class="auto-style18">
            8888                                <asp:TextBox ID="tb_pr" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18" style="width: 123px"></td>
                                        <td class="auto-style18" style="width: 203px"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 438px">&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>(percentile rank, out of 99.99)</td>
                                        <td style="width: 123px">&nbsp;</td>
                                        <td style="width: 203px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 438px">&nbsp;</td>
                                        <td class="auto-style50">* Branch :</td>
                                        <td>
        88888                                    <asp:TextBox ID="tb_branch" runat="server" Width="168px"></asp:TextBox>
                                        </td>
                                        <td style="width: 123px">&nbsp;</td>
                                        <td style="width: 203px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 438px">&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td style="width: 123px">&nbsp;</td>
                                        <td style="width: 203px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 438px">&nbsp;</td>
                                        <td class="auto-style50">* Passing Year :</td>
                                        <td>
      88888                                      <asp:TextBox ID="tb_passing_year" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="width: 123px">&nbsp;</td>
                                        <td style="width: 203px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 438px">&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td style="width: 123px">&nbsp;</td>
                                        <td style="width: 203px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12" style="width: 438px"></td>
                                        <td class="auto-style22"></td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12" style="width: 123px"></td>
                                        <td class="auto-style12" style="width: 203px"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12" style="width: 438px; text-align: right;">&nbsp;</td>
                                        <td class="auto-style22" style="text-align: right">
                88888                            <asp:Button ID="btn_submit" runat="server" Text="Submit &amp; Next" OnClick="btn_submit_Click" />
                                        </td>
                                        <td class="auto-style12">
                                           
              8888                              <input id="btn_reset" type="reset" value="Reset" /></td>
                                        <td class="auto-style12" style="width: 123px">
                     8888                       <asp:HyperLink ID="hl_skip_academic" runat="server" NavigateUrl="~/signup_js_skill.aspx">Skip (To Skill)</asp:HyperLink>
                                        </td>
                                        <td class="auto-style12" style="width: 203px"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 438px">&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td style="width: 123px">&nbsp;</td>
                                        <td style="width: 203px">&nbsp;</td>
                                    </tr>
                                    </table>
    </form>--%>
</asp:Content>
