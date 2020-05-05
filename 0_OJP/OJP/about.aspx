<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="OJP.WebForm25" %>
<asp:Content ID="Content1" ContentPlaceHolderID="side_button" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_title" runat="server">
    About Page
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">

   <div class="jumbotron">
       <h4>Online Job Portal</h4>
      <div class="text-primary">
          <p class="text-danger">
              The main goal of this site is to connect job seeker and job provider companies effortlesss on virtual environment<br />
              here, they can find complete depth information about each other and join<br />
              Also to reduce physical cost
          </p>

          <p> Acording to your status like Job-Provider Company or Job-Seeker you have to first of all sign up from home page of the portal and then login to the site </p>
           <p> The main feature of the site is that... </p>
           <p>  job seeker will get best job recommandation based on profile details. </p>
             
           <p> Job Provider will get best Aspirants , because of recommandation system.</p>

             </div>
      

       
   </div>
        
    <div class="panel panel-info">
        <div class="panel-heading">
            Job Provider Query
        </div>
        <div class="panel-body">

             <%--All query related to job Provider--%>

              <div class="panel panel-success">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        Overall Information of Job Provider
                    </div>
                    <div class="panel-body">
                        Job Provider Company can is the company who want best online platform to find job seeker from all over the world and choose best out of it
                    </div>
                </div>
            </div>


            <div class="panel panel-success">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        How to Post Job ?
                    </div>
                    <div class="panel-body">
                        Go to Menu "Post-Job" , Enter all details related to job, this job will be posted and recommended to appropriate job seeker.
                    </div>
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        How to select job seeker ?

                    </div>
                    <div class="panel-body">
                        Go to "posted_job -> aspirants" in menu and select or deselect based on it's profile shown by pressing button "Show Profile".
                    </div>
                </div>
            </div>

 

            </div>
        </div>


    <%--  --%>


         <div class="panel panel-info">
        <div class="panel panel-heading">
            Job Seeker Query
        </div>
        <div class="panel panel-body">

             <%--All query related to job seeker--%>

              <div class="panel panel-success">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        Overall Information of Job Seeker
                    </div>
                    <div class="panel-body">
                        Job Seeker is the person who want best job which suites his or her qualification and in also of interested  field.
                    </div>
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        How searching work ?
                    </div>
                    <div class="panel-body">
                        you can search job seeker or job provider or jobs with it's appropriate any related parameter like location, industry, designation , name etc.
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
