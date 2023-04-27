<%@ Page Title="Vendor Sign Up" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="vendor_signUp.aspx.cs" Inherits="Default2"  EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading"> Vendor Sign Up</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Default.aspx">Home</a></li>
            <li class="active">Sign Up</li>
          </ol>
        </div>
      </div>
    </div>
  </section>

<%--    Register Page--%>

    <section id="register-page" class="register-main-block">
         <div class="container">
      <div class="row">
         <div class="col-md-12">
    <div  class="register-block">
        <h4 class="register-heading text-center">Vendor Register</h4>               

         <form>

              <div class="row mb-3">
                     <asp:Label ID="Label1" runat="server" Text="Full Name" Font-Bold="true" class="col-sm-2 col-form-label "></asp:Label>
                 <div class="col-sm-10">
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control name-valid"  placeholder="Enter Your Name"></asp:TextBox>
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
                       <asp:Label ID="Label2" runat="server" Text="Age" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                     <div class="col-sm-10">
                       <asp:TextBox ID="TextBox2" Class="form-control" placeholder="Enter Your Age" onkeypress="return isNumberKey(event)" runat="server" TextMode="Number" Max="100" min="18"></asp:TextBox>
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
                <asp:Label ID="Label3" runat="server" Text="DOB" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
                <div class="col-sm-10">
                     <asp:TextBox ID="TextBox3" Class="form-control" placeholder="Date Of Birth" runat="server" TextMode="Date"></asp:TextBox>
                </div>
            </div>
            
            
            <div class="row mb-3">
                 <asp:Label ID="Label4" runat="server" Text="Gender" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="DropDownList1" Class="form-control" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                </div>
            </div>
                    <br/>   
             <div class="row mb-3">
                <asp:Label ID="Label5" runat="server" Text="Company Name" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                <div class="col-sm-10">
                     <asp:TextBox ID="TextBox4" Class="form-control" placeholder="Name Of Company" runat="server" ></asp:TextBox>
                 </div>
                 </div>
           
      <asp:UpdatePanel runat="server">
     <ContentTemplate>
             <div class="row mb-3">
                <asp:Label ID="Label6" runat="server" Text="Category" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                 <div class="col-sm-10">
                        <asp:DropDownList ID="DropDownList2" Class="form-control" runat="server" RepeatDirection="Horizontal" AutoPostBack="true">
                         <asp:ListItem Selected="True">BAND/DJ</asp:ListItem>
                         <asp:ListItem>CATERER</asp:ListItem>
                         <asp:ListItem>DECORATOR</asp:ListItem>
                         <asp:ListItem>EVENTPLANNER</asp:ListItem>
                         <asp:ListItem>FLORIST</asp:ListItem>
                         <asp:ListItem>HOSPITALITY STAFF</asp:ListItem>
                         <asp:ListItem>PANDIT</asp:ListItem>
                         <asp:ListItem>PHOTOGRAPHER</asp:ListItem>
                        </asp:DropDownList>
                 </div>
             </div>
 <br />

               <div class="row mb-3">
                    <asp:Label ID="Label7" runat="server" Text="Sub Category" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                   <div class="col-sm-10">
                        <asp:DropDownList ID="DropDownList3" Class="form-control" runat="server" RepeatDirection="Horizontal" DataSourceID="SqlDataSource1" DataTextField="subcategory" DataValueField="subcategory">
                        </asp:DropDownList>
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [subcategory] FROM [subcategory] WHERE ([category] = @category)">
                            <SelectParameters>
                              <asp:ControlParameter ControlID="DropDownList2" Name="category" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                         </asp:SqlDataSource>
                   </div>
               </div>
             <br />
          </ContentTemplate>
          </asp:UpdatePanel>
                <div class="row mb-3">
                        <asp:Label ID="Label8" runat="server" Text="Services You can Provide" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="TextBox5" Class="form-control" placeholder="Services You Can Provide" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>
                    </div>
                </div>
             <br />
             <br />
             
             <div class="row mb-3">
                 <asp:Label ID="Label9" runat="server" Text="Include Equipments and Materials?" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                 <div class="col-sm-10 ">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server"  RepeatDirection="vertical">
                    <asp:ListItem Selected="True">Yes&nbsp;</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
                 </div>
             </div>
           
               
                <br />
             <div class="row mb-3"> 
                  <asp:Label ID="Label10" runat="server" Text="Number Of Staff Member" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                 <div class="col-sm-10">
                    <asp:TextBox ID="TextBox6" Class="form-control" onkeypress="return isNumberKey(event)" placeholder="Number Of Staff Members" runat="server" TextMode="number" min="0"></asp:TextBox>
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
             <asp:Label ID="Label11" runat="server" Text="Charge" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
             <div class="col-sm-10 input-group">
                    <span class="input-group-addon">₹</span><asp:TextBox ID="TextBox7" Class="form-control" onkeypress="return isNumberKey(event)" placeholder="Charge Per Hour" runat="server" TextMode="number" min="0"></asp:TextBox>
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
        
