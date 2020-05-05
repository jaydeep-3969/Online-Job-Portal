<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="job_saved.aspx.cs" Inherits="OJP.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
    <a class="list-group-item" href="job_recommended.aspx">Recommended Jobs</a>
    <a class="list-group-item" href="connection_overview.aspx">Connections</a>
    <a class="list-group-item" href="connection_request.aspx">Requests</a>
    <a class="list-group-item active" href="job_saved.aspx">Saved Jobs</a>
    <a class="list-group-item" href="job_applied.aspx">Applied Jobs</a>
    <a class="list-group-item" href="job_referred.aspx">Referred Jobs</a>
    <a class="list-group-item" href="job_approved.aspx">Approved Jobs</a>
    <a class="list-group-item" href="profile_redirect.aspx?refer=1">References</a>
   <a class="list-group-item" href="profile_redirect.aspx">Profile</a>

    <a class="list-group-item" href="notification_accept.aspx">Notifications</a>
    <hr/>
    <div class="list-group">
        <a class="list-group-item" href="profile_js_credential.aspx">Credentials</a> 
        <a class="list-group-item" href="profile_js_preferences.aspx">Preferences</a>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid"><div class="row">
    <form id="form1" runat="server">
        <div class="page-header">
                        <h3 class="text-primary ">
                        Saved Jobs
                         </h3></div>
         
        <p>
        <br />
        <asp:SqlDataSource ID="SqlDataSavedJobSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="spSavedJobs" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="1" Name="js_user_id" SessionField="user_id" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSavedJobSource" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand1" >
            <ItemTemplate>
                
                <table class="nav-justified">
                    <tr>
                        <td>
                            <div class="thumbnail">
                            <asp:Image ID="job_img" runat="server" CssClass="img-responsive img-rounded img-thumbnail" Style="width:300px;height:300px" ImageUrl='<%# Eval("profile_photo_url") %>' />
                       </div>
                                </td>
                    </tr>
                    <tr>
                        <td>
                            Company Name:
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("company_name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Designation :&nbsp;
                            <asp:Label ID="job_des" runat="server" Text='<%# Eval("designation") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Required Experience :
                            <asp:Label ID="job_exp" runat="server" Text='<%# Eval("exp_year") %>'></asp:Label>
                            <br />
                            <br />
                            Average Salary :
                            <asp:Label ID="job_salary" runat="server" Text='<%# Eval("salary_avg") %>'></asp:Label>
                            <br />
                            <br />
                            Due Date :
                            <asp:Label ID="job_due_date" runat="server" Text='<%# Eval("due_date", "{0:d}") %>'></asp:Label>
                            <br />
                            <br />
                            City :
                            <asp:Label ID="job_city" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                            <br />
                            <br />
                            State :
                            <asp:Label ID="job_state" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                            <br />
                            <br />
                            <br />
                            
                            
                            &nbsp;&nbsp;&nbsp;
                                                                                    
                            <asp:Button ID="btn_show" CssClass="btn btn-primary" runat="server" CommandName="show_job" CommandArgument='<%# Eval("job_id") %>' Text="Show" Width="74px" />
                                                                                    
                            &nbsp;&nbsp;
                            <asp:Button ID="btn_unsave" CssClass="btn btn-primary" runat="server" CommandName="unsave_job" Text="Unsave" CommandArgument='<%# Eval("job_id") %>' Width="81px" />
                                                                                    
                        </td>
                    </tr>
                </table>
            
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    </form>
         </div></div>
</asp:Content>
