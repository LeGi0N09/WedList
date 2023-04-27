<%@ Page Title="" Language="C#" MasterPageFile="~/customerMasterPage.master" AutoEventWireup="true" CodeFile="view_vendor_detail.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"><!-- theme style -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/> <!-- bootstrap css -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/> <!-- fontawesome css -->
<link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet"/> <!-- google fonts -->
<link href="css/menumaker.css" rel="stylesheet" type="text/css"/> <!-- menu css -->
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css"/> <!-- owl carousel css -->
<link href="css/magnific-popup.css" rel="stylesheet" type="text/css"/> <!-- magnify popup css -->
<link href="css/datepicker.css" rel="stylesheet" type="text/css"/> <!-- datepicker css -->
<link href="css/flaticon.css" rel="stylesheet" type="text/css"/> <!-- flaticon css -->
<link href="css/share-tooltip.css" rel="stylesheet" type="text/css"/><!-- share tooltip css -->
<link href="css/style.css" rel="stylesheet" type="text/css"/> <!-- custom css -->
<link href="css/stucture.css" rel="stylesheet" type="text/css"/> <!-- stucture css -->
<!-- end theme style -->
 
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Label ID="Label100" runat="server" ></asp:Label>
     <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
          <ItemTemplate> 
    <div class="wedding-dresses-block">
      <div class="container">
        <div class="row"> 
          <div class="col-md-9 col-sm-8">
            <h4 class="wedding-dresses-heading"><%# DataBinder.Eval(Container,"DataItem.name")  %> </h4>
            <div class="btn-section">
              <a href="#" class="btn btn-pink"><%# DataBinder.Eval(Container,"DataItem.city")  %></a>
              <a href="#" class="btn btn-pink"><%# DataBinder.Eval(Container,"DataItem.category")  %></a>
            </div>
          </div>
            
            <div class="col-md-3 col-sm-4">
            <div class="wedding-dresses-dtl">
              <div class="btn-section">
                  <h4>    <div class="price">₹ <%# DataBinder.Eval(Container,"DataItem.charge")  %> </div></h4>
              
               
              </div>
               
         
            </div> 
          </div>


            <div class="share-btn" >
                  <ul>
                    <li class="share" >
                      <a href="#" class="tool-handle footer-nav-link button"><i class="fa fa-share-alt" aria-hidden="true"></i> Share</a>
                      <ul class="tooltip">
                        <li><a href="#" class="facebook-share"><i class="fa fa-facebook"></i>Facebook</a></li>
                        <li><a href="#" class="twitter-share"><i class="fa fa-twitter"></i>Twitter</a></li>
                        <li><a href="#" class="email-share"><i class="fa fa-google-plus"></i>Gmail</a></li>  
                        <li><span class="close-button close">&times;</span></li>
                      </ul>
                    </li>
                  </ul>
                </div>
        
           
              
        </div>
      </div>
    </div>
    <br />
     
    <div class="" style="padding:0 5% 0 5%">
   <div class="col-md-8">
    <div class="new-listing-vendor-block">
                
              <div class="new-listing-vendor-profile">
                <div class="row"> 
                  <div class="col-md-5">
                    <div class="vendor-profile-img">
                      <img src="<%# DataBinder.Eval(Container,"DataItem.photo")  %>"  class="img-responsive" alt="vendor-img"/>
                         <p><h6 style="text-align:left" >Company Name:<%# DataBinder.Eval(Container,"DataItem.companyname")  %></h6></p>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="vendor-pro-section">
                      <ul>
                        <li>
                          <i class="fa fa-map-marker" aria-hidden="true"></i><%# DataBinder.Eval(Container,"DataItem.address")  %>
                        </li>
                        <li>
                          <i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto:#" id="email1"><%# DataBinder.Eval(Container,"DataItem.email")  %></a>
                            
                        </li>
                        <li>
                          <i class="fa fa-mobile-phone" aria-hidden="true"></i> <a href="tel:#"><%# DataBinder.Eval(Container,"DataItem.phone")  %></a>
                        </li>
                        <li>
                          <i class="fa fa-globe" aria-hidden="true"></i> <a style="cursor:default"><%# DataBinder.Eval(Container,"DataItem.services")  %></a>
                        </li>
                      </ul>
                         
               
                    </div>
                    <ul class="social-btns">
                      <li><a class="btn facebook" href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                      <li><a class="btn twitter" href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                      <li><a class="btn google" href="#" target="_blank"><i class="fa fa-google"></i></a></li>
                      <li><a class="btn linkedin" href="#" target="_blank"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
              
             
               <label class="btn btn-pink" data-toggle="modal" data-target="#login-model">Send Enquiry</label>
        <div class="modal fade login-model"  id="login-model" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content"  style="width:100%">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h5 class="modal-title text-left"> Enquiry Now</h5>
            </div>
            <div class="modal-body login-model-body text-center">
             
         
             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
    
   
        
       
           <div class="row mb-3">
               <label class="col-sm-3 col-form-label "> Name:</label>
               <div class="col-sm-9">
                   <asp:TextBox ID="TextBox1" runat="server" class="form-control name-valid"  ></asp:TextBox>
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
               </div>
               </div>
                

      <div class="row mb-3">
               <label class="col-sm-3 col-form-label"> Phone no:</label>
               <div class="col-sm-9">
                   <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" onkeypress="return isNumberKey(event)" class="form-control " ></asp:TextBox>
                  
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
               <label class="col-sm-3 col-form-label">Date:</label>
               <div class="col-sm-9">
                  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        var today = new Date();
        var month = ('0' + (today.getMonth() + 1)).slice(-2);
        var day = ('0' + today.getDate()).slice(-2);
        var year = today.getFullYear();
        var date = year + '-' + month + '-' + day;
        $('[id*=TextBox4]').attr('min', date);
    });
