<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signup_js_achievement.aspx.cs" Inherits="OJP.signup_js_achievement" %>
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
            


                <div class="row ">
                    <div class="col-md-8 col-md-offset-2">
                       <div class="panel panel-success">
                            <div class="panel-heading">
                                 <h2 class="text-center text-info">Achievements</h2>
                            </div>
                            <div class="panel-body">


                                <form id="form1" runat="server" class="text-capitalize text-info">



                                    <div class="form-group">
                                        <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Achievement should not be empty or Skip" ControlToValidate="tb_achievement_academic" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                                        <%--  --%>
                                        <label class="text" for="tb_activity">Achievement :</label>
                                        <%--  --%>
                                        <asp:TextBox ID="tb_achievement_academic" runat="server" CssClass="form-control" Rows="8" TextMode="MultiLine" MaxLength="1000"></asp:TextBox>
                                        <%--  --%>
                                        <small class="text-muted">(Max 1000 character)</small>
                                    </div>
                                    <br />
                                    <%-- 
                                        
                                          <asp:Button ID="btn_submit" runat="server" Text="Submit &amp; Next" OnClick="btn_submit_Click" />
                                            <input id="btn_reset" __designer:mapid="4d4" type="reset" value="Reset" /></td>
                                        <td style="width: 192px">
                                         <asp:Button ID="btn_plus_activity" runat="server" Height="29px" OnClick="btn_plus_activity_Click" Text="+" Width="53px" />
                                            <asp:HyperLink ID="hl_skip_achievement" NavigateUrl="~/signup_js_experience.aspx" runat="server">Skip (To Experience)</asp:HyperLink>
                                        --%>





                                    <asp:Button ID="btn_submit" runat="server" CssClass="btn btn-primary" OnClick="btn_submit_Click" Text="Submit &amp; Next" />

                                    <input id="Reset1" type="reset" class="btn btn-primary" value="Reset" />
                                   
                                    <asp:HyperLink ID="hl_skip_achievement" runat="server" CssClass="btn btn-danger" NavigateUrl="~/signup_js_experience.aspx">Skip</asp:HyperLink>
                                  
                                    <asp:Button ID="btn_plus_activity" runat="server" CssClass="btn btn-warning pull-right" OnClick="btn_plus_activity_Click" Text="+" />

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


   <%-- <form runat="server">
          <h2 class="auto-style37" style="text-align: center"><strong>Achievements</strong></h2>
                                <br />
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td style="width: 345px">&nbsp;</td>
                                        <td class="auto-style26">&nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td style="width: 192px">
                                            <asp:Button ID="btn_plus_activity" runat="server" Height="29px" OnClick="btn_plus_activity_Click" Text="+" Width="53px" />
                                        </td>
                                        <td style="width: 59px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 345px">&nbsp;</td>
                                        <td class="auto-style26">&nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td style="width: 192px">&nbsp;</td>
                                        <td style="width: 59px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 345px">&nbsp;</td>
                                        <td class="auto-style26">* Description of Achievement :</td>
                                        <td>
                                            <asp:TextBox ID="tb_achievement_academic" runat="server" Rows="8" TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                        <td style="width: 192px">&nbsp;</td>
                                        <td style="width: 59px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 345px">&nbsp;</td>
                                        <td class="auto-style26">&nbsp;</td>
                                        <td>
                                            (min 1000 char)</td>
                                        <td style="width: 192px">&nbsp;</td>
                                        <td style="width: 59px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 345px">&nbsp;</td>
                                        <td class="auto-style26">&nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td style="width: 192px">&nbsp;</td>
                                        <td style="width: 59px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 345px">&nbsp;</td>
                                        <td class="auto-style26">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td style="width: 192px">&nbsp;</td>
                                        <td style="width: 59px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 345px; text-align: right;">&nbsp;</td>
                                        <td class="auto-style26">&nbsp;</td>
                                        <td>
                                            <asp:Button ID="btn_submit" runat="server" Text="Submit &amp; Next" OnClick="btn_submit_Click" />
                                            <input id="btn_reset" __designer:mapid="4d4" type="reset" value="Reset" /></td>
                                        <td style="width: 192px">
                                            <asp:HyperLink ID="hl_skip_achievement" NavigateUrl="~/signup_js_experience.aspx" runat="server">Skip (To Experience)</asp:HyperLink>
                                        </td>
                                        <td style="width: 59px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 345px">&nbsp;</td>
                                        <td class="auto-style26">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td style="width: 192px">&nbsp;</td>
                                        <td style="width: 59px">&nbsp;</td>
                                    </tr>
                                </table>
    </form>--%>
</asp:Content>
