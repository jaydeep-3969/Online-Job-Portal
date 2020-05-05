<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="OJP.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid"><div class="row">
    <form class="navbar-form navbar-left" runat="server">
        <asp:Panel ID="pnl_search" runat="server">
            <asp:TextBox CssClass="form-control" ID="tb_search" runat="server" TextMode="Search" ToolTip="Location, Name of job or job seeker"></asp:TextBox>
            <ajaxToolkit:AutoCompleteExtender ID="tb_search_AutoCompleteExtender" runat="server" BehaviorID="tb_search_AutoCompleteExtender" DelimiterCharacters="" ServiceMethod="SearchUser" CompletionInterval="1" CompletionSetCount="8" TargetControlID="tb_search" MinimumPrefixLength="1">
            </ajaxToolkit:AutoCompleteExtender>
            <asp:Button ID="btn_search" CssClass="btn btn-info" runat="server" Text=" Search" OnClick="btn_search_Click" />
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
        <br />
        <table class="nav-justified">
            <tr>
                <td style="height: 20px">
                    <div class="btn-group">
                    <asp:Button ID="btn_job" CssClass="btn btn-default" runat="server" OnClick="btn_job_Click" Text="Jobs" />
                    <asp:Button ID="btn_job_seeker" CssClass="btn btn-default" runat="server" OnClick="btn_job_seeker_Click" Text="Job Seeker" />
                    <asp:Button ID="btn_company" CssClass="btn btn-default" runat="server" OnClick="btn_company_Click" Text="Company" />
                    </div>
                </td>
            </tr>
            <tr>
                <td style="height: 20px">&nbsp;</td>
            </tr>
           
            <tr>
                <td style="height: 20px">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    
<%--------------------------------------------------------------------------------------------------%>
                    
                    <asp:Panel ID="pnl_job" runat="server">
                        <div class="page-header">
                        <h3 class="text-primary ">
                        Jobs Result
                         </h3></div><br />
                        &nbsp;<br />
                        <asp:SqlDataSource ID="SqlDataJobSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="spSearchJob" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="tb_search" DefaultValue="1" Name="search_str" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <br />
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="job_id" DataSourceID="SqlDataJobSource" RepeatColumns="3" RepeatDirection="Horizontal" Width="711px" OnItemCommand="DataList1_ItemCommand">
                            <ItemTemplate>
                                 <div class="thumbnail">
                                <asp:Image ID="Image2" CssClass="img-responsive img-rounded img-thumbnail" Style="width:300px;height:300px"  runat="server" ImageUrl='<%# Eval("profile_photo_url") %>' />
                                </div>
                                <br />
                                <br />
                                Company Name :
                                <asp:Label ID="company_nameLabel" runat="server" Text='<%# Eval("company_name") %>' />
                                <br />
                                <br />
                                Designation :<br />
                                <asp:Label ID="designationLabel" runat="server" Text='<%# Eval("designation") %>' />
                                <br />
                                <br />
                                Required Experience :
                                <br />
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
&nbsp;<br />City :
                                <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                                <br />
                                <br />
                                State :
                                <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btn_show_job" runat="server"  CssClass="btn btn-primary" CommandName="show_job" CommandArgument='<%# Eval("job_id") %>' Text="Show" />
                                <br />
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
<%--------------------------------------------------------------------------------------------------%>
                    

                    <asp:Panel ID="pnl_job_seeker" runat="server">
                        <div class="page-header">
                        <h3 class="text-primary ">
                        Job Seeker
                             </h3></div>
                            <br />
                        <br />
                        <br />
                        <asp:SqlDataSource ID="SqlDataJSSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="spSearchJS" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="tb_search" DefaultValue="1" Name="search_str" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <br />
                        <asp:DataList ID="DataList2" runat="server" DataKeyField="js_user_id" DataSourceID="SqlDataJSSource" OnItemCommand="DataList2_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal" OnItemDataBound="DataList2_ItemDataBound">
                            <ItemTemplate>
                              
                               <div class="thumbnail">
                                <asp:Image ID="Image3" CssClass="img-responsive img-rounded img-thumbnail" Style="width:300px;height:300px" runat="server" ImageUrl='<%# Eval("profile_photo_url") %>' />
                                </div><br />
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
                                &nbsp;<asp:Button ID="btn_show_js"  CssClass="btn btn-primary btn-sm" runat="server" CommandName="show_js_profile" CommandArgument='<%# Eval("js_user_id") %>' Text="Show Profile" />
                                &nbsp;&nbsp;&nbsp;
                                <br />
                                <br />
                                &nbsp;
                                <asp:Button ID="btn_request" runat="server"  CssClass="btn btn-primary btn-sm" CommandName="request" Text="Send Request" CommandArgument='<%# Eval("js_user_id") %>' Width="125px" />
                                &nbsp;&nbsp;
                                <asp:Button ID="btn_disconnect" runat="server" CommandArgument='<%# Eval("js_user_id") %>' CommandName="disconnect" CssClass="btn btn-primary btn-sm" Text="Disconnect" Width="118px" />
                                &nbsp;&nbsp;<asp:Button ID="btn_cancel" runat="server" CommandArgument='<%# Eval("js_user_id") %>' CommandName="cancel" CssClass="btn btn-primary btn-sm" Text="Cancel Request" Width="144px" />
                                <br />
                                <br />
                                &nbsp;<br />&nbsp;<br />&nbsp;<br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td style="height: 20px">
<%--------------------------------------------------------------------------------------------------%>
                    <asp:Panel ID="pnl_company" runat="server">
                        <div class="page-header">
                        <h3 class="text-primary ">
                        Company Details
                        </h3></div>
                        <br />
                        <br />
                        <br />
                        <asp:SqlDataSource ID="SqlDataJPSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="spSearchJP" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="tb_search" DefaultValue="1" Name="search_str" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <br />
                        <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataJPSource" OnItemCommand="DataList3_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                <div class="thumbnail">
                                <asp:Image ID="Image4" CssClass="img-responsive img-rounded img-thumbnail" runat="server"  Style="width:300px;height:300px" ImageUrl='<%# Eval("profile_photo_url") %>' />
                                </div><br />
                                <br />
                                Company Name :
                                <asp:Label ID="company_nameLabel" runat="server" Text='<%# Eval("company_name") %>' />
                                <br />
                                <br />
                                Industry :
                                <asp:Label ID="industryLabel" runat="server" Text='<%# Eval("industry") %>' />
                                <br />
                                <br />
                                Founded On :
                                <asp:Label ID="founded_on_yearLabel" runat="server" Text='<%# Eval("founded_on_year") %>' />
                                <br />
                                <br />
                                Size (In Employee) :
                                <asp:Label ID="size_in_empLabel" runat="server" Text='<%# Eval("size_in_emp") %>' />
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
                                Website :
                                <asp:Label ID="website_urlLabel" runat="server" Text='<%# Eval("website_url") %>' />
                                <br />
                                <br />
                                &nbsp;
                                <asp:Button ID="btn_show_jp" CssClass="btn btn-primary" runat="server" CommandName="show_jp_profile" CommandArgument='<%# Eval("jp_user_id") %>' Text="Show" />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
        </div>
    </div>
    
    </asp:Content>
