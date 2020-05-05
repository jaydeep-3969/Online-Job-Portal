<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="profile_jp_contact_person.aspx.cs" Inherits="OJP.profile_jp_contact_person" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
    <a class="list-group-item" href="profile_jp_company.aspx">Company Details</a>
    <a class="list-group-item active" href="profile_jp_contact_person.aspx">Contact Person</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid"><div class="row">
    <form id="form1" runat="server">
        <div class="page-header">
                        <h3 class="text-primary ">
                        Contact Person Details
                             </h3></div>
        <p>
            &nbsp;</p>
       
        <p>
            <asp:Label ID="lbl_user_id" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <div class="text-left">
            <asp:DataList ID="dl" runat="server" DataKeyField="jp_user_id" DataSourceID="SqlCompanyDataSource" OnItemCommand="dl_ItemCommand" OnItemDataBound="dl_ItemDataBound">
                <EditItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td style="height: 20px; width: 257px"></td>
                            <td style="height: 20px; width: 182px"></td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td style="width: 257px">&nbsp;</td>
                            <td style="width: 182px">Name :</td>
                            <td>
                                <asp:TextBox ID="tb_name" runat="server" Text='<%# Eval("contact_person") %>'></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 257px">&nbsp;</td>
                            <td style="width: 182px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 20px; width: 257px"></td>
                            <td style="width: 182px; height: 20px">Mobile No. :</td>
                            <td style="height: 20px">
                                <asp:TextBox ID="tb_mobile" runat="server" Text='<%# Eval("mobile_no") %>'></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 257px">&nbsp;</td>
                            <td style="width: 182px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 257px">&nbsp;</td>
                            <td style="width: 182px">Email :</td>
                            <td>
                                <asp:TextBox ID="tb_email" runat="server" Text='<%# Eval("email") %>'></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 257px; height: 20px"></td>
                            <td style="width: 182px; height: 20px"></td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td style="width: 257px">&nbsp;</td>
                            <td style="width: 182px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 257px">&nbsp;</td>
                            <td class="text-left" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btn_update" runat="server" CssClass="btn btn-primary" CommandName="update" Text="Update" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btn_cancel" runat="server" CssClass="btn btn-primary" CommandName="cancel" Text="Cancel" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 257px">&nbsp;</td>
                            <td style="width: 182px">&nbsp;</td>
                            <td>
                                <asp:Label ID="lbl_mode" runat="server" Text="edit" Visible="False"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <ItemTemplate>
                    <br />
                    <table class="nav-justified">
                        <tr>
                            <td style="height: 20px; width: 358px"></td>
                            <td style="height: 20px; width: 182px"></td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td style="width: 358px">&nbsp;</td>
                            <td style="width: 182px">Name :</td>
                            <td>
                                <asp:Label ID="contact_personLabel0" runat="server" Text='<%# Eval("contact_person") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 358px">&nbsp;</td>
                            <td style="width: 182px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 20px; width: 358px"></td>
                            <td style="width: 182px; height: 20px">Mobile No. :</td>
                            <td style="height: 20px">
                                <asp:Label ID="mobile_noLabel0" runat="server" Text='<%# Eval("mobile_no") %>' />
                            </td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td style="width: 358px">&nbsp;</td>
                            <td style="width: 182px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 358px">&nbsp;</td>
                            <td style="width: 182px">Email :</td>
                            <td>
                                <asp:Label ID="emailLabel0" runat="server" Text='<%# Eval("email") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 358px; height: 20px"></td>
                            <td style="width: 182px; height: 20px"></td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td style="width: 358px">&nbsp;</td>
                            <td style="width: 182px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 358px">&nbsp;</td>
                            <td class="text-center" colspan="2">
                                <asp:Button ID="btn_edit" runat="server" CssClass="btn btn-primary" CommandName="edit" Text="Edit" Width="124px" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 358px">&nbsp;</td>
                            <td style="width: 182px">&nbsp;</td>
                            <td>
                                <asp:Label ID="lbl_mode" runat="server" Text="item" Visible="False"></asp:Label>
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
            </div>
        </p>
        <p>
            
            <asp:SqlDataSource ID="SqlCompanyDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [jp_master] WHERE ([jp_user_id] = @jp_user_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbl_user_id" DefaultValue="41" Name="jp_user_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
    </form>
    </div>
          </div>
</asp:Content>

