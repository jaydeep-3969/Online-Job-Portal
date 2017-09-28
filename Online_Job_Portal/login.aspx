<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Online_Job_Portal.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server">Login</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server">About</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;
     <asp:LinkButton ID="LinkButton3" runat="server">Contact Us</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;
     <asp:LinkButton ID="LinkButton4" runat="server">Sign Up</asp:LinkButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="menu" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">

    User Name : <asp:TextBox ID="user_name" runat="server" Width="100px"></asp:TextBox>

    <br />
    <br />

    Password  :&nbsp;&nbsp; <asp:TextBox ID="password" runat="server" Width="100px"></asp:TextBox>


    <br />


    <br />
    <asp:RadioButton ID="js" runat="server" GroupName="role" Text="Job Seeker" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="jp" runat="server" GroupName="role" Text="Job Provider" />

    <br />
    <br />
    <br />
    <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_reset" runat="server" Text="Reset" />

</asp:Content>

