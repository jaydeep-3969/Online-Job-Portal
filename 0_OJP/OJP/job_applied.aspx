<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="job_applied.aspx.cs" Inherits="OJP.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
    <a class="list-group-item" href="job_recommended.aspx">Recommended Jobs</a>
    <a class="list-group-item" href="connection_overview.aspx">Connections</a>
    <a class="list-group-item" href="connection_request.aspx">Requests</a>
    <a class="list-group-item" href="job_saved.aspx">Saved Jobs</a>
    <a class="list-group-item active" href="job_applied.aspx">Applied Jobs</a>
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
                        Applied Jobs
                         </h3></div>
        <asp:SqlDataSource ID="SqlDataAppliedJobsSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="spAppliedJobs" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="1" Name="js_user_id" SessionField="user_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="job_id" DataSourceID="SqlDataAppliedJobsSource" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
        <ItemTemplate>
            <table class="nav-justified">
                <tr>
                    <td>
                        <div class="thumbnail">
                        <asp:Image ID="Image1" CssClass="img-responsive img-rounded img-thumbnail" Style="width:300px;height:300px" runat="server" ImageUrl='<%# Eval("profile_photo_url") %>' />
                        </div>
                            </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Company Name:
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("company_name") %>'></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;Designation :&nbsp;
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("designation") %>'></asp:Label>
                        <br />
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>Required Experience:
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("exp_year") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Average Salary:
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("salary_avg") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Due Date:
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("due_date", "{0:d}") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>City:
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>State:
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="btn_show" CssClass="btn btn-primary" runat="server" CommandName="show_job" CommandArgument='<%# Eval("job_id") %>' Text="Show" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_save" CssClass="btn btn-primary" runat="server" CommandName="save_job" CommandArgument='<%# Eval("job_id") %>' Text="Save" />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_unapply" CssClass="btn btn-primary" runat="server" CommandArgument='<%# Eval("job_id") %>' CommandName="unapply_job" Text="Unapply" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>

    </form>
         </div></div>

</asp:Content>
