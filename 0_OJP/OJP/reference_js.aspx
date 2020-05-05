<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="reference_js.aspx.cs" Inherits="OJP.reference_js" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
        <a class="list-group-item" href="job_recommended.aspx">Recommended Jobs</a>
    <a class="list-group-item" href="connection_overview.aspx">Connections</a>
    <a class="list-group-item" href="connection_request.aspx">Requests</a>
    <a class="list-group-item" href="job_saved.aspx">Saved Jobs</a>
    <a class="list-group-item" href="job_applied.aspx">Applied Jobs</a>
    <a class="list-group-item" href="job_referred.aspx">Referred Jobs</a>
    <a class="list-group-item" href="job_approved.aspx">Approved Jobs</a>
    <a class="list-group-item active" href="profile_redirect.aspx?refer=1">References</a>
   <a class="list-group-item" href="profile_redirect.aspx">Profile</a>

    <a class="list-group-item" href="notification_accept.aspx">Notifications</a>
    <hr/>
    <div class="list-group">
        <a class="list-group-item" href="profile_js_credential.aspx">Credentials</a> 
        <a class="list-group-item" href="profile_js_preferences.aspx">Preferences</a>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid"><div class="row">

    <form id="form1" runat="server">
<div class="page-header">
                        <h3 class="text-primary ">
                        References
                             </h3></div>
        <p class="text-center">
            <asp:SqlDataSource ID="SqlReferenceDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [js_reference] WHERE ([js_user_id] = @js_user_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbl_user_id" DefaultValue="1" Name="js_user_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p class="text-center">
            <asp:Label ID="lbl_user_id" runat="server" Text="Label" Visible="False"></asp:Label>
        </p>
        <p class="text-center">
           
        </p>
        <p class="text-center">
            <asp:DataList ID="dl" runat="server" DataSourceID="SqlReferenceDataSource" SelectedIndex="1" OnItemCommand="dl_ItemCommand" BorderStyle="None" BorderWidth="0px" OnItemDataBound="dl_ItemDataBound">
                <EditItemTemplate>
                    <div class="text-left">
                        <table class="nav-justified">
                            <tr>
                                <td>&nbsp;</td>
                                <td colspan="2"><h4 class="text-primary"><strong>Reference :</strong></h4></td>
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
                                <td>Name : </td>
                                <td>
                                    <asp:TextBox ID="tb_name" runat="server" Text='<%# Eval("name") %>'></asp:TextBox>
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
                                <td>Institue Name :</td>
                                <td>
                                    <asp:TextBox ID="tb_institute" runat="server" Text='<%# Eval("institute_name") %>'></asp:TextBox>
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
                                    <asp:TextBox ID="tb_designation" runat="server" Text='<%# Eval("designation") %>'></asp:TextBox>
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
                                <td>Mobile No :</td>
                                <td>
                                    <asp:TextBox ID="tb_mobile" runat="server" Text='<%# Eval("mobile_no") %>'></asp:TextBox>
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
                                <td>
                                    <asp:Label ID="lbl_mode" runat="server" Text="edit" Visible="False"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tb_ref" runat="server" Text='<%# Eval("ref_id") %>' Visible="False"></asp:TextBox>
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
                                    <asp:Button ID="Button1" runat="server" CommandName="update" CssClass="btn btn-primary" Text="Update" />
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" CommandName="cancel" CssClass="btn btn-primary" Text="Cancel" />
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
                                <td>&nbsp;</td>
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
                        </table>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <br />
                    </div>
                </EditItemTemplate>
                <FooterTemplate>
                    <div class="text-left">
                        <table class="nav-justified">
                            <tr>
                                <td>&nbsp;</td>
                                <td colspan="2"><h4 class="text-primary"><strong>Add New Reference :</strong></h4></td>
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
                                <td>Name :</td>
                                <td>
                                    <asp:TextBox ID="tb_name" runat="server"></asp:TextBox>
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
                                <td>Institue Name :&nbsp; </td>
                                <td>
                                    <asp:TextBox ID="tb_institute" runat="server"></asp:TextBox>
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
                                    <asp:TextBox ID="tb_designation" runat="server"></asp:TextBox>
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
                                <td>Mobile No :</td>
                                <td>
                                    <asp:TextBox ID="tb_mobile" runat="server"></asp:TextBox>
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
                                <td style="height: 20px"></td>
                                <td style="height: 20px">Email :</td>
                                <td style="height: 20px">
                                    <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
                                </td>
                                <td style="height: 20px"></td>
                                <td style="height: 20px"></td>
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
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="tb_ref" runat="server" Text='<%# Eval("ref_id") %>' Visible="False"></asp:TextBox>
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
                                    <asp:Button ID="btn_insert" runat="server" CommandName="insert" CssClass="btn btn-primary" Text="Insert" />
                                </td>
                                <td>
                                    <asp:Label ID="lbl_mode" runat="server" Text="edit" Visible="False"></asp:Label>
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
                                <td>&nbsp;</td>
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
                        </table>
                        <br />
                        <br />
                        &nbsp;<br />&nbsp;&nbsp;<br /> <br /><br /><br /><br /><br /><br /><br /><br /><br />&nbsp;
                        <br />
                    </div>
                </FooterTemplate>
                <ItemTemplate>
                    <div class="text-left">
                        <table class="nav-justified">
                            <tr>
                                <td>
                                    <h4 class="text-primary"><strong>Reference :</strong></h4>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        Name :
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                        <br />
                        <br />
                        Institue Name :<asp:Label ID="Label2" runat="server" Text='<%# Eval("institute_name") %>'></asp:Label>
                        <br />
                        <br />
                        Designation :<asp:Label ID="Label3" runat="server" Text='<%# Eval("designation") %>'></asp:Label>
                        <br />
                        <br />
                        Mobile No :<asp:Label ID="Label4" runat="server" Text='<%# Eval("mobile_no") %>'></asp:Label>
                        <br />
                        <br />
                        Email :<asp:Label ID="Label5" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="tb_ref" runat="server" Text='<%# Eval("ref_id") %>' Visible="False"></asp:TextBox>
                        &nbsp;
                        <asp:Label ID="lbl_mode" runat="server" Text="item" Visible="False"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btn_edit" runat="server" CommandName="edit" CssClass="btn btn-primary" Text="Edit" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_delete" runat="server" CommandName="delete" CssClass="btn btn-primary" Text="Delete" />
                        <br />
                        <br />
                    </div>
                </ItemTemplate>
            
              


              
            </asp:DataList>
        </p>
        <p>
            &nbsp;</p>
        <p>
        </p>
    </form>
          </div>
          </div>

</asp:Content>
