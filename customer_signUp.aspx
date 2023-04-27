<%@ Page Title="Customer Sign Up" Language="C#" MasterPageFile="~/MasterPage.master" EnableEventValidation="false"  AutoEventWireup="true" CodeFile="customer_signUp.aspx.cs" Inherits="Default2" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading"> Customer Sign Up</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Default.aspx">Home</a></li>
            <li class="active">Sign Up</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!-- register page -->
  <%--section id="register-page" class="register-main-block">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="register-block">
            <h4 class="register-heading text-center">Customer Register</h4>
            <div class="form-group">
              <form>
                  <asp:TextBox  runat="server" ID="TextBox1" class="form-control" placeholder="First Name"></asp:TextBox>
               <asp:TextBox  runat="server" id="TextBox2" class="form-control" placeholder="Last Name"></asp:TextBox>  
                  <asp:TextBox ID="TextBox3" class="form-control" placeholder="Age" runat="server" TextMode="Number" Max="100" min="0"></asp:TextBox> 
                  <p><b>Date Of Birth</b>
                  <asp:TextBox ID="TextBox4" class="form-control" placeholder="Date OF Birth" runat="server" TextMode="Date"></asp:TextBox>
                  </p>
                <p ><b>Gender</b>
                   <asp:RadioButtonList ID="RadioButtonList1" class="form-control" runat="server" CellPadding="50" CellSpacing="-1" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">Male</asp:ListItem> 
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                  </asp:RadioButtonList></p>
                  
                  <asp:TextBox ID="TextBox5" class="form-control" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
                  <asp:TextBox ID="TextBox6" class="form-control" placeholder="Phone Number" runat="server" TextMode="Phone"></asp:TextBox>
                  <asp:TextBox ID="TextBox7" class="form-control" placeholder="Alternate Phone" runat="server"></asp:TextBox>
                  <asp:TextBox ID="TextBox8" class="form-control" placeholder="Address" runat="server" TextMode="MultiLine"></asp:TextBox>
                  <br />
                  <asp:TextBox ID="TextBox9" class="form-control" placeholder="Username" runat="server"></asp:TextBox>
                  <asp:TextBox ID="TextBox10" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
                  <asp:TextBox ID="TextBox11" class="form-control" placeholder="Confirm Password" runat="server"></asp:TextBox>
                <div class="checkbox-dtl">
                    <div class="terms-conditions">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text=" "  />
                         <p>  I agree to all <a href="privacy.aspx">Terms & Conditions</a></p> 
                   </div>
                </div>
               
                  <asp:Button ID="Button1" runat="server" class="btn btn-pink" Text="Sign Up"  />
              </form>
              <p class="sign-in text-center">
                Already have an Account <a href="logIn.aspx">Log In</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>--%>

<section id="register-page" class="register-main-block">
         <div class="container">
      <div class="row">
         <div class="col-md-12">
    <div  class="register-block">
        <h4 class="register-heading text-center">Customer Register</h4>
    <form class="nav-justified">
       
        <div class="row mb-3">
             <asp:Label ID="Label1" runat="server" Text="First Name" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
               <asp:TextBox ID="TextBox1" runat="server" class="form-control name-valid"  placeholder="Enter Your First Name"></asp:TextBox>
            </div>
        </div>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                      <script>
                          $(document).ready(function () {
                              $('.name-valid').on('keypress', function (e) {
                                  var regex = new RegExp("^[a-zA-Z ]*$");
                                  var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
                                  if (regex.test(str)) {
                                      return true;
                                  }
                                  e.preventDefault();
                                  return false;
                              });
                          });
