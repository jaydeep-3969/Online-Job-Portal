<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="profile_js_achievement.aspx.cs" Inherits="OJP.profile_js_achievement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
    <a class="list-group-item" href="profile_js_personal.aspx">Personal Details</a>
    <a class="list-group-item" href="profile_js_academic.aspx">Academic details</a>
    <a class="list-group-item" href="profile_js_skill.aspx">Skills</a>
    <a class="list-group-item" href="profile_js_project.aspx">Projets</a>
    <a class="list-group-item" href="profile_js_activity.aspx">Activities</a>
    <a class="list-group-item active" href="profile_js_achievement.aspx">Achievements</a>
    <a class="list-group-item" href="profile_js_experience.aspx">Experiences</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
        <div class="page-header">
                        <h3 class="text-primary ">
                            Achievements 
                         </h3></div>
        <p>
            <asp:SqlDataSource ID="SqlAchieveDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [js_achievement] WHERE ([js_user_id] = @js_user_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbl_user_id" DefaultValue="1" Name="js_user_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="lbl_user_id" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <asp:DataList ID="dl" runat="server" DataKeyField="achieve_id" DataSourceID="SqlAchieveDataSource" OnItemCommand="dl_ItemCommand" OnItemDataBound="dl_ItemDataBound">
                <EditItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td class="modal-sm" style="width: 158px;">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="modal-sm" style="width: 158px"><h4 class="text-primary"><strong>Achievement :</strong></h4></td>
                            <td>
                                <asp:TextBox ID="tb_achievement" runat="server" Rows="5" Text='<%# Eval("achieved") %>' TextMode="MultiLine" Width="308px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="modal-sm" style="width: 158px">&nbsp;</td>
                            <td>
                                <asp:TextBox ID="tb_achievement_id" runat="server" Text='<%# Eval("achieve_id") %>' Visible="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="modal-sm" style="width: 158px; text-align: center">
                                <asp:Button ID="btn_update" CssClass="btn btn-primary btn-sm" runat="server" CommandName="update" Height="26px" Text="Update" />
                            </td>
                            <td class="text-left">
                                <asp:Button ID="btn_cancel"  CssClass="btn btn-primary btn-sm" runat="server" CommandName="cancel" Text="Cancel" />
                            </td>
                        </tr>
                        <tr>
                            <td class="modal-sm" style="width: 158px">&nbsp;</td>
                            <td>
                                <asp:Label ID="lbl_mode" runat="server" Text="edit" Visible="False"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <FooterTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td class="modal-sm" style="height: 20px; width: 158px;"></td>
                            <td style="height: 20px"><h4 class="text-primary"><strong>Add New Achievement :</strong></h4></td>
                        </tr>
                        <tr>
                            <td class="modal-sm" style="width: 158px"></td>
                            <td>
                                <asp:TextBox ID="tb_achievement" runat="server" Rows="5" Text='<%# Eval("achieved") %>' TextMode="MultiLine" Width="307px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="modal-sm" style="width: 158px">&nbsp;</td>
                            <td>
                                <asp:TextBox ID="tb_achievement_id" runat="server" Text='<%# Eval("js_user_id") %>' Visible="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="modal-sm" style="width: 158px; text-align: center">&nbsp;</td>
                            <td>&nbsp;<asp:Button ID="btn_insert" CssClass="btn btn-primary btn-sm" runat="server" CommandName="insert" Text="Insert" />
                            </td>
                        </tr>
                        <tr>
                            <td class="modal-sm" style="width: 158px">&nbsp;</td>
                            <td>
                                <asp:Label ID="lbl_mode" runat="server" Text="edit" Visible="False"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </FooterTemplate>
                <ItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td>&nbsp;</td>
                            <td class="modal-sm" style="width: 158px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="modal-sm" style="width: 158px"><h4 class="text-primary"><strong>Achievement :</strong></h4></td>
                            <td>
                                <asp:Label ID="achievedLabel0" runat="server" Text='<%# Eval("achieved") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="modal-sm" style="width: 158px">&nbsp;</td>
                            <td>
                                <asp:TextBox ID="tb_achievement_id" runat="server" Text='<%# Eval("achieve_id") %>' Visible="False"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="modal-sm" style="width: 158px; text-align: center">
                                <asp:Button ID="btn_edit" runat="server" CssClass="btn btn-primary btn-sm" CommandName="edit" Height="26px" Text="Edit" />
                            </td>
                            <td>
                                <asp:Button ID="btn_delete" runat="server" CssClass="btn btn-primary btn-sm" CommandName="delete" Text="Delete" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="modal-sm" style="width: 158px">&nbsp;</td>
                            <td>
                                <asp:Label ID="lbl_mode" runat="server" Text="item" Visible="False"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
        </p>
        <p>
        </p>
    </form>
</asp:Content>
