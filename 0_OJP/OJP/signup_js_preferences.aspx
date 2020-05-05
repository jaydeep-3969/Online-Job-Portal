<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signup_js_preferences.aspx.cs" Inherits="OJP.signup_js_preferences" %>
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

                                <h2 class="text-center text-info">Preferences</h2>
                            </div>
                            <div class="panel-body">


                                <form id="form1" runat="server" class="text-capitalize text-info">

                                    <p class="text-danger">
                                        &nbsp;</p>
                                    <div class="form-group">
                                        <%--     <asp:TextBox ID="tb_username" runat="server"></asp:TextBox> --%>


                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> Industry-1 :</label>

                                        <asp:DropDownList ID="dd_ind1" runat="server" DataSourceID="SqlDataIndustrySource" CssClass="form-control" DataTextField="industry" DataValueField="industry">
                                        </asp:DropDownList>
                                    </div>


                                    <div class="form-group">
                                        <%--  --%>


                                        <label class="text" for="tb_activity"><span class="text-danger">*</span>  Industry-2 :</label>

                                        <%--     <asp:TextBox ID="tb_username" runat="server"></asp:TextBox> --%>

                                        <asp:DropDownList ID="dd_ind2" runat="server" DataSourceID="SqlDataIndustrySource" CssClass="form-control" DataTextField="industry" DataValueField="industry">
                                        </asp:DropDownList>
                                        &nbsp;<label class="text" for="tb_activity"><span class="text-danger">*</span> Industry-3 :</label>
                                        <asp:DropDownList ID="dd_ind3" runat="server" DataSourceID="SqlDataIndustrySource" CssClass="form-control" DataTextField="industry" DataValueField="industry">
                                        </asp:DropDownList>
                                    </div>

                                    <div class="form-group">
                                        <%--  --%>


                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> Location-1 :</label>

                                        <%--     <asp:TextBox ID="tb_username" runat="server"></asp:TextBox> --%>
                                        <asp:DropDownList ID="dd_loc1" runat="server" DataSourceID="SqlDataDesignationSource" CssClass="form-control" DataTextField="designation" DataValueField="designation">
                                        </asp:DropDownList>
                                    </div>


                                    <div class="form-group">
                                        <%--  --%>


                                        <label class="text" for="dd_loc2"><span class="text-danger">*</span>  Location-2 :</label>

                                        <%--  --%>
                                        <asp:DropDownList ID="dd_loc2" runat="server" DataSourceID="SqlDataDesignationSource" CssClass="form-control" DataTextField="designation" DataValueField="designation">
                                        </asp:DropDownList>
                                    </div>

                                    <div class="form-group">
                                        <%--     <asp:TextBox ID="tb_username" runat="server"></asp:TextBox> --%>


                                        <label class="text" for=""><span class="text-danger">*</span>  Location-3 :</label>

                                        <%--  --%>
                                        <asp:DropDownList ID="dd_loc3" runat="server" DataSourceID="SqlDataDesignationSource" CssClass="form-control" DataTextField="designation" DataValueField="designation">
                                        </asp:DropDownList>
                                    </div>

                                    <div class="form-group">
                                        <%--  --%>


                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> Designation-1 :</label>

                                        <%-- 
                                         <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" Text="Submit &amp; Next" />
                                        --%>
                                        <asp:DropDownList ID="dd_des1" runat="server" DataSourceID="SqlDataDesignationSource" CssClass="form-control" DataTextField="designation" DataValueField="designation">
                                        </asp:DropDownList>
                                    </div>


                                    <div class="form-group">
                                        <%--  --%>


                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> Designation-2 :</label>

                                        <asp:DropDownList ID="dd_des2" runat="server" DataSourceID="SqlDataDesignationSource" CssClass="form-control" DataTextField="designation" DataValueField="designation">
                                        </asp:DropDownList>
                                    </div>


                                    <div class="form-group">
                                        

                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> Designation-3 :</label>

                                        <%--  --%>
                                        <asp:DropDownList ID="dd_des3" runat="server" DataSourceID="SqlDataDesignationSource" CssClass="form-control" DataTextField="designation" DataValueField="designation">
                                        </asp:DropDownList>
                                    </div>

                                    <div class="form-group">
                                        <%--     <asp:TextBox ID="tb_username" runat="server"></asp:TextBox> --%>

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Minimum Salary Should not be Empty" ControlToValidate="tb_min_salary" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Invalid Data" ControlToValidate="tb_min_salary" Display="Dynamic" ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                                        <br />
                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> Minimum Salary :</label>

                                        <%--  --%>
                                        <asp:TextBox ID="tb_min_salary" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                    </div>


                                    <div class="form-group">
                                        <%--     <asp:TextBox ID="tb_username" runat="server"></asp:TextBox> --%>
                                        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Invalid Data" ControlToValidate="tb_size_emp" Display="Dynamic" ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                                        <br />

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Min Size in Emp Should not be Empty" ControlToValidate="tb_size_emp" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <br />

                                        <label class="text" for="tb_activity"><span class="text-danger">*</span> Min Size in Employee :</label>
                                        <%--  --%>
                                        <asp:TextBox ID="tb_size_emp" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                        <%--  --%>
                                    </div>



                                    <br />
                                    <%-- 
                                         <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" Text="Submit &amp; Next" />
                                    --%>

                                    <asp:Button ID="btn_submit" runat="server" CssClass="btn btn-primary" OnClick="btn_submit_Click" Text="Final Submit" />

                                    <input id="Reset1" type="reset" class="btn btn-primary" value="Reset" />

                                    <%--    <asp:HyperLink ID="hl_skip_activity" runat="server" CssClass="btn btn-danger" NavigateUrl="~/signup_js_achievement.aspx">Skip</asp:HyperLink>
                                  
                                    <asp:Button ID="btn_plus_activity" runat="server" CssClass="btn btn-warning pull-right" OnClick="btn_plus_activity_Click" Text="+" />--%>
                             
                                
                                     <asp:SqlDataSource ID="SqlDataIndustrySource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT DISTINCT [industry] FROM [jp_master]"></asp:SqlDataSource>
                                
                                
                                     <asp:SqlDataSource ID="SqlDataCitySource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT DISTINCT [city] FROM [jp_job]"></asp:SqlDataSource>
                                        


                                     <asp:SqlDataSource ID="SqlDataDesignationSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT DISTINCT [designation] FROM [jp_job]"></asp:SqlDataSource>
                                       
                                
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
         <h1 style="text-align: center">
                                    <br />
                                    Preferences related to Job</h1>
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style33" style="width: 414px"></td>
                                        <td class="auto-style32">* Industry1 :</td>
                                        <td class="auto-style12">
                                            <asp:DropDownList ID="dd_ind1" runat="server" DataSourceID="SqlDataIndustrySource" DataTextField="industry" DataValueField="industry">
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style12">
                                     --       <asp:SqlDataSource ID="SqlDataIndustrySource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT DISTINCT [industry] FROM [jp_master]"></asp:SqlDataSource>
                                        </td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">Industry2 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_ind2" runat="server" DataSourceID="SqlDataIndustrySource" DataTextField="industry" DataValueField="industry">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">Industry3 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_ind3" runat="server" DataSourceID="SqlDataIndustrySource" DataTextField="industry" DataValueField="industry">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">* Location1 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_loc1" runat="server" DataSourceID="SqlDataCitySource" DataTextField="city" DataValueField="city">
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                               --             <asp:SqlDataSource ID="SqlDataCitySource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT DISTINCT [city] FROM [jp_job]"></asp:SqlDataSource>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">Location2 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_loc2" runat="server" DataSourceID="SqlDataCitySource" DataTextField="city" DataValueField="city">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">Location3 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_loc3" runat="server" DataSourceID="SqlDataCitySource" DataTextField="city" DataValueField="city">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style33" style="width: 414px"></td>
                                        <td class="auto-style32"></td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">* Designation1 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_des1" runat="server" DataSourceID="SqlDataDesignationSource" DataTextField="designation" DataValueField="designation">
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:SqlDataSource ID="SqlDataDesignationSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT DISTINCT [designation] FROM [jp_job]"></asp:SqlDataSource>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">Designation2 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_des2" runat="server" DataSourceID="SqlDataDesignationSource" DataTextField="designation" DataValueField="designation">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style33" style="width: 414px"></td>
                                        <td class="auto-style32">Designation3 :</td>
                                        <td class="auto-style12">
                                            <asp:DropDownList ID="dd_des3" runat="server" DataSourceID="SqlDataDesignationSource" DataTextField="designation" DataValueField="designation">
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style33" style="width: 414px"></td>
                                        <td class="auto-style32">Min Salary :</td>
                                        <td class="auto-style12">
                                            <asp:TextBox ID="tb_min_salary" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">* Min Size of Employee :</td>
                                        <td>
                                            <asp:TextBox ID="tb_size_emp" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px; text-align: right;">&nbsp;</td>
                                        <td class="auto-style31" style="text-align: right">
                                            <asp:Button ID="btn_submit" runat="server" Text="Final Submit" OnClick="btn_submit_Click" />
                                        </td>
                                        <td>
                                            <input id="btn_reset" __designer:mapid="4d4" type="reset" value="Reset" /></td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
    </form>--%>




