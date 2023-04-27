<%@ Page Title="Customer Profile" Language="C#" MasterPageFile="~/customerMasterPage.master" AutoEventWireup="true" CodeFile="cutomer_profile.aspx.cs" Inherits="Default2"  EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <%-- Customer Dashboard Menu--%>

     <%-- <section id="vendor-dashboard" class="vendor-dashboard-main-block">
    <div class="container">
      <ul class="vendor-dashboard-tabs general-nav-tabs tabs">
        <li><a href="customer_dashboard.aspx" class="btn btn-default"><span class="badge">Dashboard</span></a></li>
        <li><a href="#" class="active btn btn-default"><span class="badge">Profile</span></a></li>
        <li><a href="c_give_order.aspx" class="btn btn-default"><span class="badge">Give Order</span></a></li>
        <li><a href="c_ask_query.aspx" class="btn btn-default"><span class="badge">Ask Query</span></a></li>
       <li><a href="c_give_suggestion.aspx" class="btn btn-default"><span class="badge">Give Suggestion</span></a></li>  
        <li><a href="#" class="btn btn-default"><span class="badge">My Wishlist</span></a></li>
      </ul>
        </div>
         
            </section>--%>

     <%-- Vendor Dashboard Menu--%>
    <!-- couple profile -->
  <section id="couple-profile" class="couple-profile-main-page">
    <div class="container">
      <div class="couple-profile-tabs general-nav-tabs tabs">
        <a href="customer_dashboard.aspx" class="btn btn-default"><span class="badge">Dashboard</span></a>
        <a href="#" class="active btn btn-default"><span class="badge">Profile</span></a>
        <a href="c_give_order.aspx" class="btn btn-default"><span class="badge">Serach Vendor</span></a>
        <a href="c_ask_query.aspx" class="btn btn-default"><span class="badge">Ask Query</span></a>
       
        <a href="c_See_query.aspx" class=" btn btn-default"><span class="badge">See Queries</span></a>
      </div>
      <div class="row">
        <div class="col-md-6">  
          <div class="couple-profile-main-block">
            <div class="upload-profile-block mrgn-bottom-30">
              <h3 class="couple-profile-heading">Upload Profile Photo</h3>
              <div class="row">
                <div class="col-md-5 col-sm-4">
                  <div class="upload-img">
                   <%-- <img src="images/blog-single-page/blog-related-3.jpg" class="img-responsive" alt="upload img">--%>
                      <asp:Image ID="Image1" class="img-responsive" runat="server" />
                  </div>
                </div>
                <div class="col-md-7 col-sm-8">
                  <div class="upload-img-btn">
                     <div class="input-group">
  
                         <asp:FileUpload ID="FileUpload1"  aria-label="Upload" runat="server" />
                      <asp:Button ID="Button1"  class="btn btn-pink" Text="Upload Profile " runat="server" OnClick="Button1_Click"/>
                         <label id="change"  class="btn btn-pink" data-toggle="modal" data-target="#exampleModalCenter" style="color:#fff">Change Password</label>
                            


                       
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Change Password</h5>

        
      </div>
     <div class="modal-body">
        <form id="change-password" action="#">
              <div class="form-group row">
                <div class="col-sm-4"><label>Old Password</label></div> 
                <div class="col-sm-8">
                    <asp:TextBox ID="TextBox9"  placeholder="Old Password" class="form-control" runat="server"></asp:TextBox>
                </div> 
              </div>      
              <div class="form-group row">
                <div class="col-sm-4"><label>New Password</label></div> 
                <div class="col-sm-8">
                     <asp:TextBox ID="TextBox10" placeholder="New Password" class="form-control" runat="server"></asp:TextBox>
                </div> 
              </div>      
              <div class="form-group row">
                <div class="col-sm-4"><label>Confirm Password</label></div> 
                <div class="col-sm-8">
                     <asp:TextBox ID="TextBox11" class="form-control"  placeholder="Confirm Password" runat="server"></asp:TextBox>
                </div> 
              </div>  
             <asp:Label ID="Label4" CssClass="alert alert-danger" runat="server" Text="both password different." Visible="false"></asp:Label>   
                   <asp:Label ID="Label2" CssClass="alert alert-success" runat="server" Text="Password Succesfully changed." Visible="false"></asp:Label>
             <asp:Label ID="Label3" CssClass="alert alert-danger" runat="server" Text="*Invalid old password." Visible="false"></asp:Label>                                                                    
            </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        
          <asp:Button ID="change_password" class="btn btn-primary" Text="Submit" Style="border-radius:4px" runat="server" Height="35px" Width="70px"  OnClick="change_password_Click"/>
      </div>
    </div>
  </div>
