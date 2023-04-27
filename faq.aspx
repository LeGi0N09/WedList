<%@ Page Title="Faq" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="Default2" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Faq</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Default.aspx">Home</a></li>
            <li class="active">Faq</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!--  faq -->    
  <section class="main-container">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <div class="search-block">
            <form>
              <input type="search" class="form-control" id="search" placeholder="Search Here..."/>
              <a href="#"><i class="fa fa-search"></i></a>
            </form>
          </div>
          <div class="faq-nav-list">
            <h6 class="faq-nav-heading">Categories</h6>
            <ul>
              <li><a href="#">Wedding Venue</a></li>
              <li><a href="#">Wedding Cakes</a></li>
              <li><a href="#">Wedding Catering</a></li>
              <li><a href="#">Wedding Dresses</a></li>
              <li><a href="#">Transport</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-9">
          <div class="faq-block">
            <div class="panel-group faq-panel" id="accordion" role="tablist" aria-multiselectable="true">
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingOne">
                  <h6 class="panel-title question-heading">
                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                      Which Payment Methods Are Supported?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                  <div class="panel-body">
                    <p>When it comes to payment methods, there are many options available. Most businesses accept major credit cards such as Visa, Mastercard and American Express.<br /> Debit cards are also accepted in some cases. Additionally, digital wallets like Apple Pay and Google Pay are becoming increasingly popular for their convenience and security features.<br /> Some businesses may even accept cryptocurrency payments or offer other forms of alternative payments such as bank transfers or cash on delivery (COD). Ultimately the best payment method will depend on your individual needs - make sure you check with the merchant beforehand to ensure that they support your preferred method of payment!</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingTwo">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                       Can I cancel or refund my subscription?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                  <div class="panel-body">
                     <p>Yes, you can cancel or refund your subscription. Depending on the type of subscription and service provider, there may be different policies for canceling or requesting a refund.<br /> Generally speaking, most subscriptions allow users to cancel at any time but refunds are typically only available within a certain period of time after purchase.<br /> It is important to read through the terms and conditions associated with your particular subscription before attempting to make changes as they will provide more detailed information regarding what options are available for cancellation or refunds.</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingThree">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                    Can I pay with any Credit card?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                  <div class="panel-body">
                     <p>You can choose to pay on Flipkart with any Visa, MasterCard or American Express credit card issued in India.</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingFour">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
                    How can I pay for my order?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                  <div class="panel-body">
                     <p>You can choose to pay for an order using any of the below methods:

<br />
Cash on Delivery<br />
Net Banking<br />
Gift Card<br />
PhonePe Wallet<br />
Visa, MasterCard, Maestro and American Express Credit or Debit cards issued in India and 21 other countries</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingFive">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="true" aria-controls="collapseFive">
                     How do returns work?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                  <div class="panel-body">
                     <p>You can raise a request to return your items with these simple steps:
                         <br />
1. Log into your account
<br />
2. Go to My Orders
<br />
3. Click on 'Return' against the item you wish to return or exchange
<br />
4. Fill in the details and raise a return request
<br />
Once you raise a request, you'll get an email and SMS confirming that your request is being processed. Based on the item, your request may be automatically approved or you may be contacted for more details. If the request is approved, the item will be picked up after which you will get a replacement or refund. You can also track the status of your return request instantly from the 'My Orders' section of your account.</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingSix">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="true" aria-controls="collapseSix">
                     How do I know my order has been confirmed?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
                  <div class="panel-body">
                     <p>An e-mail & SMS will be sent once you've successfully placed your order. We'll also let you know as soon as the vendor the item(s) to you along with the tracking number(s) for your Booking(s). You can track your orders from the 'My Orders' section on your account.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
<!-- end faq -->   
</asp:Content>

