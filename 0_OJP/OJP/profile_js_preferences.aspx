<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="profile_js_preferences.aspx.cs" Inherits="OJP.js_profile_preferences" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
     <a class="list-group-item" href="job_recommended.aspx">Recommended Jobs</a>
        <a class="list-group-item" href="connection_overview.aspx">Connections</a>
        <a class="list-group-item" href="connection_request.aspx">Requests</a>
        <a class="list-group-item" href="job_saved.aspx">Saved Jobs</a>
        <a class="list-group-item" href="job_applied.aspx">Applied Jobs</a>
        <a class="list-group-item" href="job_referred.aspx">Referred Jobs</a>
        <a class="list-group-item" href="job_approved.aspx">Approved Jobs</a>
        <a class="list-group-item" href="profile_redirect.aspx?refer=1">References</a>
           <a class="list-group-item" href="profile_redirect.aspx">Profile</a>

        <a class="list-group-item" href="notification_accept.aspx">Notifications</a>

    <hr/>
    <div class="list-group">
        <a class="list-group-item" href="profile_js_credential.aspx">Credentials</a> 
        <a class="list-group-item active" href="profile_js_preferences.aspx">Preferences</a>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
   
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid"><div class="row">
    <form id="form1" runat="server">
        <div class="page-header">
                        <h3 class="text-primary ">
                        Preferences
                             </h3></div>
        <p>
            <asp:SqlDataSource ID="SqlPrefDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [js_preferences] WHERE ([js_user_id] = @js_user_id)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="1" Name="js_user_id" SessionField="user_id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:DataList ID="dl" runat="server" DataKeyField="pref_id" DataSourceID="SqlPrefDataSource" OnItemCommand="dl_ItemCommand">
                <EditItemTemplate>
                    <div class="text-center">
                        <strong><span style="font-size: medium">Preferences</span></strong><br />
                    </div>
                    <table class="nav-justified">
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Industry-1 :</td>
                            <td style="width: 251px">
                                <asp:DropDownList ID="tb_i1" runat="server" DataSourceID="SqlDataIndustrySource" DataTextField="industry" DataValueField="industry" SelectedValue='<%# Eval("industry1") %>'>
                                </asp:DropDownList>
                                &nbsp;
                                <asp:SqlDataSource ID="SqlDataIndustrySource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT DISTINCT [industry] FROM [jp_master]"></asp:SqlDataSource>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Industry-2 :</td>
                            <td style="width: 251px">
                                <asp:DropDownList ID="tb_i2" runat="server" DataSourceID="SqlDataIndustrySource" DataTextField="industry" DataValueField="industry" SelectedValue='<%# Eval("industry2") %>'>
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Industry-3 :</td>
                            <td style="width: 251px">
                                <asp:DropDownList ID="tb_i3" runat="server" DataSourceID="SqlDataIndustrySource" DataTextField="industry" DataValueField="industry" SelectedValue='<%# Eval("industry3") %>'>
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Location-1 :</td>
                            <td style="width: 251px">
                                <asp:DropDownList ID="tb_l1" runat="server" DataSourceID="SqlDataCitySource" DataTextField="city" DataValueField="city" SelectedValue='<%# Eval("location1") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataCitySource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT DISTINCT [city] FROM [jp_job]"></asp:SqlDataSource>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Location-2 :</td>
                            <td style="width: 251px">
                                <asp:DropDownList ID="tb_l2" runat="server" DataSourceID="SqlDataCitySource" DataTextField="city" DataValueField="city" SelectedValue='<%# Eval("location2") %>'>
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Location-3 :</td>
                            <td style="width: 251px">
                                <asp:DropDownList ID="tb_l3" runat="server" DataSourceID="SqlDataCitySource" DataTextField="city" DataValueField="city" SelectedValue='<%# Eval("location3") %>'>
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Designation-1 :</td>
                            <td style="width: 251px">
                                <asp:DropDownList ID="tb_d1" runat="server" DataSourceID="SqlDataDesignationSource" DataTextField="designation" DataValueField="designation" SelectedValue='<%# Eval("designation1") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataDesignationSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT DISTINCT [designation] FROM [jp_job]"></asp:SqlDataSource>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Designation-2 :</td>
                            <td style="width: 251px">
                                <asp:DropDownList ID="tb_d2" runat="server" DataSourceID="SqlDataDesignationSource" DataTextField="designation" DataValueField="designation" SelectedValue='<%# Eval("designation2") %>'>
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px"></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Designation-3 :</td>
                            <td style="width: 251px">
                                <asp:DropDownList ID="tb_d3" runat="server" DataSourceID="SqlDataDesignationSource" DataTextField="designation" DataValueField="designation" SelectedValue='<%# Eval("designation3") %>'>
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Min Salary :</td>
                            <td style="width: 251px">
                                <asp:TextBox ID="tb_min_salary" runat="server" Text='<%# Eval("min_salary") %>'></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Min Size In Emp :</td>
                            <td style="width: 251px">
                                <asp:TextBox ID="tb_min_size_emp" runat="server" Text='<%# Eval("min_size_in_emp") %>'></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">
                                <asp:TextBox ID="tb_pref_id" runat="server" Text='<%# Eval("pref_id") %>' Visible="False"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">
                                <br />
                                <br />
                                <asp:Button ID="btn_update"  CssClass="btn btn-primary" runat="server" CommandName="update" Text="Update" />
                            </td>
                            <td style="width: 251px">
                                <br />
                                <br />
                                <asp:Button ID="btn_cancel"  CssClass="btn btn-primary" runat="server" CommandName="cancel" Text="Cancel" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <ItemTemplate>
                    <div class="text-center">
                        <strong><span style="font-size: medium">Preferences</span></strong><br />
                    </div>
                    <table class="nav-justified">
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Industry-1 :</td>
                            <td style="width: 251px">
                                <asp:Label ID="industry1Label0" runat="server" Text='<%# Eval("industry1") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Industry-2 :</td>
                            <td style="width: 251px">
                                <asp:Label ID="industry2Label0" runat="server" Text='<%# Eval("industry2") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Industry-3 :</td>
                            <td style="width: 251px">
                                <asp:Label ID="industry3Label0" runat="server" Text='<%# Eval("industry3") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Location-1 :</td>
                            <td style="width: 251px">
                                <asp:Label ID="location1Label0" runat="server" Text='<%# Eval("location1") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Location-2 :</td>
                            <td style="width: 251px">
                                <asp:Label ID="location2Label0" runat="server" Text='<%# Eval("location2") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Location-3 :</td>
                            <td style="width: 251px">
                                <asp:Label ID="location3Label0" runat="server" Text='<%# Eval("location3") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Designation-1 :</td>
                            <td style="width: 251px">
                                <asp:Label ID="designation1Label0" runat="server" Text='<%# Eval("designation1") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Designation-2 :</td>
                            <td style="width: 251px">
                                <asp:Label ID="designation2Label0" runat="server" Text='<%# Eval("designation2") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Designation-3 :</td>
                            <td style="width: 251px">
                                <asp:Label ID="designation3Label0" runat="server" Text='<%# Eval("designation3") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Min Salary :</td>
                            <td style="width: 251px">
                                <asp:Label ID="min_salaryLabel0" runat="server" Text='<%# Eval("min_salary") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">Min Size In Emp :</td>
                            <td style="width: 251px">
                                <asp:Label ID="min_size_in_empLabel0" runat="server" Text='<%# Eval("min_size_in_emp") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">
                                <asp:TextBox ID="tb_pref_id" runat="server" Text='<%# Eval("pref_id") %>' Visible="False"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="text-center" style="width: 136px">&nbsp;</td>
                            <td style="width: 251px">
                                <asp:Button ID="btn_Edit"  CssClass="btn btn-primary" runat="server" CommandName="edit" Text="Edit" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
        </p>
        <p>
        </p>
        <p>
        </p>
    </form>
        </div>
          </div>
</asp:Content>
