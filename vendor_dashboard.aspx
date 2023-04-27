<%@ Page Title="Vendor Dashboard" Language="C#" MasterPageFile="~/Vendormasterpage.master" AutoEventWireup="true" CodeFile="vendor_dashboard.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <%-- Vendor Dashboard Menu--%>
    <asp:Label ID="Label100" runat="server" ></asp:Label>
       <section id="couple-profile" class="couple-profile-main-page">
    <div class="container">
      <div class="couple-profile-tabs general-nav-tabs tabs">
        <a href="#" class="active btn btn-default"><span class="badge">Dashboard</span></a>
        <a href="vendor_profile.aspx" class=" btn btn-default"><span class="badge">Profile</span></a>
        <a href="v_view_orders.aspx" class="btn btn-default"><span class="badge">Booking</span></a>
      
        <a href="read_suggetion.aspx" class="btn btn-default"><span class="badge">Reviews</span></a>
        <a href="#" class="btn btn-default"><span class="badge">Real Wedding</span></a>
      </div>
         <div class="vendor-dashboard-block">
        <h3 class="vendor-dashboard-heading dashboard-heading">My Dashboard</h3>
        <div class="row">
          <div class="col-md-4 col-sm-6">
            <div class="my-dashboard">
              <div class="col-xs-2">
                <i class="flaticon-social"></i>
              </div>
              <div class="col-xs-10">
                <div class="may-dashboard-dtl facts-block">
                  <h2 class="facts-number counter">500</h2>
                  <div class="vendor-dashboard-text">Total Item Page Review</div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="my-dashboard">
              <div class="col-xs-2">
                <i class="flaticon-social"></i>
              </div>
              <div class="col-xs-10">
                <div class="may-dashboard-dtl facts-block">
                  <h2 class="facts-number counter">89</h2>
                  <div class="vendor-dashboard-text">Total Item Page Review</div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="my-dashboard">
              <div class="col-xs-2">
                <i class="flaticon-like"></i>
              </div>
              <div class="col-xs-10">
                <div class="may-dashboard-dtl facts-block">
                  <h2 class="facts-number counter">250</h2>
                  <div class="vendor-dashboard-text">Total Couple Inquiry</div>
                </div>
              </div>
            </div>
          </div> 
          <div class="col-md-4 col-sm-6">
            <div class="my-dashboard">
              <div class="col-xs-2">
                <i class="flaticon-like"></i>
              </div>
              <div class="col-xs-10">
                <div class="may-dashboard-dtl facts-block">
                  <h2 class="facts-number counter">31</h2>
                  <div class="vendor-dashboard-text">Total Couple Inquiry</div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="my-dashboard">
              <div class="col-xs-2">
                <i class="flaticon-file"></i>
              </div>
              <div class="col-xs-10">
                <div class="may-dashboard-dtl facts-block">
                  <h2 class="facts-number counter">215</h2>
                  <div class="vendor-dashboard-text">Total Listing Items</div>
                </div>
              </div>
            </div>
          </div>
        </div>
   
          
          
        </div>
      
        </div>
        </section>

     <%-- Vendor Dashboard Menu--%>

</asp:Content>

