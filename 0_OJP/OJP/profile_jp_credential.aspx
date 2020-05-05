<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="profile_jp_credential.aspx.cs" Inherits="OJP.profile_jp_credential1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
    <a class="btn-success btn btn-group-justified" href="job_post.aspx">Post New Job</a>
    <hr />
    <a class="list-group-item" href="posted_job.aspx">Posted Job</a>
           <a class="list-group-item" href="profile_redirect.aspx">Profile</a>
     <a class="list-group-item active" href="profile_jp_credential.aspx">Credential</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
     <div class="container-fluid"><div class="row">
    <form id="form1" runat="server">
        <div class="page-header">
                        <h3 class="text-primary ">
                       Credentials
                             </h3></div>
       
        <p>
            &nbsp;
        </p>
        <p>
            <asp:DataList ID="dl" runat="server" DataKeyField="user_id" DataSourceID="SqlCredentialDataSource" OnItemCommand="dl_ItemCommand">
                <EditItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td style="width: 196px">&nbsp;</td>
                            <td style="width: 272px">&nbsp;</td>
                            <td style="width: 220px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 196px;">&nbsp;</td>
                            <td style="width: 272px;">Username :</td>
                            <td style="width: 220px">
                                <asp:TextBox ID="tb_username" runat="server" ReadOnly="True" Text='<%# Eval("username") %>'></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 196px;">&nbsp;</td>
                            <td style="width: 272px;">&nbsp;</td>
                            <td style="width: 220px;">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 196px">&nbsp;</td>
                            <td style="width: 272px">Old Password :</td>
                            <td style="width: 220px">
                                <asp:TextBox ID="tb_old_pw" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 196px">&nbsp;</td>
                            <td style="width: 272px">&nbsp;</td>
                            <td style="width: 220px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 196px">&nbsp;</td>
                            <td style="width: 272px">New Password :</td>
                            <td style="width: 220px">
                                <asp:TextBox ID="tb_new_pw" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 196px">&nbsp;</td>
                            <td style="width: 272px">&nbsp;</td>
                            <td style="width: 220px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 196px">&nbsp;</td>
                            <td style="width: 272px">Confirm Password :</td>
                            <td style="width: 220px">
                                <asp:TextBox ID="tb_confirm_pw" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 196px">&nbsp;</td>
                            <td style="width: 272px">&nbsp;</td>
                            <td style="width: 220px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 196px">&nbsp;</td>
                            <td style="width: 272px">Sequrity Question :</td>
                            <td style="width: 220px">
                                <asp:TextBox ID="tb_que" runat="server" Text='<%# Eval("que") %>'></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 20px; width: 196px"></td>
                            <td style="width: 272px; height: 20px"></td>
                            <td style="height: 20px; width: 220px"></td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td style="height: 20px; width: 196px">&nbsp;</td>
                            <td style="width: 272px; height: 20px">Answer :</td>
                            <td style="height: 20px; width: 220px">
                                <asp:TextBox ID="tb_ans" runat="server" Text='<%# Eval("ans") %>'></asp:TextBox>
                            </td>
                            <td style="height: 20px">&nbsp;</td>
                            <td style="height: 20px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 20px; width: 196px">&nbsp;</td>
                            <td style="width: 272px; height: 20px">&nbsp;</td>
                            <td style="height: 20px; width: 220px">&nbsp;</td>
                            <td style="height: 20px">&nbsp;</td>
                            <td style="height: 20px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 20px; width: 196px">&nbsp;</td>
                            <td style="width: 272px; height: 20px">&nbsp;</td>
                            <td style="height: 20px; width: 220px">
                                <asp:TextBox ID="tb_original_pw" runat="server" Text='<%# Eval("password") %>' Visible="False"></asp:TextBox>
                            </td>
                            <td style="height: 20px">&nbsp;</td>
                            <td style="height: 20px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 20px; width: 196px"></td>
                            <td style="width: 272px; height: 20px"></td>
                            <td style="height: 20px; width: 220px"></td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td style="height: 20px; width: 196px"></td>
                            <td class="text-center" style="width: 272px; height: 20px">
                                <asp:Button ID="btn_update" CssClass="btn btn-primary" runat="server" CommandName="update" Text="Update" />
                            </td>
                            <td style="height: 20px; width: 220px">
                                <asp:Button ID="btn_cancel" CssClass="btn btn-primary" runat="server" CommandName="cancel" Text="Cancel" />
                            </td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td style="height: 20px; width: 196px">&nbsp;</td>
                            <td style="width: 272px; height: 20px">&nbsp;</td>
                            <td style="height: 20px; width: 220px">&nbsp;</td>
                            <td style="height: 20px">&nbsp;</td>
                            <td style="height: 20px">&nbsp;</td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <ItemTemplate>
                    <br />
                    <table class="nav-justified">
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 121px">Usename :</td>
                            <td style="width: 150px">
                                <asp:Label ID="lbl_username" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 20px"></td>
                            <td style="width: 121px; height: 20px;"></td>
                            <td style="height: 20px; width: 150px"></td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td style="height: 20px">&nbsp;</td>
                            <td style="width: 121px; height: 20px;">Password :</td>
                            <td style="height: 20px; width: 150px">
                                <asp:Label ID="Label1" runat="server" Text="********"></asp:Label>
                            </td>
                            <td style="height: 20px">&nbsp;</td>
                            <td style="height: 20px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 20px">&nbsp;</td>
                            <td style="width: 121px; height: 20px;">&nbsp;</td>
                            <td style="height: 20px; width: 150px">&nbsp;</td>
                            <td style="height: 20px">&nbsp;</td>
                            <td style="height: 20px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 22px"></td>
                            <td style="width: 121px; height: 22px;">Security Que</td>
                            <td style="width: 150px; height: 22px;">
                                <asp:Label ID="lbl__que" runat="server" Text='<%# Eval("que") %>'></asp:Label>
                            </td>
                            <td style="height: 22px"></td>
                            <td style="height: 22px"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 121px">&nbsp;</td>
                            <td style="width: 150px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 121px">Answer</td>
                            <td style="width: 150px">
                                <asp:Label ID="lbl_ans" runat="server" Text='<%# Eval("ans") %>'></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 121px">&nbsp;</td>
                            <td style="width: 150px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 121px">&nbsp;</td>
                            <td style="width: 150px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="text-center" colspan="2"><strong>
                                <asp:Button ID="btn_edit" runat="server" CssClass="btn btn-primary" CommandName="edit" Text="Edit" Width="80px" />
                            </strong></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <br />
            <asp:SqlDataSource ID="SqlCredentialDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [credential] WHERE ([user_id] = @user_id)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="41" Name="user_id" SessionField="user_id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
    </form>
    </div>
          </div>
</asp:Content>
