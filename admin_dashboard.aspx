<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/adminMasterPage.master" AutoEventWireup="true" CodeFile="admin_dashboard.aspx.cs" EnableEventValidation="false" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <%-- Vendor Dashboard Menu--%>
    <asp:Label ID="Label100" runat="server" ></asp:Label>
    <%--  <section id="vendor-dashboard" class="vendor-dashboard-main-block">
    <div class="container">
      <ul class="vendor-dashboard-tabs general-nav-tabs tabs">
        <li><a href="#" class="active btn btn-default"><span class="badge">Dashboard</span></a></li>
        <li><a href="" class="btn btn-default"><span class="badge"></span></a></li>
        <li><a href="" class="btn btn-default"><span class="badge"></span></a></li>
        <li><a href=" class="btn btn-default"><span class="badge"></span></a></li>
       <li><a href="#"  class="btn btn-default"><span class="badge"></span></a></li>  
        
      </ul>
        </div>
          
            </section>--%>
    <section id="couple-profile" class="couple-profile-main-page">
    <div class="container">
      <div class="couple-profile-tabs general-nav-tabs tabs">
        <a href="#" class="active btn btn-default"><span class="badge">Dashboard</span></a>
        <a href="admin_view_orders.aspx" class=" btn btn-default"><span class="badge">View Orders</span></a>
        <a href="a_manage_vendors.aspx" class="btn btn-default"><span class="badge">Manage Vendors</span></a>
        <a href="a_manage_customers.aspx" class="btn btn-default"><span class="badge">Manage Customer</span></a>
        <a href="#" data-toggle="modal" data-target="#login-model" class="btn btn-default"><span class="badge">Add Admin</span></a>
        <a href="ans_query.aspx" class="btn btn-default"><span class="badge">Queries</span></a>
          <li><a href="admin_veryfy_Vendor.aspx" class="btn btn-default"><span class="badge">Veryfy Vendor</span></a></li>
      </div>
        </div>
        </section>
     <%-- Vendor Dashboard Menu--%>
   
  <!-- login popup -->
      <div class="modal fade login-model" id="login-model" role="dialog">
        <div class="modal-dialog" role="document">
          <div class="modal-content"> <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h5 class="modal-title text-center">Add Admin</h5>
            </div>
            <div class="modal-body login-model-body text-center">
              <form id="login-form" action="#">
                <div class="form-group">
                <asp:TextBox ID="TextBox1" runat="server" class="form-control"  placeholder="Enter New Email" TextMode="Email"></asp:TextBox>
                     <asp:TextBox ID="TextBox2" runat="server" class="form-control"  placeholder="Enter New Username" ></asp:TextBox>
                  
               <asp:TextBox ID="TextBox3" runat="server" class="form-control"  placeholder="Enter Your Password" TextMode="Password"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" class="form-control"  placeholder="Re Enter Your Password" TextMode="Password"></asp:TextBox>
                </div>
                  
                 <asp:Button ID="Button1" runat="server" class="btn btn-pink" Text="Register"  OnClick="Button1_Click" />
             <br />
                   <asp:Label ID="Label1" runat="server" Text="Please enter same Password." Visible="False" ForeColor="Red" Font-Bold="True"></asp:Label>
                 
                    <asp:Label ID="Label2" runat="server" Text="Username Already exist." Visible="False" ForeColor="Red" Font-Bold="True"></asp:Label>
                 
              <asp:Label ID="Label3" runat="server" Text="email Already exist." Visible="False" ForeColor="Red" Font-Bold="True" ></asp:Label>
                  <asp:Label ID="Label4" runat="server" Text="Succesfully Add New Admin." Visible="False" ForeColor="Green" Font-Bold="True" ></asp:Label>
             
              </form>
            </div>
               </ContentTemplate>
    </asp:UpdatePanel>           
          </div>
        </div>
      </div>
      <!-- end login popup -->
        
   
</asp:Content>

