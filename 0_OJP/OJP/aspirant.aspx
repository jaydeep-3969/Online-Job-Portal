<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="aspirant.aspx.cs" Inherits="OJP.WebForm22" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid"><div class="row">
    <form id="form1" runat="server">
         <div class="page-header">
                        <h3 class="text-primary ">
                        Aspirants
                             </h3></div>
        <p>
            <br />
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataAspirantSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="spAspirant" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="1" Name="job_id" QueryStringField="job_id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="js_user_id" DataSourceID="SqlDataAspirantSource" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <div class="thumbnail">
                    <asp:Image ID="Image1" CssClass="img-responsive img-rounded img-thumbnail" Style="width:300px;height:300px" runat="server" ImageUrl='<%# Eval("profile_photo_url") %>' />
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
                    &nbsp;
                    <asp:Button ID="btn_select" CssClass="btn btn-primary" runat="server" CommandName="select" CommandArgument='<%# Eval("js_user_id") %>' Text="Select" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_show" runat="server" CssClass="btn btn-primary" CommandName="show_profile" CommandArgument='<%# Eval("js_user_id") %>' Text="Show Profile" />
<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_show_reference" runat="server" CssClass="btn btn-primary" CommandArgument='<%# Eval("js_user_id") %>' CommandName="show_reference" Text="Show References" />
                    <br />
                </ItemTemplate>
            </asp:DataList>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
          </div>
          </div>
</asp:Content>
