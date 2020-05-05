<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="admin_home.aspx.cs" Inherits="OJP.admin_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
    <a class="btn-success btn btn-group-justified" href="add_new_admin.aspx">Add New Admin</a>
    <hr />
     <a class="list-group-item active" href="admin_home.aspx">Show Posted Job</a>
     <a class="list-group-item" href="profile_admin.aspx">Profile</a>
     <%--<a class="list-group-item" href="profile_jp_credential.aspx">Credential</a>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>Starting Date:</td>
                <td>
                    <asp:TextBox ID="tb_start_date" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td class="text-left">TO&nbsp; End Date : </td>
                <td class="text-left">
                    <asp:TextBox ID="tb_end_date" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td class="text-left">&nbsp;</td>
                <td class="text-left">
                    <asp:Button ID="btn_show" runat="server" OnClick="btn_show_Click" Text="Show Posted Jobs" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataAdminPostedJobSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="spAdminPostedJobs" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="tb_start_date" DbType="Date" DefaultValue="01/01/2001" Name="start_date" PropertyName="Text" />
                <asp:ControlParameter ControlID="tb_end_date" DbType="Date" DefaultValue="01/01/2001" Name="end_date" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <div class="text-center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataAdminPostedJobSource" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="company_name" HeaderText="Company Name" SortExpression="company_name" />
                    <asp:BoundField DataField="Column1" HeaderText="Posted Total Jobs" ReadOnly="True" SortExpression="Column1" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
    </form>
    <br />
</asp:Content>
