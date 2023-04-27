<%@ Page Title="Customer Dashboard" Language="C#" MasterPageFile="~/customerMasterPage.master" AutoEventWireup="true" CodeFile="customer_dashboard.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <%-- Customer Dashboard Menu--%>
    <asp:Label ID="Label100" runat="server" ></asp:Label>
      <section id="vendor-dashboard" class="vendor-dashboard-main-block">
    <div class="container">
      <ul class="vendor-dashboard-tabs general-nav-tabs tabs">
        <li><a href="#" class="active btn btn-default"><span class="badge">Dashboard</span></a></li>
        <li><a href="cutomer_profile.aspx" class="btn btn-default"><span class="badge">Profile</span></a></li>
        <li><a href="c_give_order.aspx" class="btn btn-default"><span class="badge">Search Vendor</span></a></li>
        <li><a href="c_ask_query.aspx" class="btn btn-default"><span class="badge">Ask Query</span></a></li>
    
   <li><a href="c_See_query.aspx" class=" btn btn-default"><span class="badge">See Queries</span></a></li>
      </ul>
          <div class="couple-dashboard-block">
        <h3 class="couple-dashboard-heading dashboard-heading">My Dashboard</h3>
        <div class="row">
          <div class="col-md-4 col-sm-6">
            <div class="my-dashboard">
              <div class="background-image">
                <i class="flaticon-wedding-day"></i>
              </div>
              <div class="dashboard-date">
                <i class="flaticon-wedding-day"></i>
                <div class="dashboard-date-heading">Sat 20, April 2017</div>
              </div>
              <div class="facts-block dashboard-dtl">
                <h2 class="facts-number counter">540</h2>
                <div class="dashboard-text">Wedding Days To Go</div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="my-dashboard">
              <div class="background-image">
                <i class="flaticon-honeymoon-luggage"></i>
              </div>
              <div class="dashboard-date">
                <i class="flaticon-honeymoon-luggage"></i>
                <div class="dashboard-date-heading">Spent $1200 Out Of $20,000</div>
              </div>
              <div class="facts-block dashboard-dtl">
                <h2 class="facts-number counter facts-doller">20,000</h2>
                <div class="dashboard-text">Your Budget</div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="my-dashboard">
              <div class="background-image">
                <i class="flaticon-wedding-planning"></i>
              </div>
              <div class="dashboard-date">
                <i class="flaticon-wedding-planning"></i>
                <div class="dashboard-date-heading">Completed 3 of 79</div>
              </div>
              <div class="facts-block dashboard-dtl">
                <h2 class="facts-number counter">79</h2>
                <div class="dashboard-text">Checklist to do</div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="my-dashboard">
              <div class="background-image">
                <i class="flaticon-heart-shaped-padlock"></i>
              </div>
              <div class="dashboard-date">
                <i class="flaticon-heart-shaped-padlock"></i>
                <div class="dashboard-date-heading">Compare And finalize</div>
              </div>
              <div class="facts-block dashboard-dtl">
                <h2 class="facts-number counter">8</h2>
                <div class="dashboard-text">wishlist</div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="my-dashboard">
              <div class="background-image">
                <i class="flaticon-wedding-invitation"></i>
              </div>
              <div class="dashboard-date">
                <i class="flaticon-wedding-invitation"></i>
                <div class="dashboard-date-heading">Invited 90 Out Of 160 Guests</div>
              </div>
              <div class="facts-block dashboard-dtl">
                <h2 class="facts-number counter">160</h2>
                <div class="dashboard-text">Invited Guests</div>
              </div>
            </div>
          </div>            
        </div>
       
      </div>
        </div>
            </section>

     <%-- Vendor Dashboard Menu--%>
</asp:Content>

