<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="profile_js_project.aspx.cs" Inherits="OJP.profile_js_project" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
    <a class="list-group-item" href="profile_js_personal.aspx">Personal Details</a>
    <a class="list-group-item" href="profile_js_academic.aspx">Academic details</a>
    <a class="list-group-item" href="profile_js_skill.aspx">Skills</a>
    <a class="list-group-item active" href="profile_js_project.aspx">Projets</a>
    <a class="list-group-item" href="profile_js_activity.aspx">Activities</a>
    <a class="list-group-item" href="profile_js_achievement.aspx">Achievements</a>
    <a class="list-group-item" href="profile_js_experience.aspx">Experiences</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
    <p class="text-center">
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
        <div class="page-header">
                        <h3 class="text-primary ">
                            Projects 
                         </h3></div>
        <p>
            <div class="text-center">
                <br />
            </div>
            <asp:SqlDataSource ID="SqlDataProjectSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [js_project] WHERE ([js_user_id] = @js_user_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbl_user_id" DefaultValue="1" Name="js_user_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="lbl_user_id" runat="server" Text="Label" Visible="False"></asp:Label>
        </p>
        <p>
        </p>
        <p>
            <asp:DataList ID="dl" runat="server" DataKeyField="project_id" DataSourceID="SqlDataProjectSource" OnItemCommand="dl_ItemCommand" OnItemDataBound="dl_ItemDataBound">
                <EditItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td>&nbsp;</td>
                            <td><h4 class="text-primary"><strong>Project :</strong></h4></td>
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
                            <td>Title :</td>
                            <td>
                                <asp:TextBox ID="tb_title" runat="server" Text='<%# Eval("title") %>'></asp:TextBox>
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
                            <td>Team Size : </td>
                            <td>
                                <asp:TextBox ID="tb_size" runat="server" Text='<%# Eval("team_size") %>'></asp:TextBox>
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
                            <td>Role : </td>
                            <td>
                                <asp:TextBox ID="tb_role" runat="server" Text='<%# Eval("role") %>'></asp:TextBox>
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
                            <td>Duration :</td>
                            <td>
                                <asp:TextBox ID="tb_duration" runat="server" Text='<%# Eval("duration") %>'></asp:TextBox>
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
                            <td>Description :</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2">
                                <asp:TextBox ID="tb_descr" runat="server" Height="30px" Rows="5" Text='<%# Eval("description") %>' TextMode="MultiLine" Width="262px"></asp:TextBox>
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
                                <asp:TextBox ID="tb_project_id" runat="server" Text='<%# Eval("project_id") %>' Visible="False"></asp:TextBox>
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
                            <td class="text-center">&nbsp;
                                <asp:Button ID="btn_update" CssClass="btn btn-primary btn-sm" runat="server" CommandName="update" Text="Update" />
                                &nbsp;</td>
                            <td class="text-center">
                                <asp:Button ID="btn_cancel" CssClass="btn btn-primary btn-sm" runat="server" CommandName="cancel" Text="Cancel" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <asp:Label ID="lbl_mode" runat="server" Text="edit" Visible="False"></asp:Label>
                    <br />
                </EditItemTemplate>
                <FooterTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td><h4 class="text-primary"><strong>Add New Project :</strong></h4></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Title :</td>
                            <td>
                                <asp:TextBox ID="tb_title" runat="server" Text='<%# Eval("title") %>'></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Team Size : </td>
                            <td>
                                <asp:TextBox ID="tb_size" runat="server" Text='<%# Eval("team_size") %>'></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Role : </td>
                            <td>
                                <asp:TextBox ID="tb_role" runat="server" Text='<%# Eval("role") %>'></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Duration :</td>
                            <td>
                                <asp:TextBox ID="tb_duration" runat="server" Text='<%# Eval("duration") %>'></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Description :</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:TextBox ID="tb_descr" runat="server" Height="30px" Rows="5" Text='<%# Eval("description") %>' TextMode="MultiLine" Width="262px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="tb_project_id" runat="server" Text='<%# Eval("project_id") %>' Visible="False"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-center">&nbsp;
                                <asp:Button ID="btn_insert" CssClass="btn btn-primary btn-sm" runat="server" CommandName="insert" Text="Insert" />
                                &nbsp;</td>
                            <td class="text-center">
                                <asp:Label ID="lbl_mode" runat="server" Text="edit" Visible="False"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </FooterTemplate>
                <ItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td>&nbsp;</td>
                            <td><h4 class="text-primary"><strong>Project :</strong></h4></td>
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
                            <td>Title :</td>
                            <td>
                                <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
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
                            <td>Team Size : </td>
                            <td>
                                <asp:Label ID="team_sizeLabel" runat="server" Text='<%# Eval("team_size") %>' />
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
                            <td>Role : </td>
                            <td>
                                <asp:Label ID="roleLabel" runat="server" Text='<%# Eval("role") %>' />
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
                            <td>Duration :</td>
                            <td>
                                <asp:Label ID="durationLabel" runat="server" Text='<%# Eval("duration") %>' />
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
                            <td>Description :</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2">
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
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
                                <asp:TextBox ID="tb_project_id" runat="server" Text='<%# Eval("project_id") %>' Visible="False"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="lbl_mode" runat="server" Text="item" Visible="False"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="text-center">&nbsp;
                                <asp:Button ID="btn_edit" CssClass="btn btn-primary btn-sm" runat="server" CommandName="edit" Text="Edit" />
                                &nbsp;</td>
                            <td class="text-center">
                                <asp:Button ID="btn_delete" CssClass="btn btn-primary btn-sm" runat="server" CommandName="delete" Text="Delete" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
        </p>
        <p>
        </p>
    </form>
</asp:Content>
