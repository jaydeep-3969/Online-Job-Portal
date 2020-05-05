<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="connection_overview.aspx.cs" Inherits="OJP.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
    <a class="list-group-item" href="job_recommended.aspx">Recommended Jobs</a>
    <a class="list-group-item active" href="connection_overview.aspx">Connections</a>
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
                        Connections
                         </h3></div><br />
        <p>
        &nbsp;
        <asp:SqlDataSource ID="SqlDataConnectionOverviewSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="spConnectionOverview" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="1" Name="js_user_id" SessionField="user_id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:DataList ID="dl_connection_overview" runat="server" DataSourceID="SqlDataConnectionOverviewSource" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="dl_connection_overview_ItemCommand" BorderWidth="0px">
            <%--  --%>
            <ItemTemplate>
             
                    <div class="thumbnail">
                <asp:Image ID="Image1" runat="server" CssClass="img-responsive img-rounded img-thumbnail" Style="width:300px;height:300px"  ImageUrl='<%# Eval("profile_photo_url") %>' />
                </div><br />
                <br />
                &nbsp;<asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                &nbsp;&nbsp;<asp:Label ID="mnameLabel" runat="server" Text='<%# Eval("mname") %>' />
                &nbsp;&nbsp;
                <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text='<%# Convert.ToString(Eval("is_fresher")) == "1" ? "Fresher" : "Employee" %>'></asp:Label>
                <br />
                <br />
                Age :
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                <br />
                <br />
                City :
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                <br />
                <br />
                State :
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                <br />
                <br />
                &nbsp;<asp:Button ID="btn_show" runat="server" CssClass="btn btn-primary" Text="Show Profile" CommandName="show_profile" CommandArgument='<%# Eval("js_user_id")%>' Width="128px" />
                &nbsp;
                    <asp:Button ID="btn_disconnect" runat="server" CommandArgument='<%# Eval("js_user_id")%>' CommandName="disconnect" CssClass="btn btn-primary" Text="Disconnect" Width="111px" />
                    <br /> &nbsp;<br />
              
            </ItemTemplate>
            <%--  --%>
        </asp:DataList>
    </p>
    </form>
         </div></div>
</asp:Content>
