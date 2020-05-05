<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="profile_js_personal.aspx.cs" Inherits="OJP.WebForm27" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
    <a class="list-group-item active" href="profile_js_personal.aspx">Personal Details</a>
    <a class="list-group-item" href="profile_js_academic.aspx">Academic details</a>
    <a class="list-group-item" href="profile_js_skill.aspx">Skills</a>
    <a class="list-group-item" href="profile_js_project.aspx">Projets</a>
    <a class="list-group-item" href="profile_js_activity.aspx">Activities</a>
    <a class="list-group-item" href="profile_js_achievement.aspx">Achievements</a>
    <a class="list-group-item" href="profile_js_experience.aspx">Experiences</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid"><div class="row">
    <form id="form1" runat="server">
         <div class="page-header">
                        <h3 class="text-primary ">
                        Personal Details 
                         </h3></div>
        <p>
            <br />
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataPersonalSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [js_master] WHERE ([js_user_id] = @js_user_id)">
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
            <asp:DataList ID="dl" runat="server" DataKeyField="js_user_id" DataSourceID="SqlDataPersonalSource" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="dl_ItemDataBound">
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
                            <td>First Name :</td>
                            <td>
                                <asp:TextBox ID="tb_fname" runat="server" Text='<%# Eval("fname") %>'></asp:TextBox>
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
                            <td>Middle Name :</td>
                            <td>
                                <asp:TextBox ID="tb_mname" runat="server" Text='<%# Eval("mname") %>'></asp:TextBox>
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
                            <td>Last Name :</td>
                            <td>
                                <asp:TextBox ID="tb_lname" runat="server" Text='<%# Eval("lname") %>'></asp:TextBox>
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
                            <td>Gender :</td>
                            <td>
                                <asp:RadioButtonList ID="rblist_gender" runat="server" SelectedValue='<%# Eval("gender") %>'>
                                    <asp:ListItem Value="0">Male</asp:ListItem>
                                    <asp:ListItem Value="1">Female</asp:ListItem>
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
                            <td>Birth Date :</td>
                            <td>
                                <asp:TextBox ID="cld_birthdate" runat="server" TextMode="Date" Text='<%# Eval("dob", "{0:d}") %>'></asp:TextBox>
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
                            <td>Status :</td>
                            <td>
                                <asp:RadioButtonList ID="rblist_status" runat="server" SelectedValue='<%# Eval("is_fresher") %>' >
                                    <asp:ListItem Value="0">Employee</asp:ListItem>
                                    <asp:ListItem Value="1">Fresher</asp:ListItem>
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
                            <td>Street :</td>
                            <td>
                                <asp:TextBox ID="tb_street" runat="server" Height="22px" Text='<%# Eval("street") %>'></asp:TextBox>
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
                            <td>Landmark :</td>
                            <td>
                                <asp:TextBox ID="tb_landmark" runat="server" Text='<%# Eval("landmark") %>'></asp:TextBox>
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
                            <td>City :</td>
                            <td>
                                <asp:TextBox ID="tb_city" runat="server" Text='<%# Eval("city") %>'></asp:TextBox>
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
                            <td>State :</td>
                            <td>
                                <asp:TextBox ID="tb_state" runat="server" Text='<%# Eval("state") %>'></asp:TextBox>
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
                            <td>Pincode :</td>
                            <td>
                                <asp:TextBox ID="tb_pincode" runat="server" Text='<%# Eval("pincode") %>'></asp:TextBox>
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
                            <td>Mobile No. : </td>
                            <td>
                                <asp:TextBox ID="tb_mob" runat="server" Text='<%# Eval("mobile_no") %>'></asp:TextBox>
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
                            <td>Email :</td>
                            <td>
                                <asp:TextBox ID="tb_email" runat="server" Text='<%# Eval("email") %>'></asp:TextBox>
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
                            <td>Profile Photo :</td>
                            <td>
                                <asp:FileUpload ID="fu_profile_js" runat="server" />
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
                            <td class="text-center">
                                <asp:Button ID="btn_update" CssClass="btn btn-primary" runat="server" CommandName="update" Text="Update" />
                            </td>
                            <td class="text-center">
                                <asp:Button ID="btn_cancel" CssClass="btn btn-primary" runat="server" CommandName="cancel" Text="Cancel" />
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
                    <br />
                </EditItemTemplate>
                <ItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td class="text-center" colspan="5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="text-center" colspan="2">
                                <div class="thumbnail">
                                <asp:Image ID="Image1" CssClass="img-responsive img-rounded img-thumbnail" Style="width:300px;height:300px" runat="server" ImageUrl='<%# Eval("profile_photo_url", "{0}") %>' />
                            </div></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">Full Name :</td>
                            <td>
                                <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                                &nbsp;
                                <asp:Label ID="mnameLabel" runat="server" Text='<%# Eval("mname") %>' />
                                &nbsp;
                                <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">Gender :</td>
                            <td>&nbsp;<asp:Label ID="lbl_gender" runat="server" Text='<%# Convert.ToString(Eval("gender")) == "1" ? "Female" : "Male" %>'></asp:Label>
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">Birth Date:</td>
                            <td>
                                <asp:Label ID="dobLabel" runat="server" Text='<%# Eval("dob", "{0:d}") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">Age :</td>
                            <td>
                                <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">Status :</td>
                            <td>&nbsp;<asp:Label ID="lbl_status" runat="server" Text='<%# Convert.ToString(Eval("is_fresher")) == "1" ? "Fresher" : "Employee" %>'></asp:Label>
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">Street : </td>
                            <td>
                                <asp:Label ID="streetLabel" runat="server" Text='<%# Eval("street") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">Landmark :</td>
                            <td>
                                <asp:Label ID="landmarkLabel" runat="server" Text='<%# Eval("landmark") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">City :</td>
                            <td>
                                <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">State :</td>
                            <td>
                                <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">Pincode :</td>
                            <td>
                                <asp:Label ID="pincodeLabel" runat="server" Text='<%# Eval("pincode") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">Mobile No. :</td>
                            <td>
                                <asp:Label ID="mobile_noLabel" runat="server" Text='<%# Eval("mobile_no") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">Email :</td>
                            <td>
                                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="text-center" colspan="2">
                                <asp:Button ID="btn_edit" runat="server" CommandName="edit"  CssClass="btn btn-primary" CommandArgument='<%# Eval("profile_photo_url") %>' Text="Edit" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 66px">
                                <asp:Label ID="lbl_pro_pic_url" runat="server" Text='<%# Eval("profile_photo_url") %>' Visible="False" />
                            </td>
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
    </form>
        </div>
          </div>
</asp:Content>
