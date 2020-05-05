<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signup_jp_company.aspx.cs" Inherits="OJP.signup_js_company" %>
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
                               
                                <h2 class="text-center text-info">Company Details</h2>
                            </div>
                            <div class="panel-body" style="text-align: left">


                                <form id="form1" runat="server" class="text-capitalize text-info">

                
      <p> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Company Name should not be empty" ControlToValidate="tb_cmp_name" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_cmp_name"><span class="text-danger">*</span> Company Name :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_cmp_name" runat="server" CssClass="form-control" MaxLength="40" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 40 character)</small>


      <p> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Industry should not be empty" ControlToValidate="tb_industry" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_industry"><span class="text-danger">*</span> Industry :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_industry" runat="server" CssClass="form-control" MaxLength="40" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 40 character)</small>


      <p> 
                                    <p> 
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tb_founded_on" Display="Dynamic" ErrorMessage="Invalid Year" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]{4}$"></asp:RegularExpressionValidator>
                                        <p> 
                                            <label class="text" for="tb_founded_on"><span class="text-danger">*</span> Founded On :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_founded_on" runat="server" CssClass="form-control" MaxLength="40" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Ex.2017)</small>
        

      <p> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Website URL should not be empty" ControlToValidate="tb_website" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_website"><span class="text-danger">*</span> Website URL :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_website" runat="server" CssClass="form-control" MaxLength="40" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 40 character)</small>

    
      <p> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Size In Employee should not be empty" ControlToValidate="tb_size" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                    <p> 
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tb_size" Display="Dynamic" ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer">Invalid format of Size in Employee</asp:CompareValidator>
                                    </p>
                                        <label class="tb_size" for="tb_city"><span class="text-danger">*</span> Size In Employee :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_size" runat="server" CssClass="form-control" MaxLength="40" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted"></small>

    
      <p> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Description should not be empty" ControlToValidate="tb_description" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_description"><span class="text-danger">*</span> Description of Company :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_description" runat="server" CssClass="form-control" MaxLength="2000" Rows="5" TextMode="MultiLine" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 2000 character)</small>



                                      <p> 
                                        <label class="text" for="tb_street"><span class="text-danger"></span> Street :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_street" runat="server" CssClass="form-control" MaxLength="40" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 40 character)</small>
                                   



      <p> 
                                        <label class="text" for="tb_landmark"><span class="text-danger"></span> Landmark :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_landmark" runat="server" CssClass="form-control" MaxLength="40" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 40 character)</small>
                                 




      <p> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="City should not be empty" ControlToValidate="tb_city" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_city"><span class="text-danger">*</span> City :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_city" runat="server" CssClass="form-control" MaxLength="15" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 15 character)</small>
                                   

                                          <p> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="State should not be empty" ControlToValidate="tb_state" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_state"><span class="text-danger">*</span> State :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_state" runat="server" CssClass="form-control" MaxLength="15" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 15 character)</small>


      <p> <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Pincode should not be empty" ControlToValidate="tb_pincode" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                    <p> 
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_pincode" Display="Dynamic" ErrorMessage="Invalid Pincode" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]{6}$"></asp:RegularExpressionValidator>
                                    </p>
                                        <label class="text" for="tb_pincode"><span class="text-danger">*</span> Pincode :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_pincode" runat="server" CssClass="form-control" MaxLength="40" ></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 40 character)</small>

                            

      <p> <p> &nbsp;</p>
                                        <label class="text" for="tb_activity">&nbsp;Profile Photo :</label>

                                        <%--  --%>
                                 <asp:FileUpload ID="fu_profile_pic" runat="server" />
                                        <%--  --%>
                                        <small class="text-muted">(Max 40 character)</small>


                              
                    
                                    <br />
                                    <br />


                              
                    
                                    <asp:Button ID="btn_submit" runat="server" CssClass="btn btn-primary" OnClick="btn_submit_Click" Text="Submit &amp; Next" />

                                    <input id="Reset1" type="reset" class="btn btn-primary" value="Reset" />


                            </form>
                                </div>
                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        



   <%-- <form runat="server">
        <h2 class="auto-style5" style="text-align: center">Company Details</h2>
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">&nbsp;</td>
                                        <td style="width: 314px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="height: 29px; width: 459px"></td>
                                        <td class="auto-style7" style="height: 29px">Founded On :</td>
                                        <td style="height: 29px; width: 314px">
                                            <asp:TextBox ID="tb_founded_on" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="height: 29px"></td>
                                        <td style="height: 29px"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">Company Name :</td>
                                        <td style="width: 314px">
                                            <asp:TextBox ID="tb_cmp_name" runat="server" ></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">&nbsp;</td>
                                        <td style="width: 314px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">Industry :</td>
                                        <td style="width: 314px">
                                            <asp:TextBox ID="tb_industry" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">Website URL :</td>
                                        <td style="width: 314px">
                                            <asp:TextBox ID="tb_website" runat="server" ></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">&nbsp;</td>
                                        <td style="width: 314px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">&nbsp;</td>
                                        <td style="width: 314px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">Size In Emp :</td>
                                        <td style="width: 314px">
                                            <asp:TextBox ID="tb_size" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">&nbsp;</td>
                                        <td style="width: 314px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">Description :</td>
                                        <td style="width: 314px">
                                            <asp:TextBox ID="tb_description" runat="server" MaxLength="5000"  Rows="5" TextMode="MultiLine" Width="162px"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">&nbsp;</td>
                                        <td style="width: 314px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">Street :</td>
                                        <td style="width: 314px">
                                            <asp:TextBox ID="tb_street" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">&nbsp;</td>
                                        <td style="width: 314px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px"></td>
                                        <td class="auto-style7">City :</td>
                                        <td style="width: 314px">
                                            <asp:TextBox ID="tb_city" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">&nbsp;</td>
                                        <td style="width: 314px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px"></td>
                                        <td class="auto-style7">Landmark :</td>
                                        <td style="width: 314px">
                                            <asp:TextBox ID="tb_landmark" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">&nbsp;</td>
                                        <td style="width: 314px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">State :</td>
                                        <td style="width: 314px">
                                            <asp:TextBox ID="tb_state" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">&nbsp;</td>
                                        <td style="width: 314px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">Pincode :</td>
                                        <td style="width: 314px">
                                            <asp:TextBox ID="tb_pincode" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">&nbsp;</td>
                                        <td style="width: 314px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">Profile Photo:</td>
                                        <td style="width: 314px">
                                            <asp:FileUpload ID="fu_profile_pic" runat="server" />
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">&nbsp;</td>
                                        <td style="width: 314px">
                                            &nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">&nbsp;</td>
                                        <td style="width: 314px">
                                            &nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px; text-align: right;">&nbsp;</td>
                                        <td class="auto-style7" style="text-align: right">
                                            <asp:Button ID="btn_submit" runat="server" Text="Submit &amp; Next" OnClick="btn_submit_Click" />
                                        </td>
                                        <td style="width: 314px">
                                            <input id="btn_reset" type="reset" value="Reset" /></td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 459px">&nbsp;</td>
                                        <td class="auto-style7">&nbsp;</td>
                                        <td style="width: 314px">
                                            &nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
    </form>--%>
</asp:Content>
