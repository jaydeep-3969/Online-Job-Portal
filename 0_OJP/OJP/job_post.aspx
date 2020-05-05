<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="job_post.aspx.cs" Inherits="OJP.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
    <a class="list-group-item" href="posted_job.aspx">Posted Job</a>
           <a class="list-group-item" href="profile_jp_company.aspx">Profile</a>
     <a class="list-group-item" href="profile_jp_credential.aspx">Credential</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
    <p>
        Post the Job</p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">


    
    <div class="container-fluid">
        <div class="row">
            <div class="well">

                <div class="row ">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                               
                                <h2 class="text-center text-info">Posting New Job</h2>
                            </div>
                            <div class="panel-body">


                           
    <form id="form1" runat="server">

            <table class="nav-justified">
                <tr>
                    <td style="height: 19px"></td>
                    <td style="height: 19px; width: 252px">* Designation :</td>
                    <td style="height: 19px; width: 361px">
                        <asp:TextBox ID="tb_designation" runat="server" MaxLength="40"></asp:TextBox>
                    </td>
                    <td style="height: 19px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_designation" Display="Dynamic" ErrorMessage="Designation should not be empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td style="height: 19px"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">&nbsp;</td>
                    <td style="width: 361px">(Max 50 Char)</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">* Job Description :</td>
                    <td style="width: 361px">
                        <asp:TextBox ID="tb_job_desc" runat="server" Rows="5" TextMode="MultiLine" MaxLength="5000"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_job_desc" Display="Dynamic" ErrorMessage="Job description should not be empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">&nbsp;</td>
                    <td style="width: 361px">(max 5000 char)</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 20px"></td>
                    <td style="width: 252px; height: 20px;"></td>
                    <td style="width: 361px; height: 20px;"></td>
                    <td style="height: 20px"></td>
                    <td style="height: 20px"></td>
                </tr>
                <tr>
                    <td style="height: 40px"></td>
                    <td style="width: 252px; height: 40px;">* Vacancy :</td>
                    <td style="width: 361px; height: 40px;">
                        <asp:TextBox ID="tb_vacancy" runat="server"></asp:TextBox>
                    </td>
                    <td style="height: 40px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_vacancy" Display="Dynamic" ErrorMessage="Vacancy should not be empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="tb_vacancy" Display="Dynamic" ErrorMessage="Vacancy is not valid" ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                    </td>
                    <td style="height: 40px"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">&nbsp;</td>
                    <td style="width: 361px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">* Age_min :</td>
                    <td style="width: 361px">
                        <asp:TextBox ID="tb_min_age" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_min_age" Display="Dynamic" ErrorMessage="Age Min should not be empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator runat="server" ControlToValidate="tb_min_age" Display="Dynamic" ErrorMessage="Age min is not valid" ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">&nbsp;</td>
                    <td style="width: 361px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 40px"></td>
                    <td style="width: 252px; height: 40px;">* Age_max :</td>
                    <td style="width: 361px; height: 40px;">
                        <asp:TextBox ID="tb_max_age" runat="server"></asp:TextBox>
                    </td>
                    <td style="height: 40px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_max_age" Display="Dynamic" ErrorMessage="Age Max should not be empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tb_max_age" Display="Dynamic" ErrorMessage="Age min is not valid" ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                    </td>
                    <td style="height: 40px"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">&nbsp;</td>
                    <td style="width: 361px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">* Salary Average :</td>
                    <td style="width: 361px">
                        <asp:TextBox ID="tb_avg_salary" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tb_avg_salary" Display="Dynamic" ErrorMessage="Salary should not be empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="tb_avg_salary" Display="Dynamic" ErrorMessage="Age Salary is not valid" ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">&nbsp;</td>
                    <td style="width: 361px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 22px"></td>
                    <td style="width: 252px; height: 22px;">* Min Experience in Year :</td>
                    <td style="width: 361px; height: 22px;">
                        <asp:TextBox ID="tb_min_exp" runat="server"></asp:TextBox>
                    </td>
                    <td style="height: 22px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tb_min_exp" Display="Dynamic" ErrorMessage="Min Year Experience  should not be empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="tb_min_exp" Display="Dynamic" ErrorMessage="Minimum Experience year is not valid" ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
                    </td>
                    <td style="height: 22px"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">&nbsp;</td>
                    <td style="width: 361px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 22px"></td>
                    <td style="width: 252px; height: 22px;">* Due Date :</td>
                    <td style="width: 361px; height: 22px;">
                           <asp:TextBox ID="cld_due_date" runat="server" TextMode="Date"></asp:TextBox>

                      <%--  <asp:Calendar ID="cld_due_date" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>--%>
                    </td>
                    <td style="height: 22px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tb_designation" Display="Dynamic" ErrorMessage="Due Date should not be empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="cld_due_date" Display="Dynamic" ErrorMessage="Due date should be after current date" ForeColor="Red" Operator="GreaterThan" SetFocusOnError="True" Type="Date" ValueToCompare="09/11/2017"></asp:CompareValidator>
                        <br />
                    </td>
                    <td style="height: 22px"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">&nbsp;</td>
                    <td style="width: 361px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">* Venue Desciption :</td>
                    <td style="width: 361px">
                        <asp:TextBox ID="tb_venue_desc" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="tb_venue_desc" Display="Dynamic" ErrorMessage="Venue description should not be empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">&nbsp;</td>
                    <td style="width: 361px">(Max 2000 char)</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">&nbsp;</td>
                    <td style="width: 361px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">* City&nbsp; :</td>
                    <td style="width: 361px">
                        <asp:TextBox ID="tb_city" runat="server" MaxLength="40"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="tb_city" Display="Dynamic" ErrorMessage="City  Should not be empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">&nbsp;</td>
                    <td style="width: 361px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">* State : </td>
                    <td style="width: 361px">
                        <asp:TextBox ID="tb_state" runat="server" MaxLength="40"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="tb_state" Display="Dynamic" ErrorMessage="State should not be empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">&nbsp;</td>
                    <td style="width: 361px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="text-center" style="width: 252px">
                        <asp:Button ID="btn_submit" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btn_submit_Click" />
                    </td>
                    <td style="width: 361px">
                        <input id="btn_reset" class="btn btn-primary" type="reset" value="Reset" /></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">&nbsp;</td>
                    <td style="width: 361px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 252px">&nbsp;</td>
                    <td style="width: 361px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
     
    </form>
                                 </div>
                        </div>
                    </div>
                </div>
            </div>
      </div>
        </div>
    

   </asp:Content>