<br />
         <div class="row mb-3">
                <asp:Label ID="Label12" runat="server" Text="Payment Type" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
             <div class="col-sm-10">
                    <asp:DropDownList ID="DropDownList4" Class="form-control" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">CHEQUE</asp:ListItem>
                    <asp:ListItem>CASH</asp:ListItem>
                    <asp:ListItem>UPI</asp:ListItem>
                     </asp:DropDownList>
             </div>
         </div>
            <br/>

             <div class="row mb-3">
                    <asp:Label ID="Label13" runat="server" Text="First Deposit Of Booking" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                 <div class="col-sm-10">
                    <asp:TextBox ID="TextBox8" Class="form-control" placeholder="Enter Deposit Money" runat="server" TextMode="number" min="0"></asp:TextBox>
                 </div>
             </div>
       
             <div class="row mb-3">
                    <asp:Label ID="Label14" runat="server" Text="Notice Per Advance Booking" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                 <div class="col-sm-10">
                    <asp:DropDownList ID="DropDownList5" Class="form-control" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">4-8 Hour</asp:ListItem>
                    <asp:ListItem>1 Day</asp:ListItem>
                    <asp:ListItem>2 Day</asp:ListItem>
                    <asp:ListItem>1 Week</asp:ListItem>
                    <asp:ListItem>1 Month</asp:ListItem>
                </asp:DropDownList>
                 </div>
             </div>
            
                <br />

               <div class="row mb-3">
                     <asp:Label ID="Label15" runat="server" Text="Address" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                 <div class="col-sm-10">
                <asp:TextBox ID="TextBox9" Class="form-control" placeholder="Enter Your Address" runat="server" TextMode="MultiLine" Rows="4" min="0"></asp:TextBox>
                 </div>
             </div>
           <br />
             <div class="row mb-3">
                     <asp:Label ID="Label33" runat="server" Text="City" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                 <div class="col-sm-10">
                     <asp:DropDownList ID="DropDownList7"  Class="form-control"  runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem>Select your City </asp:ListItem>
                    <asp:ListItem>Ahmedabad</asp:ListItem>
                    <asp:ListItem>Surat</asp:ListItem>
                    <asp:ListItem>Vadodra</asp:ListItem>
                     </asp:DropDownList>
                 </div>
             </div>
             <br />
               <div class="row mb-3">
                     <asp:Label ID="Label16" runat="server" Text="PinCode" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                 <div class="col-sm-10">
                    <asp:TextBox ID="TextBox10" Class="form-control" placeholder="Enter Your Pinecode" runat="server" ></asp:TextBox>
                 </div>
             </div>
         
               <div class="row mb-3">
                     <asp:Label ID="Label17" runat="server" Text="Upload Your Photo" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                 <div class="col-sm-10">
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
                    <asp:FileUpload ID="FileUpload1" runat="server" onchange="showpreview(this)" accept="image/png, image/gif, image/jpeg"/>
                 </div>
             </div>
           
               <div class="row mb-3">
                    <asp:Label ID="Label18" runat="server" Text="Preferd Photo Id" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                 <div class="col-sm-10">
                     <asp:DropDownList ID="DropDownList6" Class="form-control" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">AADHAR CARD</asp:ListItem>
                    <asp:ListItem>PAN CARD</asp:ListItem>
                    <asp:ListItem>ELECTION CARD</asp:ListItem>
                    <asp:ListItem>PASSPORT</asp:ListItem>
                    <asp:ListItem>DRIVING LICENCE</asp:ListItem>
                </asp:DropDownList>
                 </div>
             </div>
            <br />

               <div class="row mb-3">
                   <asp:Label ID="Label19" runat="server" Text="Upload Your Id" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                 <div class="col-sm-10">
                    <asp:FileUpload ID="FileUpload2" runat="server" class="upload-profile-block"/>
                 </div>
             </div> 
           
               <div class="row mb-3">
                    <asp:Label ID="Label20" runat="server" Text="Email" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                 <div class="col-sm-10">
                   <asp:TextBox ID="TextBox11" Class="form-control" placeholder="Enter Your Email" runat="server" TextMode="Email" min="0"></asp:TextBox>
                 </div>
             </div>

               <div class="row mb-3">
                     <asp:Label ID="Label21" runat="server" Text="Phone Number" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                 <div class="col-sm-10">
                    <asp:TextBox ID="TextBox15" Class="form-control" placeholder="Enter Your Phone Number" runat="server" TextMode="Phone" min="0"></asp:TextBox>
                 </div>
             </div>
           
               <div class="row mb-3">
                     <asp:Label ID="Label22" runat="server" Text="Alter Phone Number" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                 <div class="col-sm-10">
                    <asp:TextBox ID="TextBox16" Class="form-control" placeholder="Enter Your Alter Phone Number" runat="server" TextMode="Phone" min="0"></asp:TextBox>
                 </div>
             </div>


               <div class="row mb-3">
                    <asp:Label ID="Label23" runat="server" Text="Username" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                 <div class="col-sm-10">
                    <asp:TextBox ID="TextBox12" Class="form-control" placeholder=" Enter Your UserName" runat="server"></asp:TextBox>
                 </div>
             </div>


               <div class="row mb-3">
                     <asp:Label ID="Label24" runat="server" Text="Password" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                 <div class="col-sm-10">
                   <asp:TextBox ID="TextBox13" Class="form-control" placeholder="Enter Password" runat="server" TextMode="Password"></asp:TextBox>
                 </div>
             </div>
      

               <div class="row mb-3">
                    <asp:Label ID="Label25" runat="server" Text="Confirm Password" Font-Bold="true" class="col-sm-2 col-form-label"></asp:Label>
                 <div class="col-sm-10">
                    <asp:TextBox ID="TextBox14" Class="form-control" placeholder="Confirm Password" runat="server" TextMode="Password"></asp:TextBox>
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
                Already Have an Account? <a href="#" data-toggle="modal" data-target="#login-model">Log In</a>
              </p>
           
                <asp:Label ID="Label26" runat="server"  Font-Bold="True" class="alert alert-success"  ForeColor="Green" Visible="False" Text="Vendor Registation Successfully done."></asp:Label>
                <asp:Label ID="Label27" runat="server"  Font-Bold="True" class="alert alert-danger"  ForeColor="Red" Visible="False" Text="Please Enter Valid Image"></asp:Label>
                <asp:Label ID="Label28" runat="server"  Font-Bold="True" class="alert alert-danger"  ForeColor="Red" Visible="False" Text="UserName already exist"></asp:Label>
                <asp:Label ID="Label29" runat="server"  Font-Bold="True" class="alert alert-danger"  ForeColor="Red" Visible="False" Text="Email already exist"></asp:Label>
                <asp:Label ID="Label30" runat="server"  Font-Bold="True" class="alert alert-danger"  ForeColor="Red" Visible="False" Text="Check All Terms & Conditions."></asp:Label>
                <asp:Label ID="Label31" runat="server"  Font-Bold="True" class="alert alert-danger"  ForeColor="Red" Visible="False" Text="Please enter same Password."></asp:Label>
                <asp:Label ID="Label32" runat="server"  Font-Bold="True" class="alert alert-danger"  ForeColor="Red" Visible="False" Text="Please Enter All Data Above."></asp:Label>
         
        </form>
       
</div>
          </div>
          </div>
                </div>
</section>
<!-- end register page -->
    
</asp:Content>