</div>
</div> 
                    <%--<a href="#" class="btn btn-pink">Upload Profile Image</a>--%>
                  </div>
                </div>
              </div>
            </div>
            <div class="couple-profile-block mrgn-bottom-30">
              <h3 class="couple-profile-heading">Couple Profile</h3>
                <form>
                  <div class="form-group row">
                    <div class="col-sm-4"><label>First Name*</label></div> 
                    <div class="col-sm-8">
                        <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox></div> 
                  </div>  
                  <div class="form-group row">
                    <div class="col-sm-4"><label>Last Name*</label></div> 
                    <div class="col-sm-8"><asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox></div> 
                  </div>  
                  <div class="form-group row">
                    <div class="col-sm-4"><label>Email*</label></div> 
                    <div class="col-sm-8"><asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox></div> 
                  </div>  
                  <div class="form-group row">
                    <div class="col-sm-4"><label>Username:</label></div> 
                    <div class="col-sm-8">
                        <asp:Label ID="Label1" class="form-control" runat="server" Text=""></asp:Label></div> 
                  </div>  
                </form>
            </div>
            <div class="wedd-detail-block mrgn-bottom-30">
              <h3 class="couple-profile-heading">Basic Details</h3>
                <form>
                  <div class="form-group row">
                    <div class="col-sm-4"><label>Age:</label></div> 
                    <div class="col-sm-8"><asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox></div> 
                  </div>  
                  <div class="form-group row">
                    <div class="col-sm-4"><label>D.O.B</label></div> 
                    <div class="col-sm-8"><asp:TextBox ID="TextBox5" textmode="Date" class="form-control" runat="server"></asp:TextBox></div> 
                  </div>  
                  <div class="form-group row">
                    <div class="col-sm-4"><label>Gender</label></div> 
                    <div class="col-sm-8">
                        <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">

                            <asp:ListItem Selected="True">&lt;---Select your gender---&gt;</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList></div> 
                      
                  </div>                                                          
                </form>
            </div>
            <%--<div class="social-media-block mrgn-bottom-30">
              <h3 class="couple-profile-heading">Social Media Profile</h3>
                <form>
                  <div class="form-group row">
                    <div class="col-sm-4"><label>Facebook URL</label></div> 
                    <div class="col-sm-8"><input type="text" class="form-control" id="facebook_url" name="facebook_url"/></div> 
                  </div>   
                  <div class="form-group row">
                    <div class="col-sm-4"><label>Twitter URL</label></div> 
                    <div class="col-sm-8"><input type="text" class="form-control" id="twitter_url" name="twitter_url"/></div> 
                  </div>   
                  <div class="form-group row">
                    <div class="col-sm-4"><label>Google Plus URL</label></div> 
                    <div class="col-sm-8"><input type="text" class="form-control" id="google_url" name="google_url"/></div> 
                  </div>   
                  <div class="form-group row">
                    <div class="col-sm-4"><label>Youtube URL</label></div> 
                    <div class="col-sm-8"><input type="text" class="form-control" id="youtube_url" name="youtube_url"/></div> 
                  </div>   
                  <div class="form-group row">
                    <div class="col-sm-4"><label>Linkedin URL</label></div> 
                    <div class="col-sm-8"><input type="text" class="form-control" id="linkedin_url" name="linkedin_url"/></div> 
                  </div>   
                  <div class="form-group row">
                    <div class="col-sm-4"><label>Pinterest URL</label></div> 
                    <div class="col-sm-8"><input type="text" class="form-control" id="pinterest_url" name="pinterest_url"/></div> 
                  </div>   
                  <div class="form-group row">
                    <div class="col-sm-4"><label>Instagram URL</label></div> 
                    <div class="col-sm-8"><input type="text" class="form-control" id="instagram_url" name="instagram_url"/></div> 
                  </div>
                   <div class="form-group row">
                        <div class="col-sm-offset-4 col-sm-8"><button class="btn btn-pink">Update Profile</button></div> 
                  </div>
                </form>
            </div>--%>
          </div>
        </div>
   <%--     <div class="col-md-6">
          <div class="change-password-block">
          <h3 class="couple-profile-heading">Change Password</h3>
            <form id="change-password" action="#">
              <div class="form-group row">
                <div class="col-sm-4"><label>Old Password</label></div> 
                <div class="col-sm-8"><input type="text" class="form-control" id="old_password" name="old_password"/></div> 
              </div>      
              <div class="form-group row">
                <div class="col-sm-4"><label>New Password</label></div> 
                <div class="col-sm-8"><input type="text" class="form-control" id="new_password" name="new_password"/></div> 
              </div>      
              <div class="form-group row">
                <div class="col-sm-4"><label>Confirm Password</label></div> 
                <div class="col-sm-8"><input type="text" class="form-control" id="confirm_password" name="confirm_password"/></div> 
              </div>      
              <div class="form-group row">
                <div class="col-sm-offset-4  col-sm-8"><button type="submit" class="btn btn-pink">Change Password</button></div> 
              </div>                                                                        
            </form>
          </div>
        </div>--%>
           <div class="col-md-6">
          <div class="change-password-block">
          <h3 class="couple-profile-heading">Contact Details</h3>
            <form id="change-contact" action="#">
              <div class="form-group row">
                <div class="col-sm-4"><label>Phone Number:</label></div> 
                <div class="col-sm-8"><asp:TextBox ID="TextBox6" class="form-control" runat="server"></asp:TextBox></div> 
              </div>      
              <div class="form-group row">
                <div class="col-sm-4"><label>Alt. Number:</label></div> 
                <div class="col-sm-8"><asp:TextBox ID="TextBox7" class="form-control" runat="server"></asp:TextBox></div> 
              </div>      
              <div class="form-group row">
                <div class="col-sm-4"><label>Address:</label></div> 
                <div class="col-sm-8"><asp:TextBox ID="TextBox8" class="form-control" runat="server"></asp:TextBox></div> 
              </div>      
              <div class="form-group row">
                <div class="col-sm-offset-4  col-sm-8">
<%--                    <asp:Button ID="Button2" class="btn btn-pink" runat="server" Text="Change Details" /></div> --%>
              </div>                                                                        
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
<!-- end vendor profile -->
</asp:Content>

