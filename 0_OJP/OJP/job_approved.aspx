<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="job_approved.aspx.cs" Inherits="OJP.job_approved" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">

    <a class="list-group-item" href="job_recommended.aspx">Recommended Jobs</a>
    <a class="list-group-item" href="connection_overview.aspx">Connections</a>
    <a class="list-group-item " href="connection_request.aspx">Requests</a>
    <a class="list-group-item" href="job_saved.aspx">Saved Jobs</a>
    <a class="list-group-item" href="job_applied.aspx">Applied Jobs</a>
    <a class="list-group-item" href="job_referred.aspx">Referred Jobs</a>
    <a class="list-group-item active" href="job_approved.aspx">Approved Jobs</a>
    <a class="list-group-item" href="profile_redirect.aspx?refer=1">References</a>
       <a class="list-group-item" href="profile_redirect.aspx">Profile</a>

    <a class="list-group-item " href="notification_accept.aspx">Notifications</a>
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
                        Approved Jobs
                         </h3></div>
        <p>
            <br />
            <asp:SqlDataSource ID="SqlDataApprovedJobSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="spApprovedJobs" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="1" Name="js_user_id" SessionField="user_id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
        </p>
        <p>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="job_id" DataSourceID="SqlDataApprovedJobSource" OnItemCommand="DataList1_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="text-center" colspan="2">
                                <div class="thumbnail">
                                <asp:Image ID="Image1" CssClass="img-responsive img-rounded img-thumbnail" Style="width:300px;height:300px" runat="server" ImageUrl='<%# Eval("profile_photo_url") %>' />
                           </div>
                                    </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>Company Name :</td>
                            <td>
                                <asp:Label ID="company_nameLabel" runat="server" Text='<%# Eval("company_name") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>Designation : </td>
                            <td>
                                <asp:Label ID="designationLabel" runat="server" Text='<%# Eval("designation") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>Vacancy :</td>
                            <td>
                                <asp:Label ID="vacancyLabel" runat="server" Text='<%# Eval("vacancy") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>Average Salary :</td>
                            <td>
                                <asp:Label ID="salary_avgLabel" runat="server" Text='<%# Eval("salary_avg") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>City :</td>
                            <td>
                                <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>State :</td>
                            <td>
                                <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2">Venue And Time :</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2">
                                <asp:Label ID="venue_descLabel" runat="server" Text='<%# Eval("venue_desc") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="text-center" colspan="2">
                                <asp:Button ID="btn_show_job" CssClass="btn btn-primary" runat="server" CommandName="show_job" CommandArgument='<%# Eval("job_id") %>' Text=" Show Job Details" Width="140px" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
<br />
                </ItemTemplate>
            </asp:DataList>
        </p>
    </form>
                </div></div>
</asp:Content>
