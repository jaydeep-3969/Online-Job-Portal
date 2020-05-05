<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signup_js.aspx.cs" Inherits="OJP.signup_js" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="menu" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body_title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24"></td>
                <td class="auto-style25">
                    <asp:Wizard ID="Wizard1" runat="server" Height="280px" Width="938px" ActiveStepIndex="1" CssClass="auto-style36" BackColor="White" FinishCompleteButtonText="Submit" OnFinishButtonClick="Wizard1_FinishButtonClick">
                        <WizardSteps>

                           <%--Credential Details of Job Seeker--%>

                            <%--Personal Details--%>

                            <%--Academic--%>

                            <%--Project--%>

                            <%--Achievement Details--%>

                            <%--Experience Details--%>

                            <%--Skills--%>

                            <%--Preference--%>

                            <asp:WizardStep runat="server" ID="wz_credential" Title="Credential">

                                <h2 class="auto-style5"><strong>Credentials</strong></h2>
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style14"></td>
                                        <td class="auto-style48"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>

                                        <td class="auto-style15">&nbsp;</td>

                                        <td class="auto-style49">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style15">* User Name :</td>
                                        <td class="auto-style49">
                                            <asp:TextBox ID="tb_username" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_username" ErrorMessage="* Username should not empty"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12"></td>

                                        <td class="auto-style14"></td>

                                        <td class="auto-style48">(min 6 char &amp; only [a-z][A-Z][0-9][ _ ]&nbsp; allowed)</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style15">* Password :</td>
                                        <td class="auto-style49">
                                            <asp:TextBox ID="tb_password" runat="server" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_password" ErrorMessage="* Password should not empty"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style56"></td>

                                        <td class="auto-style57"></td>

                                        <td class="auto-style58">(min 6 char &amp; only [a-z][A-Z][0-9][ any special char ]&nbsp; allowed)</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style15">* Confirm Password :</td>
                                        <td class="auto-style49">
                                            <asp:TextBox ID="tb_confirm_password" runat="server" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_confirm_password" ErrorMessage="* Password should not empty"></asp:RequiredFieldValidator>
                                            <br />
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tb_password" ControlToValidate="tb_confirm_password" ErrorMessage="* Password not matched"></asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12"></td>

                                        <td class="auto-style14"></td>

                                        <td class="auto-style48"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18"></td>
                                        <td class="auto-style44">* Security Que :</td>
                                        <td class="auto-style45">
                                            <asp:TextBox ID="tb_que" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_que" ErrorMessage="* Security Question should not empty"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12"></td>

                                        <td class="auto-style14"></td>

                                        <td class="auto-style48">(max 200 char allowed)</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style15">* Answer :</td>
                                        <td class="auto-style49">
                                            <asp:TextBox ID="tb_ans" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_ans" ErrorMessage="* Answer should not empty"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>

                                        <td class="auto-style15">&nbsp;</td>

                                        <td class="auto-style49">(max 50 char allowed)</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style15">&nbsp;</td>
                                        <td class="auto-style49">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style15">&nbsp;</td>
                                        <td class="auto-style49">(* Form submition will be at end *)</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>

                            </asp:WizardStep>

                            <asp:WizardStep runat="server" ID="wz_personal" title="Personal Detail">
                                <h2><strong>Personal Details</strong></h2>
                                <p>
                                    &nbsp;</p>
                                <table class="auto-style1">
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">* Full Name :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_first" runat="server" ToolTip="First Name"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_middle" runat="server" ToolTip="Middle Name"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_last" runat="server" ToolTip="Last Name"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">( (first + middle + last) Name)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18"></td>
                                        <td class="auto-style19">* Mobile No :</td>
                                        <td class="auto-style20">
                                            <asp:TextBox ID="tb_mobile" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18"></td>
                                        <td class="auto-style18"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">* Email :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">* Gender :</td>
                                        <td class="auto-style17">
                                            <asp:RadioButtonList ID="rdlist_gender" runat="server" >
                                                <asp:ListItem Value="0">Male</asp:ListItem>
                                                <asp:ListItem Value="1">Female</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">* City :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_city" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">* State :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_state" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">* Pincode :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_pincode" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">* Street :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_street" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">(with block no and society info)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">* Landmark :</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="tb_landmark" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">(famous place around address)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">* Status :</td>
                                        <td class="auto-style17">
                                            <asp:RadioButtonList ID="rblist_status" runat="server" >
                                                <asp:ListItem Value="0">Employee</asp:ListItem>
                                                <asp:ListItem Value="1">Fresher</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">* Birth Date :</td>
                                        <td class="auto-style17">
                                            <asp:Calendar ID="cld_birthdate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                                <NextPrevStyle VerticalAlign="Bottom" />
                                                <OtherMonthDayStyle ForeColor="Gray" />
                                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                                <SelectorStyle BackColor="#CCCCCC" />
                                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                                <WeekendDayStyle BackColor="#FFFFCC" />
                                            </asp:Calendar>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">Profile Photo :</td>
                                        <td class="auto-style17">
                                            <asp:FileUpload ID="fu_profile_js" runat="server" />
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                  
                                 
                                 
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                         
                                </table>
                            </asp:WizardStep>

                            <asp:WizardStep runat="server" ID="wc_acedemic" title="Academic">
                                <h2><strong>Academic</strong></h2>
                                <br />
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">* Institute Name :</td>
                                        <td>
                                            <asp:TextBox ID="tb_institute_academic" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>(max 200 char)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">* Degree :</td>
                                        <td>
                                            <asp:TextBox ID="tb_degree" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style22"></td>
                                        <td class="auto-style12">(max 100 char)</td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">* Mark Type :</td>
                                        <td>
                                            <asp:RadioButtonList ID="rblist_mark_type" runat="server">
                                                <asp:ListItem Value="1">Percentage (Base 100)</asp:ListItem>
                                                <asp:ListItem Value="0">CPI (Base 10)</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18"></td>
                                        <td class="auto-style40">* Mark :</td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="tb_mark" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18"></td>
                                        <td class="auto-style18"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18"></td>
                                        <td class="auto-style40">PR(if contain) :</td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="tb_pr" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18"></td>
                                        <td class="auto-style18"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>(percentile rank, out of 99.99)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">* Branch :</td>
                                        <td>
                                            <asp:TextBox ID="tb_branch" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">* Passing Year :</td>
                                        <td>
                                            <asp:TextBox ID="tb_passing_year" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style22"></td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style22"></td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style50">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:WizardStep>

                            <asp:WizardStep runat="server" ID="wz_project" title="Project">
                                <h2><strong>Projects</strong></h2>
                                <br />
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style53"></td>
                                        <td class="auto-style54">
                                            <h4><strong>Project 1</strong></h4>
                                        </td>
                                        <td class="auto-style54">&nbsp;</td>
                                        <td class="auto-style53">
                                        </td>
                                        <td class="auto-style53"></td>
                                        <td class="auto-style53"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18"></td>
                                        <td class="auto-style38">* Title :</td>
                                        <td class="auto-style38">&nbsp;</td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="tb_title" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18"></td>
                                        <td class="auto-style18"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td>(max 100 char)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style23">* Description :</td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="tb_desc" runat="server" Rows="5" TextMode="MultiLine" Width="200px"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td>(max 2000 char)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18"></td>
                                        <td class="auto-style38">* Team Size :</td>
                                        <td class="auto-style38">&nbsp;</td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="tb_team_size" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18"></td>
                                        <td class="auto-style18"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td>(Integer value)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18"></td>
                                        <td class="auto-style38">&nbsp;* Role :</td>
                                        <td class="auto-style38">&nbsp;</td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="tb_role" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18"></td>
                                        <td class="auto-style18"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td>(e.g.&nbsp; admin, designer, manager)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style23">* Duration :</td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="tb_duration" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style55"></td>
                                        <td class="auto-style55">&nbsp;</td>
                                        <td class="auto-style12">(e.g. 2 month, 1 week, 5 day)</td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12"></td>
                                        <td></td>
                                        <td class="auto-style12" colspan="3">&nbsp;</td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td colspan="3">
                                            <asp:Panel ID="pnl_project" runat="server">
                                            </asp:Panel>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                            
                            <asp:WizardStep runat="server" ID="wz_skill" title="Skill">
                                <h2><strong>Skills</strong></h2>
                                <br />
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style23">* Skill Description :</td>
                                        <td>
                                            <asp:TextBox ID="tb_skill" runat="server" Rows="8" TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td>(min 1000 char)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:WizardStep>

                            <asp:WizardStep runat="server" ID="wz_activity" title="Activity">
                                <h2 class="auto-style37"><strong>Activites</strong></h2>
                                <br />
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style28">* Acitiviy Description :</td>
                                        <td class="auto-style12">
                                            <asp:TextBox ID="tb_activity" runat="server" Rows="8" TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style27">&nbsp;</td>
                                        <td>(min 1000 char)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:WizardStep>

                            <asp:WizardStep runat="server" ID="wz_achievement" title="Acedemic Achievement">
                                <h2 class="auto-style37"><strong>Achievements</strong></h2>
                                <br />
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style26">* Description of Achievement :</td>
                                        <td>
                                            <asp:TextBox ID="tb_achievement_academic" runat="server" Rows="8" TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style26">&nbsp;</td>
                                        <td>(min 1000 char)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:WizardStep>

                            <asp:WizardStep runat="server" ID="wz_experience" title="Experience">
                                <h2 class="auto-style37">Experience</h2>
                                <br />
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style51">&nbsp;</td>
                                        <td class="auto-style29">* Insitute/Company Name :</td>
                                        <td>
                                            <asp:TextBox ID="tb_institute_company" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51">&nbsp;</td>
                                        <td class="auto-style29">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51">&nbsp;</td>
                                        <td class="auto-style29">* Designation :</td>
                                        <td>
                                            <asp:TextBox ID="tb_designation" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51">&nbsp;</td>
                                        <td class="auto-style29">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51">&nbsp;</td>
                                        <td class="auto-style29">* Currently Working ? </td>
                                        <td>
                                            <asp:RadioButtonList ID="rblist_is_working" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblist_is_working_SelectedIndexChanged">
                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                <asp:ListItem Value="0">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51">&nbsp;</td>
                                        <td class="auto-style29">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51">&nbsp;</td>
                                        <td class="auto-style29">* From :</td>
                                        <td>
                                            <asp:Calendar ID="cld_exp_from" runat="server"></asp:Calendar>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51">&nbsp;</td>
                                        <td class="auto-style29">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style52"></td>
                                        <td class="auto-style30">&nbsp;To :</td>
                                        <td class="auto-style12">
                                            <asp:Calendar ID="cld_exp_to" runat="server"></asp:Calendar>
                                        </td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51">&nbsp;</td>
                                        <td class="auto-style29">&nbsp;</td>
                                        <td>(not require for current working institute)</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51">&nbsp;</td>
                                        <td class="auto-style29">Achievements During Work :</td>
                                        <td>
                                            <asp:TextBox ID="tb_achievement_work" runat="server" Height="167px" Rows="5" TextMode="MultiLine" Width="282px"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style52"></td>
                                        <td class="auto-style30"></td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51">&nbsp;</td>
                                        <td class="auto-style29"></td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51">&nbsp;</td>
                                        <td class="auto-style29">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:WizardStep>

                            <asp:WizardStep runat="server" ID="wz_preference" title="Preference">
                                <h1>
                                    <br />
                                    Preferences related to Job</h1>
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style33"></td>
                                        <td class="auto-style32">* Industry1 :</td>
                                        <td class="auto-style12">
                                            <asp:DropDownList ID="dd_ind1" runat="server" DataSourceID="SqlDataIndustrySource" DataTextField="industry" DataValueField="industry">
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style12">
                                            <asp:SqlDataSource ID="SqlDataIndustrySource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT DISTINCT [industry] FROM [jp_master]"></asp:SqlDataSource>
                                        </td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">Industry2 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_ind2" runat="server" DataSourceID="SqlDataIndustrySource" DataTextField="industry" DataValueField="industry">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">Industry3 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_ind3" runat="server" DataSourceID="SqlDataIndustrySource" DataTextField="industry" DataValueField="industry">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">* Location1 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_loc1" runat="server" DataSourceID="SqlDataCitySource" DataTextField="city" DataValueField="city">
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:SqlDataSource ID="SqlDataCitySource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT DISTINCT [city] FROM [jp_job]"></asp:SqlDataSource>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">Location2 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_loc2" runat="server" DataSourceID="SqlDataCitySource" DataTextField="city" DataValueField="city">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">Location3 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_loc3" runat="server" DataSourceID="SqlDataCitySource" DataTextField="city" DataValueField="city">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style33"></td>
                                        <td class="auto-style32"></td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">* Designation1 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_des1" runat="server" DataSourceID="SqlDataDesignationSource" DataTextField="designation" DataValueField="designation">
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:SqlDataSource ID="SqlDataDesignationSource" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT DISTINCT [designation] FROM [jp_job]"></asp:SqlDataSource>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">Designation2 :</td>
                                        <td>
                                            <asp:DropDownList ID="dd_des2" runat="server" DataSourceID="SqlDataDesignationSource" DataTextField="designation" DataValueField="designation">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style33"></td>
                                        <td class="auto-style32">Designation3 :</td>
                                        <td class="auto-style12">
                                            <asp:DropDownList ID="dd_des3" runat="server" DataSourceID="SqlDataDesignationSource" DataTextField="designation" DataValueField="designation">
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style33"></td>
                                        <td class="auto-style32">Min Salary :</td>
                                        <td class="auto-style12">
                                            <asp:TextBox ID="tb_min_salary" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style12"></td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">Interested in StartUp ?</td>
                                        <td>
                                            <asp:RadioButtonList ID="rblist_startup" runat="server">
                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                <asp:ListItem Value="0">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">* Min Size of Employee :</td>
                                        <td>
                                            <asp:TextBox ID="tb_size_emp" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                        </WizardSteps>
                    </asp:Wizard>
                </td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>