<%-- <form runat="server">
         <h1 style="text-align: center">
                                    <br />
                                    Preferences related to Job</h1>
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style33" style="width: 414px"></td>
                                        <td class="auto-style32">* Industry1 :</td>
                                        <td class="auto-style12">
                                            <asp:DropDownList ID="dd_ind1" runat="server" DataSourceID="SqlDataIndustrySource" DataTextField="industry" DataValueField="industry">
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style12">
                                            <asp:SqlDataSource ID="SqlDataIndustrySource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT DISTINCT [industry] FROM [jp_master]"></asp:SqlDataSource>
                                        </td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">Industry2 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_ind2" runat="server" DataSourceID="SqlDataIndustrySource" DataTextField="industry" DataValueField="industry">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">Industry3 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_ind3" runat="server" DataSourceID="SqlDataIndustrySource" DataTextField="industry" DataValueField="industry">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">* Location1 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_loc1" runat="server" DataSourceID="SqlDataCitySource" DataTextField="city" DataValueField="city">
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:SqlDataSource ID="SqlDataCitySource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT DISTINCT [city] FROM [jp_job]"></asp:SqlDataSource>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">Location2 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_loc2" runat="server" DataSourceID="SqlDataCitySource" DataTextField="city" DataValueField="city">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">Location3 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_loc3" runat="server" DataSourceID="SqlDataCitySource" DataTextField="city" DataValueField="city">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style33" style="width: 414px"></td>
                                        <td class="auto-style32"></td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">* Designation1 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_des1" runat="server" DataSourceID="SqlDataDesignationSource" DataTextField="designation" DataValueField="designation">
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:SqlDataSource ID="SqlDataDesignationSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT DISTINCT [designation] FROM [jp_job]"></asp:SqlDataSource>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">Designation2 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_des2" runat="server" DataSourceID="SqlDataDesignationSource" DataTextField="designation" DataValueField="designation">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style33" style="width: 414px"></td>
                                        <td class="auto-style32">Designation3 :</td>
                                        <td class="auto-style12">
                                            <asp:DropDownList ID="dd_des3" runat="server" DataSourceID="SqlDataDesignationSource" DataTextField="designation" DataValueField="designation">
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style33" style="width: 414px"></td>
                                        <td class="auto-style32">Min Salary :</td>
                                        <td class="auto-style12">
                                            <asp:TextBox ID="tb_min_salary" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">* Min Size of Employee :</td>
                                        <td>
                                            <asp:TextBox ID="tb_size_emp" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34" style="width: 414px; text-align: right;">&nbsp;</td>
                                        <td class="auto-style31" style="text-align: right">
                                            <asp:Button ID="btn_submit" runat="server" Text="Final Submit" OnClick="btn_submit_Click" />
                                        </td>
                                        <td>
                                            <input id="btn_reset" __designer:mapid="4d4" type="reset" value="Reset" /></td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
    </form>--%>

