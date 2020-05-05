<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="job_detailed.aspx.cs" Inherits="OJP.WebForm9" %>
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
                        Job Details
                         </h3></div>
    <p>
       
        &nbsp;
        <asp:SqlDataSource ID="SqlDataDetailedJobSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="spDetailedJob" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="job_id" QueryStringField="job_id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
       
    </p>
    <p>
       
        &nbsp;</p>
    <p class="text-center">
       
        <asp:DataList ID="dl_job_detail" runat="server" DataKeyField="job_id" DataSourceID="SqlDataDetailedJobSource" OnItemCommand="dl_job_detail_ItemCommand" OnItemDataBound="dl_job_detail_ItemDataBound">
            <ItemTemplate>
                <table class="nav-justified">
                    <tr>
                        <td colspan="2">
                            <div class="thumbnail">
                            <asp:Image ID="Image1" CssClass="img-responsive img-rounded img-thumbnail" Style="width:300px;height:300px" runat="server" ImageUrl='<%# Eval("profile_photo_url") %>' />
                        </div>
                                </td>
                    </tr>
                    <tr>
                        <td style="width: 439px">Company Name :
                            <asp:Label ID="company_nameLabel" runat="server" Text='<%# Eval("company_name") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 439px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 439px">Designation :&nbsp;
                            <asp:Label ID="designationLabel" runat="server" Text='<%# Eval("designation") %>' />
                        </td>
                        <td>Vacancy :&nbsp;
                            <asp:Label ID="vacancyLabel" runat="server" Text='<%# Eval("vacancy") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 439px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 439px">Description : </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;<asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 439px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 439px">Average Salary :
                            <asp:Label ID="salary_avgLabel" runat="server" Text='<%# Eval("salary_avg") %>' />
                        </td>
                        <td>Experience Required :
                            <asp:Label ID="exp_yearLabel" runat="server" Text='<%# Eval("exp_year") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 439px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 439px">Minimum Age :
                            <asp:Label ID="age_minLabel" runat="server" Text='<%# Eval("age_min") %>' />
                        </td>
                        <td>Maximum Age :
                            <asp:Label ID="age_maxLabel" runat="server" Text='<%# Eval("age_max") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 439px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 439px">Post Date :
                            <asp:Label ID="post_dateLabel" runat="server" Text='<%# Eval("post_date", "{0:d}") %>' />
                        </td>
                        <td>Due Date :
                            <asp:Label ID="due_dateLabel" runat="server" Text='<%# Eval("due_date", "{0:d}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 439px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 439px">City :
                            <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                        </td>
                        <td>State :
                            <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 20px; width: 439px;"></td>
                        <td style="height: 20px"></td>
                    </tr>
                    <tr>
                        <td style="height: 20px; width: 439px;">&nbsp; &nbsp;<asp:Button CssClass="btn btn-primary" ID="btn_apply" runat="server" CommandName="apply_job" CommandArgument='<%# Eval("job_id") %>' Text="Apply" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btn_save" runat="server" CssClass="btn btn-primary" CommandName="save_job" Text="Save" CommandArgument='<%# Eval("job_id") %>'/>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btn_refer" runat="server" CssClass="btn btn-primary" CommandName="refer_job" CommandArgument='<%# Eval("job_id") %>' Text="Refer"  />
                        </td>
                        <td style="height: 20px">
                            <asp:Button ID="btn_show_company" runat="server" CssClass="btn btn-primary" CommandName="show_company" CommandArgument='<%# Eval("jp_user_id") %>' Text="Show Company Detail" Width="176px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 439px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
       
    </p>
    </form>
         </div></div>
</asp:Content>
