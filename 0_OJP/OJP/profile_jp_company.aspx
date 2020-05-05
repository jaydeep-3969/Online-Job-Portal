<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="profile_jp_company.aspx.cs" Inherits="OJP.profile_jp_company" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
    <a class="list-group-item active" href="profile_jp_company.aspx">Company Details</a>
    <a class="list-group-item" href="profile_jp_contact_person.aspx">Contact Person</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
     <div class="container-fluid"><div class="row">
    <form id="form1" runat="server">
          <div class="page-header">
                        <h3 class="text-primary ">
                        Company Details
                             </h3></div>
        <h2 class="text-center"><asp:SqlDataSource ID="SqlCompanyDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [jp_master] WHERE ([jp_user_id] = @jp_user_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lbl_user_id" DefaultValue="41" Name="jp_user_id" PropertyName="Text" Type="Int32" />
            </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="lbl_user_id" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp; </h2>
        <p>
            <asp:DataList ID="dl" runat="server" DataKeyField="jp_user_id" DataSourceID="SqlCompanyDataSource" OnItemCommand="dl_ItemCommand" OnItemDataBound="dl_ItemDataBound">
                <EditItemTemplate>
                    <table class="nav-justified" style="width: 99%">
                        <tr>
                            <td style="height: 20px"></td>
                            <td colspan="2" style="height: 20px;">
                                <div class="thumbnail">
                                <asp:Image ID="Image1" CssClass="img-responsive img-rounded img-thumbnail" Style="width:300px;height:300px" runat="server" ImageUrl='<%# Eval("profile_photo_url") %>' />
                             </div></td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td style="height: 20px"></td>
                            <td style="width: 179px; height: 20px"></td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2">
                                <asp:FileUpload ID="fu_profile" runat="server" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">Company Name :</td>
                            <td>
                                <asp:TextBox ID="tb_company" runat="server" Text='<%# Eval("company_name") %>'></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">Industry :</td>
                            <td>
                                <asp:TextBox ID="tb_industry" runat="server" Text='<%# Eval("industry") %>'></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 22px"></td>
                            <td style="width: 179px; height: 22px;">Size in Employee :</td>
                            <td style="height: 22px">
                                <asp:TextBox ID="tb_size" runat="server" Text='<%# Eval("size_in_emp") %>'></asp:TextBox>
                            </td>
                            <td style="height: 22px"></td>
                            <td style="height: 22px"></td>
                        </tr>
                        <tr>
                            <td style="height: 20px"></td>
                            <td style="height: 20px; width: 179px"></td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">Mobile No. :</td>
                            <td>
                                <asp:TextBox ID="tb_mobile" runat="server" Text='<%# Eval("mobile_no") %>'></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">Founded On :</td>
                            <td>
                                <asp:TextBox ID="tb_found" runat="server" Text='<%# Eval("founded_on_year") %>'></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">Website URL :</td>
                            <td>
                                <asp:TextBox ID="tb_website" runat="server" Text='<%# Eval("website_url") %>'></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">Street :</td>
                            <td>
                                <asp:TextBox ID="tb_street" runat="server" Text='<%# Eval("street") %>'></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">Landmark :</td>
                            <td>
                                <asp:TextBox ID="tb_landmark" runat="server" Text='<%# Eval("landmark") %>'></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">City :</td>
                            <td>
                                <asp:TextBox ID="tb_city" runat="server" Text='<%# Eval("city") %>'></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 20px"></td>
                            <td style="width: 179px; height: 20px">State :</td>
                            <td style="height: 20px">
                                <asp:TextBox ID="tb_state" runat="server" Text='<%# Eval("state") %>'></asp:TextBox>
                            </td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 20px"></td>
                            <td style="width: 179px; height: 20px;">Pincode :</td>
                            <td style="height: 20px">
                                <asp:TextBox ID="tb_pincode" runat="server" Text='<%# Eval("pincode") %>'></asp:TextBox>
                            </td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">Description</td>
                            <td>
                                <asp:TextBox ID="tb_desc" runat="server" Rows="5" Text='<%# Eval("description") %>' TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="text-center" style="width: 179px">
                                <asp:Button ID="btn_update" CssClass="btn btn-primary"  runat="server" CommandName="update" Text="Update" />
                            </td>
                            <td>
                                <asp:Button ID="btn_cancel" CssClass="btn btn-primary"  runat="server" CommandName="cancel" Text="Cancel" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>
                                <asp:Label ID="lbl_mode" runat="server" Text="edit" Visible="False"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <ItemTemplate>
                    <table class="nav-justified" style="width: 99%">
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2">
                                  <div class="thumbnail">
                                <asp:Image ID="Image1" runat="server" CssClass="img-responsive img-rounded img-thumbnail" Style="width:300px;height:300px" ImageUrl='<%# Eval("profile_photo_url") %>' />
                           </div> </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">Company Name :</td>
                            <td>
                                <asp:Label ID="company_nameLabel0" runat="server" Text='<%# Eval("company_name") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">Industry :</td>
                            <td>
                                <asp:Label ID="industryLabel0" runat="server" Text='<%# Eval("industry") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">Size in Employee :</td>
                            <td>
                                <asp:Label ID="size_in_empLabel0" runat="server" Text='<%# Eval("size_in_emp") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 20px"></td>
                            <td style="height: 20px; width: 179px"></td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">Mobile No. :</td>
                            <td>
                                <asp:Label ID="mobile_noLabel0" runat="server" Text='<%# Eval("mobile_no") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">Founded On :</td>
                            <td>
                                <asp:Label ID="founded_on_yearLabel0" runat="server" Text='<%# Eval("founded_on_year") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">Website URL :</td>
                            <td>
                                <asp:Label ID="website_urlLabel0" runat="server" Text='<%# Eval("website_url") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">Street :</td>
                            <td>
                                <asp:Label ID="streetLabel0" runat="server" Text='<%# Eval("street") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">Landmark :</td>
                            <td>
                                <asp:Label ID="landmarkLabel0" runat="server" Text='<%# Eval("landmark") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">City :</td>
                            <td>
                                <asp:Label ID="cityLabel0" runat="server" Text='<%# Eval("city") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 20px"></td>
                            <td style="width: 179px; height: 20px">State :</td>
                            <td style="height: 20px">
                                <asp:Label ID="stateLabel0" runat="server" Text='<%# Eval("state") %>' />
                            </td>
                            <td style="height: 20px"></td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">Pincode :</td>
                            <td>
                                <asp:Label ID="pincodeLabel0" runat="server" Text='<%# Eval("pincode") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">Description</td>
                            <td>
                                <asp:Label ID="descriptionLabel0" runat="server" Text='<%# Eval("description") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="text-center" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;<br />
                                <asp:Button ID="btn_edit" runat="server" CssClass="btn btn-primary" CommandName="edit" Height="33px" Text="Edit" Width="98px" />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 179px">&nbsp;</td>
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
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
        </p>
        <p>
        </p>
    </form>
         </div>
          </div>
</asp:Content>

