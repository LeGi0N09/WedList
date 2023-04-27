<%@ Page Title="Help" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="help.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Help</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Default.aspx">Home</a></li>
            <li class="active">Help</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
   
<!-- end page banner -->
    <section id="help-page" class="help-page-main-block">
    <div class="container">
      <div class="help-service-main-block">
        <div class="row">
          <div class="col-md-4 col-sm-6">
            <div class="contact-us-block help-service-block">
              <div class="contact-us-icon"> 
                <img src="images/contact-us/contact-icon-1.png" class="img-responsive" alt="contact-icon"/>
              </div>
              <div class="contact-us-dtl text-center">
                <h6 class="contact-heading">Our Address</h6>
                <div class="contact-sub-heading">E-1202, Titanium City Centre
Near Aykar Bhavan,
100 Feet Anand Nagar Rd,
Ahmedabad,
Gujarat 380015</div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="contact-us-block help-service-block help-service-block-two">
              <div class="contact-us-icon"> 
                <img src="images/contact-us/contact-icon-2.png" class="img-responsive" alt="contact-icon"/>
              </div>
              <div class="contact-us-dtl text-center">
                <h6 class="contact-heading">Call Us</h6>
                <a href="tel:#">+(00) 123 456 78 OR</a>
                <a href="tel:#">+(00) 123 456 78</a>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="contact-us-block help-service-block">
              <div class="contact-us-icon"> 
                <img src="images/contact-us/contact-icon-3.png" class="img-responsive" alt="contact-icon"/>
              </div>
              <div class="contact-us-dtl text-center">
                <h6 class="contact-heading">Mail Us</h6>
                <a href="mailto:#">Info@Weddlist.com</a>
                <a href="mailto:#">Support@Weddlist.com</a>
               
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="help-faq-block">
        <div class="row">
          <div class="col-md-6">
            <div class="panel-group faq-panel" id="accordion" role="tablist" aria-multiselectable="true">
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingOne">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                      Which Payment Methods Are Supported?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                  <div class="panel-body">
                    <p>Payment methods vary depending on the business, but most businesses accept major credit cards such as Visa and Mastercard. <br />Many also offer other payment options such as PayPal, Apple Pay, Google Pay and Venmo. Cash payments are still accepted in some places but not all businesses allow it due to safety concerns.<br /> Some companies may also offer special discounts or rewards for using specific payment methods like their own store card or a loyalty program membership card. Ultimately, it is up to each individual business which payment method they choose to support so make sure you check before making a purchase!</p>
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
                     How do I know my order has been confirmed?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                  <div class="panel-body">
                     <p>An e-mail & SMS will be sent once you've successfully placed your order. We'll also let you know as soon as the seller ships the item(s) to you along with the tracking number(s) for your shipment(s). You can track your orders from the 'My Orders' section on your Flipkart account.</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingFour">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
                     Who are all eligible for this GSTIN feature?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                  <div class="panel-body">
                     <p>Customers that have GSTIN registered for their business entity can avail this feature. Please note that this is currently available on select products for business purchases sold by participating sellers.<br /> Customers can enter GSTIN and business entity name while placing the order to receive a tax invoice containing these details to claim input tax credit.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="panel-group faq-panel" id="accordion2" role="tablist" aria-multiselectable="true">
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingOne-tw">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne-tw" aria-expanded="true" aria-controls="collapseOne-tw">
                     I see the 'Cancel' button but I can't click on it. Why?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseOne-tw" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne-tw">
                  <div class="panel-body">
                    <p>A greyed out and disabled 'Cancel' button can mean any one of the following:
                        <br />
1. The item has been delivered already
<br />
OR
                        <br />
2. The item is non-refundable (e.g. Gift Card)</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingTwo-tw">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo-tw" aria-expanded="true" aria-controls="collapseTwo-tw">
                      Can I use a corporate email ID to sign up?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseTwo-tw" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo-tw">
                  <div class="panel-body">
                     <p>Yes, you can use a corporate email ID. However, please ensure that you have updated your current active email address to continue using your account in the unlikely event of your account getting deleted or deactivated</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingThree-tw">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree-tw" aria-expanded="true" aria-controls="collapseThree-tw">
                     If I have found a security Bug what should I do?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseThree-tw" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree-tw">
                  <div class="panel-body">
                     <p>We take security very seriously at Flipkart. If you have found an issue on Flipkart, you can report it to security@flipkart.com with the below details:
                         <br />
1. Steps to reproduce the bug/issue
                         <br />
2. Your web browser/mobile browser's name and version
                         <br />
3. Screenshot/screencast (if any).
                         <br />
                     </p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingFour-tw">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour-tw" aria-expanded="true" aria-controls="collapseFour-tw">
                     How do I report a listing infringement?    
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseFour-tw" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour-tw">
                  <div class="panel-body">
                     <p>If you think that your IP right has been infringed by any of our sellers, you can follow the below process. We require that the Intellectual Property right owner or authorized agent provide the following details and email it to infringement@flipkart.com,
<br />
Identification or description of the copyrighted work/ trademark that has been infringed.<br />
Clear identification or description of where the material that you claim is infringing is located on www.flipkart.com with adequate particulars.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="pt80">
        <div class="section text-center">
          <h3 class="section-heading">Feel Free To Contact Us</h3>
          <p class="section-sub-heading">Sed ut perspiciatis unde omnis iste natus error</p>
        </div>
        <div class="contact-form form-group">
          <form>
            <div class="row">
              <div class="col-sm-6">
                <input type="text" class="form-control" id="name" placeholder="YOUR NAME *"/>
                <input type="text" class="form-control" id="phone" placeholder="YOUR PHONE"/>
              </div>
              <div class="col-sm-6">
                <input type="email" class="form-control" id="email" placeholder="YOUR EMAIL ADDRESS *"/>
                <input type="text" class="form-control" id="subject" placeholder="SUBJECT"/>
              </div>
            </div>
            <textarea id="message" class="form-control" placeholder="YOUR MESSAGE *"></textarea>
            <div class="message-button text-center">
              <button type="submit" class="btn btn-pink">Send Message</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
</asp:Content>

