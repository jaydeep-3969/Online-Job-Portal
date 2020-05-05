<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signup_js_activity.aspx.cs" Inherits="OJP.signup_js_activity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">




    <div class="container-fluid">
        <div class="row">
            <div class="well">
              


                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                 <h2 class="text-center text-info">Activites</h2>
                            </div>
                            <div class="panel-body">


                                <form id="form1" runat="server" class="text-capitalize text-info">



                                    <div class="form-group">
                                        <%--  --%>
                                        <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Activity should not be empty or Skip" ControlToValidate="tb_activity" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_activity">Activity :</label>
                                        <%--  --%>
                                        <asp:TextBox ID="tb_activity" runat="server" CssClass="form-control" Rows="8" TextMode="MultiLine" MaxLength="1000"></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 1000 character)</small>
                                    </div>
                                    <br />
                                    <%--  --%>
                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="btn_submit_Click" Text="Submit &amp; Next" />

                                    <input id="Reset1" type="reset" class="btn btn-primary" value="Reset" />
                                   
                                    <asp:HyperLink ID="hl_skip_activity" runat="server" CssClass="btn btn-danger" NavigateUrl="~/signup_js_achievement.aspx">Skip</asp:HyperLink>
                                  
                                    <asp:Button ID="btn_plus_activity" runat="server" CssClass="btn btn-warning pull-right" OnClick="btn_plus_activity_Click" Text="+" />

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <%--  <form runat="server">
         <h2 class="auto-style37" style="text-align: center"><strong>Activites</strong></h2>
                                <br />
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style12" style="width: 300px; height: 12px;"></td>
                                        <td style="height: 12px"></td>
                                        <td colspan="2" style="height: 12px"></td>
                                        <td class="auto-style12" colspan="2" style="width: 148px; height: 12px;">
                                            </td>
                                        <td class="auto-style12" colspan="2" style="height: 12px"></td>
                                        <td class="auto-style12" style="width: 71px; height: 12px;"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12" style="width: 300px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td colspan="2">&nbsp;</td>
                                        <td class="auto-style12" colspan="2" style="width: 148px">
                                            &nbsp;</td>
                                        <td class="auto-style12" colspan="2">
                                            <asp:Button ID="btn_plus_activity" runat="server" Height="35px" OnClick="btn_plus_activity_Click" Text="+" Width="40px" />
                                        </td>
                                        <td class="auto-style12" style="width: 71px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12" style="width: 300px; height: 168px"></td>
                                        <td style="height: 168px"></td>
                                        <td colspan="2" style="height: 168px">* Acitiviy Description :</td>
                                        <td class="auto-style12" colspan="2" style="width: 148px; height: 168px">
                                            <asp:TextBox ID="tb_activity" runat="server" Rows="8" TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                        <td class="auto-style12" colspan="2" style="height: 168px"></td>
                                        <td class="auto-style12" style="width: 71px; height: 168px"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 300px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td colspan="2">&nbsp;</td>
                                        <td colspan="2" style="width: 148px">(min 1000 char)</td>
                                        <td colspan="2">&nbsp;</td>
                                        <td style="width: 71px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 300px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td colspan="2">&nbsp;</td>
                                        <td colspan="2" style="width: 148px">&nbsp;</td>
                                        <td colspan="2">&nbsp;</td>
                                        <td style="width: 71px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 300px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td style="text-align: right">&nbsp;</td>
                                        <td style="text-align: right">&nbsp;</td>
                                        <td colspan="2" style="text-align: left">
                                           
                                            <input id="btn_reset" type="reset" value="Reset" /></td>
                                        <td style="text-align: right">&nbsp;</td>
                                        <td style="text-align: right; width: 214px">
                                            <asp:HyperLink ID="hl_skip_activity" runat="server" NavigateUrl="~/signup_js_achievement.aspx">Skip (To Achievement)</asp:HyperLink>
                                        </td>
                                        <td style="width: 71px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="height: 33px; width: 300px"></td>
                                        <td style="height: 33px"></td>
                                        <td colspan="2" style="height: 33px">&nbsp;</td>
                                        <td class="auto-style27" style="height: 33px; width: 199px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        <td class="auto-style27" style="height: 33px; width: 148px">&nbsp;</td>
                                        <td colspan="2" style="height: 33px">&nbsp;</td>
                                        <td style="height: 33px">&nbsp;</td>
                                        <td style="height: 33px"></td>
                                        <td style="width: 71px; height: 33px"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 300px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td colspan="2">&nbsp;</td>
                                        <td colspan="2" style="width: 148px">&nbsp;</td>
                                        <td colspan="2">&nbsp;</td>
                                        <td style="width: 71px">&nbsp;</td>
                                    </tr>
                                </table>
    </form>--%>
</asp:Content>


