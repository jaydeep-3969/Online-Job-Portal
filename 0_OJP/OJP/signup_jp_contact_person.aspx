<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signup_jp_contact_person.aspx.cs" Inherits="OJP.signup_js_contact_person" %>
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
                                 <h2 class="text-center text-info">Contact Person</h2>
                            </div>
                        <div class="panel-body">
                          
                   <%-- <div class="panel panel-default">
                        <div class="panel-body">--%>
           <form id="form1" runat="server" class="text-capitalize text-info">
              <div class=""></div>
            
               <%-- 
                    <asp:TextBox ID="tb_name" runat="server" Width="257px" ></asp:TextBox>
                   --%>
                <div class="form-group">
                    <p>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Should Not Be Empty" ControlToValidate="tb_name" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator></p>
                    <label class="text" for="tb_name">
                                        <label class="text" for="tb_state"><span class="text-danger">* </span></label>Name :</label>
                      <asp:TextBox ID="tb_name" runat="server" CssClass="form-control"  MaxLength="1000"></asp:TextBox>
                    <small class="text-muted">(Max 40 character)</small>    
                </div>
                <div class="form-group">
                    <br />
                    <p>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid E-mail" ControlToValidate="tb_email" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </p>
                    <p>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email Should Not Be Empty" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ControlToValidate="tb_email"></asp:RequiredFieldValidator></p>
                                        <label class="text" for="tb_state"><span class="text-danger">* </span></label><label class="text" for="tb_email">Email :</label>
                      <asp:TextBox ID="tb_email" runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox>
                    &nbsp;</div>
                <div class="form-group">
                    <p>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tb_mob_no" Display="Dynamic" ErrorMessage="Invalid Mobile Number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[7-9]{1}[0-9]{9}$"></asp:RegularExpressionValidator>
                    </p>
                    <p>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mobile Number Should Not Be Empty" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ControlToValidate="tb_mob_no"></asp:RequiredFieldValidator>
                    </p>

                    <label class="text" for="tb_mob_no">Mobile :</label>
                      <asp:TextBox ID="tb_mob_no" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                    &nbsp;<small class="text-muted">(in 10 digit)</small>    
                    (<small class="text-muted">ex: 9876543210)</small>
                                    </div>
                <br />
            





                 <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="btn_submit_Click" Text="Final Submit" />
              
               <input id="Reset1" type="reset" class="btn btn-primary" value="Reset" />
             
              
                   
                </form>
                </div>
            </div>
        </div>
                        </div>
                   </div>
        </div>
    </div>

    <%--<form runat="server">
         <h2 class="auto-style5" style="text-align: center">Contact Person Details</h2>
                                <table class="auto-style1">
                                    <tr>
                                        <td style="width: 339px">&nbsp;</td>
                                        <td class="auto-style11">Email</td>
                                        <td class="auto-style12" style="width: 175px">
                                            <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="width: 281px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13" style="width: 339px"></td>
                                        <td class="auto-style14"></td>
                                        <td class="auto-style15" style="width: 175px"></td>
                                        <td class="auto-style13" style="width: 281px"></td>
                                        <td class="auto-style13"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 339px">&nbsp;</td>
                                        <td class="auto-style11">Name</td>
                                        <td class="auto-style12" style="width: 175px">
                                            <asp:TextBox ID="tb_name" runat="server" Width="257px" ></asp:TextBox>
                                        </td>
                                        <td style="width: 281px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 339px">&nbsp;</td>
                                        <td class="auto-style11">&nbsp;</td>
                                        <td class="auto-style12" style="width: 175px">&nbsp;</td>
                                        <td style="width: 281px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 339px">&nbsp;</td>
                                        <td class="auto-style11">Mobile No</td>
                                        <td class="auto-style12" style="width: 175px">
                                            <asp:TextBox ID="tb_mob_no" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="width: 281px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 339px">&nbsp;</td>
                                        <td class="auto-style11">&nbsp;</td>
                                        <td class="auto-style12" style="width: 175px">&nbsp;</td>
                                        <td style="width: 281px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 339px; text-align: right;">&nbsp;</td>
                                        <td class="auto-style11" style="text-align: right">
                                            <asp:Button ID="btn_submit" runat="server" Text="Final Submit" OnClick="btn_submit_Click" />
                                        </td>
                                        <td class="auto-style12" style="width: 175px">
                                            <input id="btn_reset" type="reset" value="Reset" /></td>
                                        <td style="width: 281px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 339px">&nbsp;</td>
                                        <td class="auto-style11">&nbsp;</td>
                                        <td class="auto-style12" style="width: 175px">&nbsp;</td>
                                        <td style="width: 281px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 339px">&nbsp;</td>
                                        <td class="auto-style11">&nbsp;</td>
                                        <td class="auto-style12" style="width: 175px">&nbsp;</td>
                                        <td style="width: 281px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
    </form>--%>
</asp:Content>