</script>
                   <asp:TextBox ID="TextBox4" TextMode="Date" runat="server" class="form-control"></asp:TextBox>
               
               
               </div>
               </div> 
 
            <div class="row mb-3">
               <label class="col-sm-3 col-form-label">City:</label>
               <div class="col-sm-9">
                   <asp:TextBox ID="TextBox5"  runat="server" class="form-control name-valid" ></asp:TextBox>

               </div>
               </div> 
            <div class="row mb-3">
               <label class="col-sm-3 col-form-label">Message:</label>
               <div class="col-sm-9">
                   <asp:TextBox ID="TextBox2"  runat="server" class="form-control"></asp:TextBox>

               </div>
               </div>

                     <br />
                  <asp:Label ID="Label1" CssClass="alert alert-success" runat="server" Text="Successfully Sent." Visible="false"  ></asp:Label>
                     <asp:Label ID="Label3" CssClass="alert alert-danger" runat="server" Text="Please Fill all fields." Visible="false"  ></asp:Label>

      <br />
                     <br />
                    


                <div class="modal-footer">
   <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <asp:Button ID="Button1"  runat="server" class="btn btn-success" style="border-radius:4px ;" Text="Send Enquiry" Height="36px" Width="110px"  OnClick="Button1_click" /> 
     </div>


</ContentTemplate>
             </asp:UpdatePanel>
               

<!-- end register page -->
            </div>            
          </div>
        </div>
      </div>



        <label class="btn btn-pink" data-toggle="modal" data-target="#s-model" style="left-margin=1%">Suggestions</label>
        <div class="modal fade login-model"  id="s-model" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content"  style="width:100%">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h5 class="modal-title text-left">Suggestions</h5>
            </div>
            <div class="modal-body login-model-body text-center">
             
         
           
             <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                 <ContentTemplate>
    
   
        
       
           <div class="row mb-3">
               <label class="col-sm-3 col-form-label"> Vendor's email:</label>
               <div class="col-sm-9">
                   
                   <asp:Label ID="Label4"  class="form-control" runat="server" style="text-align:left" Text ='<%# DataBinder.Eval(Container,"DataItem.email")  %>'></asp:Label>
                  

               </div>
               </div>
    <br />  
        
      <div class="row mb-3">
               <label class="col-sm-3 col-form-label "> Your Name:</label>
               <div class="col-sm-9">
                   <asp:TextBox ID="TextBox7" runat="server" class="form-control name-valid" ></asp:TextBox>

               </div>
        </div>

      <%--<div class="row mb-3">
               <label class="col-sm-3 col-form-label"> Email:</label>
               <div class="col-sm-9">
                   <asp:TextBox ID="TextBox8" runat="server" class="form-control" ></asp:TextBox>

               </div>
               </div>--%>   
          
            <div class="row mb-3">
               <label class="col-sm-3 col-form-label">Number:</label>
               <div class="col-sm-9">
                   <asp:TextBox ID="TextBox9" runat="server" class="form-control" onkeypress="return isNumberKey(event)"></asp:TextBox>
                   
                  
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
               <label class="col-sm-3 col-form-label">Suggestions:</label>
               <div class="col-sm-9">
                   <asp:TextBox ID="TextBox10" TextMode="MultiLine" rows="3" runat="server" class="form-control"></asp:TextBox>

               </div>
               </div> 



                  <asp:Label ID="Label2" CssClass="alert alert-success" runat="server" Text="Your Response  Successfully Saved." Visible="false"></asp:Label>
                    
                      <asp:Label ID="Label5" CssClass="alert alert-danger" runat="server" Text="Please fill all fields." Visible="false"></asp:Label>
      <br />


                <div class="modal-footer">
   <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <asp:Button ID="Button2"  runat="server" class="btn btn-success" style="border-radius:4px ;" Text="Send " Height="36px" Width="102px" OnClick="Button2_click"/> 
     </div>

</ContentTemplate>
             </asp:UpdatePanel>

               

<!-- end register page -->
            </div>            
          </div>
        </div>
      </div>



          
            </div>
         </div>

    </div>
          </ItemTemplate>
          </asp:Repeater>
    
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [vendor_signup] WHERE ([username] = @username)">
         <SelectParameters>
             <asp:QueryStringParameter Name="username" QueryStringField="username" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>
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
           
</asp:Content>

