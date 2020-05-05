<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="job_recommended.aspx.cs" Inherits="OJP.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
    <a class="list-group-item active" href="job_recommended.aspx">Recommended Jobs</a>
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
                        Recommended Jobs
                         </h3></div>
        <p>
            <br />
            <asp:SqlDataSource ID="SqlDataRecommendedJobSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="spRecommendedJobs" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="1" Name="js_user_id" SessionField="user_id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="job_id" DataSourceID="SqlDataRecommendedJobSource" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <div class="thumbnail">
                    <asp:Image ID="Image1" runat="server"  CssClass="img-responsive img-rounded img-thumbnail" Style="width:300px;height:300px" ImageUrl='<%# Eval("profile_photo_url") %>' />
                     </div>
                        <br />
                    <br />
                    Company Name :
                    <asp:Label ID="company_nameLabel" runat="server" Text='<%# Eval("company_name") %>' />
                    <br />
                    <br />
                    Industry :
                    <asp:Label ID="industryLabel" runat="server" Text='<%# Eval("industry") %>' />
                    <br />
                    <br />
                    Designation :
                    <asp:Label ID="designationLabel" runat="server" Text='<%# Eval("designation") %>' />
                    <br />
                    <br />
                    Required Experience :
                    <asp:Label ID="exp_yearLabel" runat="server" Text='<%# Eval("exp_year") %>' />
                    <br />
                    <br />
                    Average Salary :
                    <asp:Label ID="salary_avgLabel" runat="server" Text='<%# Eval("salary_avg") %>' />
                    <br />
                    <br />
                    Due Date :
                    <asp:Label ID="due_dateLabel" runat="server" Text='<%# Eval("due_date", "{0:d}") %>' />
                    <br />
                    <br />
                    City :
                    <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    <br />
                    <br />
                    State :
                    <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                    <br />
                    <br />
                    <asp:Button ID="btn_show" runat="server" CssClass="btn btn-primary" CommandName="show_job" CommandArgument='<%# Eval("job_id") %>' Text="Show Details" />
<br />
                </ItemTemplate>
            </asp:DataList>
        </p>
    </form>
           </div></div>
</asp:Content>
