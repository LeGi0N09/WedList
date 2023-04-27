<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="Default2" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Contact Us</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li class="active">Contact Us</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!-- contact us -->
  <section class="main-container">
    <div class="container">
      <div class="section text-center">
        <h3 class="section-heading">Weddlist Contact Details</h3>
        <p class="section-sub-heading">Sed ut perspiciatis unde omnis iste natus error</p>
      </div>
      <div class="row">
        <div class="col-md-4 col-sm-6">
          <div class="contact-us-block">
            <div class="contact-us-icon"> 
              <img src="images/contact-us/contact-icon-1.png" class="img-responsive" alt="contact-icon"/>
            </div>
            <div class="contact-us-dtl text-center">
              <h6 class="contact-heading">Our Address</h6>
              <div class="contact-sub-heading">E-1202,Titanium City Centre, 100 Feet Anand Nagar Rd,Ahmedabad</div>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-6">
          <div class="contact-us-block">
            <div class="contact-us-icon"> 
              <img src="images/contact-us/contact-icon-2.png" class="img-responsive" alt="contact-icon"/>
            </div>
            <div class="contact-us-dtl text-center">
              <h6 class="contact-heading">Call Us</h6>
              <a href="tel:#">+(00) 123 456 78 </a>
              <p></p>
              <a href="tel:#">+(00) 123 456 78</a>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-6">
          <div class="contact-us-block">
            <div class="contact-us-icon"> 
              <img src="images/contact-us/contact-icon-3.png" class="img-responsive" alt="contact-icon"/>
            </div>
            <div class="contact-us-dtl text-center">
              <h6 class="contact-heading">Mail Us</h6>
              <a href="mailto:#">Info@Weddlist.com</a>
                <p>

                </p>
              <a href="mailto:#">Support@Weddlist.com</a>
            </div>
          </div>
        </div>
      </div>
      <div class="mt100">
        <div class="section text-center">
          <h3 class="section-heading">Feel Free To Contact Us</h3>
          <p class="section-sub-heading">Sed ut perspiciatis unde omnis iste natus error</p>
        </div>
        <div class="contact-form form-group">
          <form id="contact-us-form" ">
            <div class="row">
              <div class="col-sm-6">
                <div class="row">
                  <div class="col-sm-6">
                      <asp:TextBox ID="TextBox1" runat="server" class="form-control name-valid" placeholder="YOUR NAME *"></asp:TextBox>
                 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                      <script>
                          $(document).ready(function () {
                              $('.name-valid').on('keypress', function (e) {
                                  var regex = new RegExp("^[a-zA-Z ]*$");
                                  var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
                                  if (regex.test(str))
                                  {
                                      return true;
                                  }
                                  e.preventDefault();
                                  return false;
                              });
                          });
</script> 
                    <asp:TextBox ID="TextBox2" runat="server" textmode="Phone" class="form-control" placeholder="YOUR PHONE"></asp:TextBox>
                  </div>
                  <div class="col-sm-6">
                      <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" class="form-control" placeholder="YOUR EMAIL ADDRESS *"></asp:TextBox>
                       

                      <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="SUBJECT"></asp:TextBox>
                  </div>
                </div>
                  <asp:TextBox ID="TextBox5" runat="server" textmode="MultiLine" class="form-control" placeholder="YOUR MESSAGE *"></asp:TextBox>
               
                <div class="message-button">
                    <asp:Button ID="Button1" class="btn btn-info " runat="server" Text="Send Message" BackColor="#FF4061" ForeColor="#FFFFFF" BorderStyle="Groove" OnClick="Button1_Click" />
                </div>
              </div>
              <div class="col-sm-6">
                <div id="location" class="map-banner contact-two-map" ><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3672.3179356496807!2d72.52100491440363!3d23.01209577249543!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e85a46dd17901%3A0x9f51ac3fae818cae!2sShri%20Om%20Infotech!5e0!3m2!1sen!2sin!4v1671180440418!5m2!1sen!2sin" width="600" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
              </div>
            </div>            
          </form>
        </div>
      </div>
    </div>
  </section>
<!-- end contact us -->
</asp:Content>

