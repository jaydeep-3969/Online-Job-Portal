<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="profile_js_skill.aspx.cs" Inherits="OJP.profile_js_skill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
    <a class="list-group-item" href="profile_js_personal.aspx">Personal Details</a>
    <a class="list-group-item" href="profile_js_academic.aspx">Academic details</a>
    <a class="list-group-item active" href="profile_js_skill.aspx">Skills</a>
    <a class="list-group-item" href="profile_js_project.aspx">Projets</a>
    <a class="list-group-item" href="profile_js_activity.aspx">Activities</a>
    <a class="list-group-item" href="profile_js_achievement.aspx">Achievements</a>
    <a class="list-group-item" href="profile_js_experience.aspx">Experiences</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
        <div class="page-header">
                        <h3 class="text-primary ">
                        Skills
                         </h3></div>
      
        <p class="text-center">
          
            <asp:SqlDataSource ID="SqlSkillDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [js_skill] WHERE ([js_user_id] = @js_user_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbl_user_id" DefaultValue="1" Name="js_user_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            </p>
        <p class="text-center">
          
            <asp:Label ID="lbl_user_id" runat="server" Text="Label" Visible="False"></asp:Label>
            </p>
        <p>
          
            <asp:DataList ID="dl" runat="server" DataSourceID="SqlSkillDataSource" OnItemCommand="dl_ItemCommand" OnItemDataBound="dl_ItemDataBound">
                <EditItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td><h4 class="text-primary"><strong>Skill :</strong></h4</td>
                            <td>
                                <asp:TextBox ID="tb_skill" runat="server" Text='<%# Eval("skill") %>' Rows="5" TextMode="MultiLine" Width="302px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="tb_skill_id" runat="server" Text='<%# Eval("skill_id") %>' Visible="False"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="btn_update" runat="server" CssClass="btn btn-primary btn-sm" CommandName="update" Text="Update" />
                                <asp:Button ID="btn_cancel" runat="server" CssClass="btn btn-primary btn-sm" CommandName="cancel" Text="Cancel" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="lbl_mode" runat="server" Text="edit" Visible="False"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <FooterTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td><h4 class="text-primary"><strong>Add New Skill :</strong></h4></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td></td>
                            <td>
                                <asp:TextBox ID="tb_skill" runat="server" Text='<%# Eval("skill") %>' Rows="5" TextMode="MultiLine" Width="278px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="tb_skill_id" runat="server" Text='<%# Eval("skill_id") %>' Visible="False"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="btn_insert" runat="server" CssClass="btn btn-primary btn-sm" CommandName="insert" Text="Insert" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="lbl_mode" runat="server" Text="edit" Visible="False"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </FooterTemplate>
                <ItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td><h4 class="text-primary"><strong>Skill :</strong></h4></td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("skill") %>'></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="tb_skill_id" runat="server" Text='<%# Eval("skill_id") %>' Visible="False"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="btn_edit" CssClass="btn btn-primary btn-sm" runat="server" CommandName="edit" Text="Edit" />
                                <asp:Button ID="btn_delete"  CssClass="btn btn-primary btn-sm" runat="server" CommandName="delete" Text="Delete" />
                            </td>
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
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </p>
        <p>
          
            &nbsp;</p>
       
    </form>
</asp:Content>

