<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="posted_job.aspx.cs" Inherits="OJP.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
     <a class="btn-success btn btn-group-justified" href="job_post.aspx">Post New Job</a>
    <hr />
     <a class="list-group-item active" href="posted_job.aspx">Posted Job</a>
         <a class="list-group-item" href="profile_redirect.aspx">Profile</a>
     <a class="list-group-item" href="profile_jp_credential.aspx">Credential</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
     <div class="container-fluid"><div class="row">
    <form id="form1" runat="server">
        <div class="page-header">
                        <h3 class="text-primary ">
                        Posted Jobs
                         </h3></div> 
        <p>
            <br />
            <asp:SqlDataSource ID="SqlDataPostedJobSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [jp_job] WHERE ([jp_user_id] = @jp_user_id)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="1" Name="jp_user_id" SessionField="user_id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="job_id" DataSourceID="SqlDataPostedJobSource" CellPadding="1" CellSpacing="1" HorizontalAlign="Center" OnItemCommand="DataList1_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal">
                <ItemTemplate>
                    Designation :
                    <asp:Label ID="designationLabel" runat="server" Text='<%# Eval("designation") %>' />
                    <br />
                    <br />
                    Vacancy&nbsp; :
                    <asp:Label ID="vacancyLabel" runat="server" Text='<%# Eval("vacancy") %>' />
                    <br />
                    <br />
                    Required Experience (Yr)&nbsp; :
                    <asp:Label ID="exp_yearLabel" runat="server" Text='<%# Eval("exp_year") %>' />
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    Post Date :
                    <asp:Label ID="post_dateLabel" runat="server" Text='<%# Eval("post_date", "{0:d}") %>' />
                    <br />
                    <br />
                    Due date :
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
                    <asp:Button ID="btn_show_detail" CssClass="btn btn-primary" runat="server" CommandName="show_job_detail" CommandArgument='<%# Eval("job_id") %>' Text="Show Detail"  Width="98px" />
                    &nbsp;&nbsp;<asp:Button ID="btn_delete" runat="server" CommandArgument='<%# Eval("job_id") %>' CommandName="delete" CssClass="btn btn-primary" Text="Delete" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Button ID="btn_selected_aspirant" runat="server" CommandArgument='<%# Eval("job_id") %>' CommandName="show_selected_aspirant" CssClass="btn btn-primary" Text="Show Selected Aspirant" Width="184px" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;<asp:Button ID="btn_show_aspirant" CssClass="btn btn-primary" runat="server" CommandName="show_aspirant" CommandArgument='<%# Eval("job_id") %>' Text="Show Other Aspirants" Width="166px" />
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
        </p>
        <p>
        </p>
    </form>
         </div></div>
</asp:Content>
