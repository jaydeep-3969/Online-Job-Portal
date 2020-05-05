<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="jp_job_detailed.aspx.cs" Inherits="OJP.WebForm21" %>
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
            &nbsp;</p>
        <asp:SqlDataSource ID="SqlDataDetailedJobSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="spDetailedJob" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="job_id" QueryStringField="job_id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
       
         <div class="text-left">
       
        <asp:DataList ID="dl_job_detail" runat="server" DataKeyField="job_id" DataSourceID="SqlDataDetailedJobSource" OnItemCommand="dl_job_detail_ItemCommand" style="margin-right: 286px" OnItemDataBound="dl_job_detail_ItemDataBound" >
            <ItemTemplate>
                <table class="nav-justified">
                    <tr>
                        <td colspan="2">
                            <div class="thumbnail" style="text-align: center">
                            <asp:Image ID="Image1" runat="server" CssClass="img-responsive img-rounded img-thumbnail" Style="width:300px;height:300px" ImageUrl='<%# Eval("profile_photo_url") %>' />
                         </div></td>
                    </tr>
                    <tr>
                        <td colspan="2">Company Name :
                            <asp:Label ID="company_nameLabel" runat="server" Text='<%# Eval("company_name") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 246px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 246px">Designation :&nbsp;
                            <asp:Label ID="designationLabel" runat="server" Text='<%# Eval("designation") %>' />
                        </td>
                        <td>Vacancy :&nbsp;
                            <asp:Label ID="vacancyLabel" runat="server" Text='<%# Eval("vacancy") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 246px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 246px">Description : </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;<asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 246px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 246px">Average Salary :
                            <asp:Label ID="salary_avgLabel" runat="server" Text='<%# Eval("salary_avg") %>' />
                        </td>
                        <td>Experience Required :
                            <asp:Label ID="exp_yearLabel" runat="server" Text='<%# Eval("exp_year") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 246px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 246px">Minimum Age :
                            <asp:Label ID="age_minLabel" runat="server" Text='<%# Eval("age_min") %>' />
                        </td>
                        <td>Maximum Age :
                            <asp:Label ID="age_maxLabel" runat="server" Text='<%# Eval("age_max") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 246px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 246px">Post Date :
                            <asp:Label ID="post_dateLabel" runat="server" Text='<%# Eval("post_date", "{0:d}") %>' />
                        </td>
                        <td>Due Date :
                            <asp:Label ID="due_dateLabel" runat="server" Text='<%# Eval("due_date", "{0:d}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 246px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 246px">City :
                            <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                        </td>
                        <td>State :
                            <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 20px; width: 246px;"></td>
                        <td style="height: 20px"></td>
                    </tr>
                    <tr>
                        <td style="height: 20px; width: 246px;">&nbsp;Venue :&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td style="height: 20px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("venue_desc") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 246px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="text-center" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_delete"  CssClass="btn btn-primary" runat="server" CommandName="delete" Text="Delete" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="text-center" colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="text-center" colspan="2">&nbsp; &nbsp;<asp:Button ID="btn_selected_asp" runat="server" CommandArgument='<%# Eval("job_id") %>' CommandName="show_selected_aspirant" CssClass="btn btn-primary" Text="Show Selected Aspirants" Width="185px" />
                            &nbsp; &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="text-center" colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="text-center" colspan="2">
                            <asp:Button ID="btn_aspirant" runat="server" CommandArgument='<%# Eval("job_id") %>' CommandName="show_aspirant" CssClass="btn btn-primary" Text="Show Other Aspirants" Width="178px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;&nbsp;&nbsp;
                            </td>
                    </tr>
                </table>
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
       
         </div>
       
        <p>
        </p>
    </form>
          </div></div>
</asp:Content>
