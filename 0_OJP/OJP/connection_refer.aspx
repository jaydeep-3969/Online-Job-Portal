<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="connection_refer.aspx.cs" Inherits="OJP.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid"><div class="row">
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataReferConnectionSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="spConnectionRefer1Job" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="1" Name="js_user_id" SessionField="user_id" Type="Int32" />
                <asp:QueryStringParameter DefaultValue="1" Name="job_id" QueryStringField="job_id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="js_user_id" DataSourceID="SqlDataReferConnectionSource" OnItemCommand="DataList1_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                 <div class="thumbnail">
                <asp:Image ID="Image1" runat="server" CssClass="img-responsive img-rounded img-thumbnail" Style="width:300px;height:300px" ImageUrl='<%# Eval("profile_photo_url") %>' />
                </div>
                     <br />
                <br />
                <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
&nbsp;
                <asp:Label ID="mnameLabel" runat="server" Text='<%# Eval("mname") %>' />
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
                 &nbsp;&nbsp;<asp:Button ID="btn_show"  CssClass="btn btn-primary" runat="server" CommandName="show_profile"  CommandArgument='<%# Eval("js_user_id") %>' Text="Show Profile" Width="104px" />
                 &nbsp;&nbsp;&nbsp;<asp:Button ID="btn_refer" runat="server" CommandArgument='<%# Eval("js_user_id") %>' CommandName="refer_job" CssClass="btn btn-primary"  Text="Refer Job" Width="86px" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
    </form>
             </div></div>
</asp:Content>
