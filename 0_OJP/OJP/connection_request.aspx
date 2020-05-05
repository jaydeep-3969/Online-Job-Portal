<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="connection_request.aspx.cs" Inherits="OJP.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
        <div class="list-group">
    <a class="list-group-item active" href="connection_request.aspx">Arrived Requests</a>
    <a class="list-group-item " href="connection_request_sent.aspx">Sent Requests</a>
   </div>

    <a class="list-group-item" href="job_recommended.aspx">Recommended Jobs</a>
    <a class="list-group-item" href="connection_overview.aspx">Connections</a>
    <a class="list-group-item active" href="connection_request.aspx">Requests</a>
    <a class="list-group-item" href="job_saved.aspx">Saved Jobs</a>
    <a class="list-group-item" href="job_applied.aspx">Applied Jobs</a>
    <a class="list-group-item" href="job_referred.aspx">Referred Jobs</a>
    <a class="list-group-item" href="job_approved.aspx">Approved Jobs</a>
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
                        Connection Requests
                         </h3></div>
        <asp:SqlDataSource ID="SqlDataConnectionRequestSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="spConnectionRequest" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="1" Name="js_user_id" SessionField="user_id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="js_user_id" DataSourceID="SqlDataConnectionRequestSource" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                 <div class="thumbnail">
                <asp:Image ID="Image1" runat="server" CssClass="img-responsive img-rounded img-thumbnail" Style="width:300px;height:300px" ImageUrl='<%# Eval("profile_photo_url") %>' />
                </div><br />
                <br />
                <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
&nbsp;<asp:Label ID="mnameLabel" runat="server" Text='<%# Eval("mname") %>' />
&nbsp;
                <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text='<%# Convert.ToString(Eval("is_fresher")) == "1" ? "Fresher" : "Employee" %>'></asp:Label>
                <br />
                <br />
                Age :
                <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
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
                &nbsp;<asp:Button ID="btn_show" runat="server" CssClass="btn btn-primary" CommandName="show_profile" CommandArgument='<%# Eval("js_user_id") %>' Text="Show Profile" Width="163px" />
                <br />
                &nbsp;<br />&nbsp;&nbsp;<asp:Button ID="btn_accept" runat="server" Text="Accept" CssClass="btn btn-primary" CommandName="accept" CommandArgument='<%# Eval("js_user_id") %>' Width="69px"/>
                 &nbsp;&nbsp;&nbsp;<asp:Button ID="btn_decline" runat="server" Text="Decline" CssClass="btn btn-primary" CommandName="decline" CommandArgument='<%# Eval("js_user_id") %>' Width="77px"/>
                 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
    </form>
         </div></div>
</asp:Content>
