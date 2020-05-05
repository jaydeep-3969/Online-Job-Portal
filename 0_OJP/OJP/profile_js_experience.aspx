<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="profile_js_experience.aspx.cs" Inherits="OJP.WebForm26" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
    <a class="list-group-item" href="profile_js_personal.aspx">Personal Details</a>
    <a class="list-group-item" href="profile_js_academic.aspx">Academic details</a>
    <a class="list-group-item" href="profile_js_skill.aspx">Skills</a>
    <a class="list-group-item" href="profile_js_project.aspx">Projets</a>
    <a class="list-group-item" href="profile_js_activity.aspx">Activities</a>
    <a class="list-group-item" href="profile_js_achievement.aspx">Achievements</a>
    <a class="list-group-item active" href="profile_js_experience.aspx">Experiences</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <div class="page-header">
                        <h3 class="text-primary ">
                       Experiences
                         </h3></div>



    <form id="form1" runat="server">
        <p>
            <br />
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataExperienceSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [js_experience] WHERE ([js_user_id] = @js_user_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbl_user_id" DefaultValue="1" Name="js_user_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        &nbsp;
        </p>
        <p>
            <asp:Label ID="lbl_user_id" runat="server" Text="Label" Visible="False"></asp:Label>
        </p>
        <p>
            <asp:DataList ID="dl" runat="server" DataKeyField="exp_id" DataSourceID="SqlDataExperienceSource" OnItemCommand="dl_ItemCommand" OnItemDataBound="dl_ItemDataBound">
                <EditItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2"><h4 class="text-primary"><strong>Experience :</strong></h4></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 105px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 105px">Institute Name:</td>
                            <td>
                                <asp:TextBox ID="tb_inst_nm" runat="server" Text='<%# Eval("institute_name") %>' ></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 105px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 105px">Designation :</td>
                            <td>
                                <asp:TextBox ID="tb_desig" runat="server" Text='<%# Eval("designation") %>'></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 105px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 105px">Currently Working ? :</td>
                            <td>
                                <asp:RadioButtonList ID="rblist_is_working" runat="server" AutoPostBack="True"  SelectedValue='<%# Eval("is_working") %>' >
                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 105px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 105px">From :</td>
                            <td>
                                <asp:TextBox ID="cld_exp_from" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 105px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 105px">To : </td>
                            <td>
                                <asp:TextBox ID="cld_exp_to" runat="server" TextMode="Date"></asp:TextBox>
                                   
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 20px"></td>
                            <td style="width: 105px; height: 20px"></td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2">Achievement :</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2">
                                <asp:TextBox ID="tb_achievement" runat="server" Rows="5" TextMode="MultiLine" Width="207px" Text='<%# Eval("achievement") %>' Wrap="False"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 105px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2">
                                <asp:TextBox ID="tb_exp_id" runat="server" Text='<%# Eval("exp_id") %>' Visible="False"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 105px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 105px">
                                <asp:Button ID="btn_update" CssClass="btn btn-primary btn-sm" runat="server" CommandName="update" Text="Update" />
                            </td>
                            <td class="text-center">
                                <asp:Button ID="btn_cancel" CssClass="btn btn-primary btn-sm" runat="server" CommandName="cancel" Text="Cancel" />
                                <asp:Label ID="lbl_mode" runat="server" CssClass="btn btn-primary btn-sm" Text="edit" Visible="False"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                </EditItemTemplate>
                <FooterTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2"><h4 class="text-primary"><strong>Add New Experience :</strong></h4></td>
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
                            <td>Institute Name:</td>
                            <td>
                                <asp:TextBox ID="tb_inst_nm" runat="server"></asp:TextBox>
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
                            <td>Designation :</td>
                            <td>
                                <asp:TextBox ID="tb_desig" runat="server"></asp:TextBox>
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
                            <td>Currently Working ? :</td>
                            <td>
                                <asp:RadioButtonList ID="rblist_is_working" runat="server" AutoPostBack="True" >
                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
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
                            <td>From :</td>
                            <td>
                                <asp:TextBox ID="cld_exp_from" runat="server" TextMode="Date">mm/dd/yyyy</asp:TextBox>
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
                            <td>To : </td>
                            <td id="cld_exp_to">
                                <asp:TextBox ID="cld_exp_to" runat="server" Text='<%# Eval("exp_to", "{0:d}") %>' TextMode="Date"></asp:TextBox>
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
                            <td colspan="2">Achievement :</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2">
                                <asp:TextBox ID="tb_achievement" runat="server" Rows="5" TextMode="MultiLine" Width="207px"></asp:TextBox>
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
                            <td colspan="2">&nbsp;</td>
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
                            <td class="text-center">
                                <asp:Button ID="btn_insert" CssClass="btn btn-primary btn-sm" runat="server" CommandName="insert" Text="Insert" />
                            </td>
                            <td class="text-center">
                                <asp:Label ID="lbl_mode" runat="server" Text="edit" Visible="False"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                </FooterTemplate>
                <ItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2"><h4 class="text-primary"><strong>Experience :</strong></h4></td>
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
                            <td>Institute Name:</td>
                            <td>
                                <asp:Label ID="institute_nameLabel" runat="server" Text='<%# Eval("institute_name") %>' />
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
                            <td>Designation :</td>
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
                            <td>
                                
                                From :</td>
                            <td>
                                <asp:Label ID="exp_fromLabel" runat="server" Text='<%# Eval("exp_from", "{0:d}") %>' />
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
                            <td>To : </td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Convert.ToString(Eval("is_working")) == "1" ? "Currently Working" :  Eval("exp_to", "{0:d}") %>'></asp:Label>
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
                            <td>Experience (In yr) :</td>
                            <td>
                                <asp:Label ID="year_expLabel" runat="server" Text='<%# Eval("year_exp") %>' />
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
                            <td>Achievement :</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2">
                                <asp:Label ID="achievementLabel" runat="server" Text='<%# Eval("achievement") %>' />
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
                            <td>
                                <asp:TextBox ID="tb_exp_id" runat="server" Text='<%# Eval("exp_id") %>' Visible="False"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
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
                            <td class="text-center">
                                <asp:Button ID="btn_edit" CssClass="btn btn-primary btn-sm" runat="server" CommandName="edit" Text="Edit" />
                            </td>
                            <td class="text-center">
                                <asp:Button ID="btn_delete" CssClass="btn btn-primary btn-sm" runat="server" CommandName="delete" Text="Delete" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2">
                                <asp:Label ID="lbl_mode" runat="server" Text="item" Visible="False"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
<br />
                </ItemTemplate>
            </asp:DataList>
        </p>
        <p>
        </p>
    </form>
</asp:Content>
