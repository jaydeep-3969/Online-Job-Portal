<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="notification_accept.aspx.cs" Inherits="OJP.WebForm24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
   <div class="list-group">
    <a class="list-group-item active" href="notification_accept.aspx">Accepted Requests</a>
    <a class="list-group-item" href="#">Other Notifications</a>
   </div>

    <a class="list-group-item" href="job_recommended.aspx">Recommended Jobs</a>
    <a class="list-group-item" href="connection_overview.aspx">Connections</a>
    <a class="list-group-item" href="connection_request.aspx">Requests</a>
    <a class="list-group-item" href="job_saved.aspx">Saved Jobs</a>
    <a class="list-group-item" href="job_applied.aspx">Applied Jobs</a>
    <a class="list-group-item" href="job_referred.aspx">Referred Jobs</a>
    <a class="list-group-item" href="job_approved.aspx">Approved Jobs</a>
    <a class="list-group-item" href="profile_redirect.aspx?refer=1">References</a>
       <a class="list-group-item" href="profile_redirect.aspx">Profile</a>

    <a class="list-group-item active" href="notification_accept.aspx">Notifications</a>
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
                        Notifications of Accepted Request
                         </h3></div>
        <p>
            <br />
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataAcceptNotificationSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="spNotificationAccept" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="1" Name="js_user_id" SessionField="user_id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="js_user_id" DataSourceID="SqlDataAcceptNotificationSource" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Justify" OnItemCommand="DataList1_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table class="nav-justified" style="width: 136%">
                        <tr>
                            <td rowspan="7">
                                 <div class="thumbnail">
                             </div></td>
                            <td>
                                &nbsp; &nbsp; &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" CssClass="img-responsive img-rounded img-thumbnail" ImageUrl='<%# Eval("profile_photo_url") %>' Style="width:300px;height:300px" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="fnameLabel0" runat="server" Text='<%# Eval("fname") %>' />
                                &nbsp;
                                <asp:Label ID="mnameLabel0" runat="server" Text='<%# Eval("mname") %>' />
                                &nbsp;
                                <asp:Label ID="lnameLabel0" runat="server" Text='<%# Eval("lname") %>' />
                                &nbsp;<br /> Accepted Your Request</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btn_show_profile" CssClass="btn btn-primary" runat="server" CommandName="show_profile" CommandArgument='<%# Eval("js_user_id") %>' Text="Show Profile" />
                            </td>
                        </tr>
                    </table>
<br />
                </ItemTemplate>
            </asp:DataList>
        </p>
        <p>
            &nbsp;</p>
    </form>
        </div></div>
</asp:Content>