</script> 
           
        <div class="row mb-3">
                <asp:Label ID="Label2" runat="server" Text="Last Name" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="TextBox2" Class="form-control name-valid" placeholder="Enter Your Last Name" runat="server"></asp:TextBox>
                </div>
            </div>
        

           <div class="row mb-3">
                <asp:Label ID="Label3" runat="server" Text="Age" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                    <asp:TextBox ID="TextBox3" Class="form-control" placeholder="Enter Your Age" runat="server" onkeypress="return isNumberKey(event)" TextMode="Number" Max="100" min="18"></asp:TextBox>
                <script>
                    function isNumberKey(evt) {
                        var charCode = (evt.which) ? evt.which : evt.keyCode;
                        if (charCode > 31 && (charCode < 48 || charCode > 57))
                            return false;
                        return true;
                    }
   </script>
                 </div>
            </div>
    

         <div class="row mb-3">
               <asp:Label ID="Label4" runat="server" Text="DOB" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                      <asp:TextBox ID="TextBox4" Class="form-control"  runat="server" TextMode="Date"></asp:TextBox>
                </div>
            </div>

         <div class="row mb-3">
              <asp:Label ID="Label5" runat="server" Text="Gender" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                  <asp:DropDownList ID="DropDownList1" Class="form-control" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                </div>
            </div>
          
               
                <br />
            <div class="row mb-3">
                <asp:Label ID="Label6" runat="server" Text="Email" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                    <asp:TextBox ID="TextBox5" Class="form-control" placeholder="Enter Your Email" runat="server" TextMode="Email"></asp:TextBox>
                </div>
            </div>

         <div class="row mb-3">
                <asp:Label ID="Label7" runat="server" Text="Phone Number" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                   <asp:TextBox ID="TextBox6" Class="form-control" placeholder="Enter Your Phone Number" runat="server" onkeypress="return isNumberKey(event)" TextMode="Phone"></asp:TextBox>
                <script>
                    function isNumberKey(evt) {
                        var charCode = (evt.which) ? evt.which : evt.keyCode;
                        if (charCode > 31 && (charCode < 48 || charCode > 57))
                            return false;
                        return true;
                    }
   </script>
                 </div>
            </div>

         <div class="row mb-3">
                <asp:Label ID="Label8" runat="server" Text="AlterPhone Number" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                  <script>
                      function isNumberKey(evt) {
                          var charCode = (evt.which) ? evt.which : evt.keyCode;
                          if (charCode > 31 && (charCode < 48 || charCode > 57))
                              return false;
                          return true;
                      }
   </script>  
                 <asp:TextBox ID="TextBox7" Class="form-control" onkeypress="return isNumberKey(event)" placeholder="Enter Your AlterPhone Number" runat="server" TextMode="Phone"></asp:TextBox>
                </div>
            </div>

         <div class="row mb-3">
               <asp:Label ID="Label9" runat="server" Text="Address" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                  <asp:TextBox ID="TextBox8" Class="form-control" placeholder="Enter Your Address" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox><br />
                </div>
            </div>
     
         <div class="row mb-3">
              <label class="col-sm-2 col-form-label">Profile Image</label>
            <div class="col-sm-10">
                   <div class="upload-img">
                    <img id="imgpreview" src="" class="img-responsive"  />

                     <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function showpreview(input) {

            if (input.files && input.files[0]) {

                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#imgpreview').css('visibility', 'visible');
                    $('#imgpreview').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }

        }

    </script> 
                        <div class="upload-img-btn">
                      <asp:FileUpload ID="FileUpload1" runat="server" onchange="showpreview(this)"  accept="image/png, image/gif, image/jpeg"/> 
                     
                  <%--    <asp:Button ID="Button2" runat="server" Text="Upload Profile" OnClick="Button2_Click" class="btn btn-pink" />--%>
                  </div>
                  </div> 
            </div>
         
            <div class="row mb-3">
                <asp:Label ID="Label10" runat="server" Text="Username" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                     <asp:TextBox ID="TextBox9" Class="form-control" placeholder="Ender Valid UserName" runat="server"></asp:TextBox>
                </div>
            </div> 
             
             
              <div class="row mb-3">
                <asp:Label ID="Label11" runat="server" Text="Password" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                     <asp:TextBox ID="TextBox10" Class="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                </div>
            </div>   
             
             
              <div class="row mb-3">
                <asp:Label ID="Label12" runat="server" Text="Confirm Password" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                    <asp:TextBox ID="TextBox11" Class="form-control" placeholder="Confirm Password" runat="server" TextMode="Password"></asp:TextBox>
                </div>
            </div>  
             
                       
      <div class="checkbox-dtl col-sm-offset-2 col-sm-10">
                    <div class="terms-conditions">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text=" "  />
                         <p>  I agree to all <a href="privacy.aspx">Terms & Conditions</a></p> 
                   </div>
                </div>

                <asp:Button ID="Button1" runat="server" class="btn btn-pink" Text="Sign Up" OnClick="Button1_Click" />
          <p class="sign-in text-center">
                Already Have an Account? <a href="logIn.aspx">Log In</a>
              </p>
        
    </form>
</div>
          </div>
          </div>
                </div>
</section>
<!-- end register page -->
</asp:Content>

