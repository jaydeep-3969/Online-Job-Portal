<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="profile_js_activity.aspx.cs" Inherits="OJP.profile_js_activity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
    <a class="list-group-item" href="profile_js_personal.aspx">Personal Details</a>
    <a class="list-group-item" href="profile_js_academic.aspx">Academic details</a>
    <a class="list-group-item" href="profile_js_skill.aspx">Skills</a>
    <a class="list-group-item" href="profile_js_project.aspx">Projets</a>
    <a class="list-group-item active" href="profile_js_activity.aspx">Activities</a>
    <a class="list-group-item" href="profile_js_achievement.aspx">Achievements</a>
    <a class="list-group-item" href="profile_js_experience.aspx">Experiences</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
         <div class="page-header">
                        <h3 class="text-primary ">
                        Activities 
                         </h3></div>
        
            <div class="text-center">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [js_activity] WHERE ([js_user_id] = @js_user_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lbl_user_id" DefaultValue="17" Name="js_user_id" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div class="text-center">
&nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_user_id" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="text-left">
                <asp:DataList ID="dl" runat="server" DataKeyField="activity_id" DataSourceID="SqlDataSource1" OnItemCommand="dl_ItemCommand" OnItemDataBound="dl_ItemDataBound">
                    <EditItemTemplate>
                        <table class="nav-justified">
                            <tr>
                                <td class="text-right" style="width: 304px"><span style="font-size: small"><h4 class="text-primary"><strong>Activity :</strong></h4</span></td>
                                </span></span></span></span></span></span></span>
                                <td>
                                    <asp:TextBox ID="tb_activity" runat="server" Text='<%# Eval("activity") %>' Rows="5" TextMode="MultiLine"></asp:TextBox>
                                    </span></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 304px"></td>
                                <td></span>
                                    <br />
                                    <asp:TextBox ID="tb_activity_id" runat="server" Text='<%# Eval("activity_id") %>' Visible="False"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-right" style="width: 304px; height: 29px">
                                    <asp:Label ID="lbl_mode" runat="server" Text="edit" Visible="False"></asp:Label>
                                </td>
                                <td style="width: 227px; height: 29px">
                                    <br />
                                    <asp:Button ID="btn_update" runat="server" CssClass="btn btn-primary btn-sm" CommandName="update" style="font-size: small" Text="Update" />
                                    <asp:Button ID="btn_cancel" runat="server" CssClass="btn btn-primary btn-sm" CommandName="cancel" style="font-size: small" Text="Cancel" />
                                </td>
                                <td style="font-size: small; height: 29px"></td>
                            </tr>
                        </table>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <table class="nav-justified">
                            <tr>
                                <td class="text-right" style="width: 304px">&nbsp;</td>
                                <td>
                                    <h4 class="text-primary"><strong>Add New Activity :</strong></h4></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-right" style="width: 304px"><span style="font-size: small">
                                    <h4 class="text-primary">&nbsp;</h4>
                                    </span></td>
                                </span></span></span></span></span></span></span></span>
                                <td>
                                    <asp:TextBox ID="tb_activity" runat="server" Rows="5" Text='<%# Eval("activity") %>' TextMode="MultiLine"></asp:TextBox>
                                    </span></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 304px"></td>
                                <td></span>
                                    <asp:TextBox ID="tb_activity_id" runat="server" Text='<%# Eval("activity_id") %>' Visible="False"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-right" style="width: 304px; height: 29px">
                                    &nbsp;</td>
                                <td style="width: 227px; height: 29px">
                                    <br />
                                    <asp:Button ID="btn_insert" CssClass="btn btn-primary btn-sm" runat="server" CommandName="insert" style="font-size: small" Text="Insert" />
                                    &nbsp;&nbsp;
                                    <asp:Label ID="lbl_mode" runat="server" Text="edit" Visible="False"></asp:Label>
                                </td>
                                <td style="font-size: small; height: 29px"></td>
                            </tr>
                        </table>
                    </FooterTemplate>
                    <ItemTemplate>
                        <br />
                        <br />
                        &nbsp;<table class="nav-justified">
                            <tr>
                                <td>&nbsp;</td>
                                <td style="width: 304px"><span style="font-size: small"><h4 class="text-primary"><strong>Activity :</strong></h4></span></td>
                                </span></span></span></span></span></span>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("activity") %>'></asp:Label>
                                    </span></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td style="width: 304px"></td>
                                <td></span>
                                    <br />
                                    <asp:TextBox ID="tb_activity_id" runat="server" Text='<%# Eval("activity_id") %>' Visible="False"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="height: 29px"></td>
                                <td class="text-right" style="width: 304px; height: 29px">
                                    <asp:Label ID="lbl_mode" runat="server" Text="item" Visible="False"></asp:Label>
                                </td>
                                <td style="width: 227px; height: 29px">
                                    <asp:Button ID="btn_edit" runat="server" CssClass="btn btn-primary btn-sm" CommandName="edit" Text="Edit" />
                                    <asp:Button ID="btn_delete" runat="server" CssClass="btn btn-primary btn-sm" CommandName="delete" Text="Delete" />
                                </td>
                                <td style="font-size: small; height: 29px"></td>
                                <td style="height: 29px"></td>
                            </tr>
                        </table>
                        <br />
                        &nbsp;<br />
                        <br />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                </div>
            </div>
        
        <p>
        </p>
        <p>
        </p>
    </form>
</asp:Content>
